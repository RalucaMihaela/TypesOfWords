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
    private let numberOfArguments = 4
    
    func wordVerify(word: Int) -> Bool {
        return word == numberOfArguments ? true : false
    }
    
    func parse(firstWord: String, secondWord: String) -> Bool{
        return firstWord.isAnagramOf(secondWord) ? true : false
    }
    
    func showOutput(firstWord: String, secondWord: String) {
        let anagramVerify = wordVerify(word: numberOfArguments)
        if anagramVerify == true {
            parse(firstWord: firstWord, secondWord: secondWord) ? consoleIO.getOutput(message: Messages.isAnagram.rawValue) :  consoleIO.getOutput(message: Messages.isNotAnagram.rawValue)
        } else {
            consoleIO.getOutput(message: Messages.globalError.rawValue)
            consoleIO.printUsage()
        }
    }
}
