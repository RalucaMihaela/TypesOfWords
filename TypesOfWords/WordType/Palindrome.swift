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
    private let numberOfArguments = 3
    
    func wordVerify(word: Int) -> Bool {
        return word == numberOfArguments ? true : false
    }
    
    func parse(word: String) -> Bool {
        return word.isPalindrome() ? true : false
    }
    
    func showOutput(word: String) {
        let palindromeVerify = wordVerify(word: numberOfArguments)
        if palindromeVerify == true {
            parse(word: word) ? consoleIO.getOutput(message:Messages.isPalindrome.rawValue) :   consoleIO.getOutput(message:Messages.isNotPalindrome.rawValue)
        } else {
            consoleIO.getOutput(message: Messages.globalError.rawValue)
            consoleIO.printUsage()
        }
    }
}
