//
//  Panagram.swift
//  ArgsCleanCode
//
//  Created by Raluca Ionescu on 1/16/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

class Panagram {
    
    let consoleIO = ConsoleIO()
    var anagram: Anagram = Anagram()
    var palindrome: Palindrome = Palindrome()
    
    func staticMode() {
        let argCount = CommandLine.argc
        let argument = CommandLine.arguments[1]
        let (option, value) = getOption(argument.substring(from: argument.index(argument.startIndex, offsetBy: 1)))
        
        switch option {
        case .anagram:
            anagram.showOutput(argCount: argCount, first: CommandLine.arguments[2], second: CommandLine.arguments[3])
        case .palindrome:
            palindrome.showOutput(argCount: argCount, first: CommandLine.arguments[2])
        case .help:
            consoleIO.printUsage()
        case .unknown, .quit:
            consoleIO.getOutput(message: Error.unknown.rawValue)
            consoleIO.printUsage()
        }
    }
    
    func interactiveMode() {
        var shouldQuit = false
        while !shouldQuit {
            
            consoleIO.getOutput(message: Error.help.rawValue)
            let (option, value) = getOption(consoleIO.getInput())
            
            switch option {
            case .anagram:
                consoleIO.getOutput(message: Error.typeFirst.rawValue)
                let first = consoleIO.getInput()
                consoleIO.getOutput(message: Error.typeSecond.rawValue)
                let second = consoleIO.getInput()
                
                anagram.showOutput(argCount: 4, first: first, second: second)
                
            case .palindrome:
                consoleIO.getOutput(message:Error.typeFirstPalindrome.rawValue)
                if consoleIO.getInput().count > 0{
                    palindrome.showOutput(argCount: 3, first: consoleIO.getInput())
                }
            case .quit:
                shouldQuit = true
            default:
                consoleIO.getOutput(message: Error.unknown.rawValue)
            }
        }
    }
   
    func getOption(_ option: String) -> (option:OptionType, value: String) {
        return (OptionType(value: option), option)
    }
}

