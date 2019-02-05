//
//  Anagram.swift
//  ArgsCleanCode
//
//  Created by Raluca Ionescu on 1/30/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

class Anagram {
    
    let consoleIO = ConsoleIO()
    
    func wordVerify(word: Int32) -> Bool {
        return word == 4 ? true : false
    }
    
    func parse(first: String, second: String) -> Bool{
        return first.isAnagramOf(second) ? true : false
    }
    
    func showOutput(argCount: Int32, first: String, second: String) {
        let anagramVerify = wordVerify(word: argCount)
        if anagramVerify == true {
            parse(first: CommandLine.arguments[2], second: CommandLine.arguments[3]) ? consoleIO.getOutput(message: Error.isAnagram.rawValue) :  consoleIO.getOutput(message: Error.isNotAnagram.rawValue)
        } else {
            consoleIO.getOutput(message: Error.globalError.rawValue)
            consoleIO.printUsage()
        }
    }
}
