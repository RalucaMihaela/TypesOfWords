//
//  Panagram.swift
//  ArgsCleanCode
//
//  Created by Raluca Ionescu on 1/16/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

class Panagram {
    
    private let read = Read()
    private var anagram: Anagram = Anagram()
    private var palindrome: Palindrome = Palindrome()
    private let numberOfArguments: Int = 2
    
    func isInteractive() -> Bool {
        return CommandLine.argc < numberOfArguments ? true : false
    }
    
    func start() {
        if isInteractive() {
            self.interactiveMode()
        } else {
            self.staticMode()
        }
    }
    
    func staticMode() {
//        let argument = CommandLine.arguments[1]
//        let firstWord = CommandLine.arguments[2]
//        let index = argument.index(argument.startIndex, offsetBy: 1)
//        let (option, _) = getOption(String(argument.suffix(from: index)))
//
//        switch option {
//        case .anagram:
//            let secondWord = CommandLine.arguments[3]
//            anagram.showOutput(firstWord: firstWord, secondWord: secondWord)
//        case .palindrome:
//            palindrome.showOutput(word: firstWord)
//        case .help:
//            consoleIO.printUsage()
//        case .unknown, .quit:
//            consoleIO.getOutput(message: Messages.unknown.rawValue)
//            consoleIO.printUsage()
//        }
    }
    
    func interactiveMode() {
        var shouldQuit = false
        var itemRead: (type: OptionType, firstWord: String, secondWord: String)
        
        while !shouldQuit {
            itemRead = read.readInteractive()
            switch itemRead.type {
            case .anagram:
                anagram.showOutput(firstWord: "bla", secondWord: "bla")
            case .palindrome:
//                consoleIO.getOutput(message:Messages.typeFirstPalindrome.rawValue)
//                if consoleIO.getInput().count > 0{
//                    palindrome.showOutput(word: consoleIO.getInput())
//                }
                print("bla")
            case .quit:
                shouldQuit = true
            default:
                shouldQuit = true
//                consoleIO.getOutput(message: Messages.unknown.rawValue)
            }
        }
    }
   
   
}

