//
//  Palindrome.swift
//  ArgsCleanCode
//
//  Created by Raluca Ionescu on 1/30/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

class Palindrome {
    let consoleIO = ConsoleIO()
    
    func wordVerify(word: Int32) -> Bool {
        return word == 3 ? true : false
    }
    
    func parse(first: String) -> Bool {
        return first.isPalindrome() ? true : false
    }
    
    func showOutput(argCount: Int32, first: String) {
        let palindromeVerify = wordVerify(word: argCount)
        if palindromeVerify == true {
            parse(first: CommandLine.arguments[2]) ? consoleIO.getOutput(message:Error.isPalindrome.rawValue) :   consoleIO.getOutput(message:Error.isNotPalindrome.rawValue)
        } else {
            consoleIO.getOutput(message: Error.globalError.rawValue)
            consoleIO.printUsage()
        }
    }
}
