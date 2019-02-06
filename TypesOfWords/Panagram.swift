//
//  Panagram.swift
//  ArgsCleanCode
//
//  Created by Raluca Ionescu on 1/16/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

typealias ItemRead = (type: OptionType, firstWord: String, secondWord: String)

class Panagram {
    
    private let read = Read()
    private let write = Output()
    private var anagram: Anagram = Anagram()
    private var palindrome: Palindrome = Palindrome()
    private var wordVerify: WordParse = WordParse()
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
//        let numberOfArguments = (item.type == .anagram) ? 4 : 3
//        if wordVerify.wordVerify(word: wordCount, numberOfArguments: numberOfArguments) {
//        }
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
        var item: ItemRead
        
        item = read.readInteractive()
        self.verifyTypeOfWord(wordCount: Int(CommandLine.argc), item: item)
    }
   
    func verifyTypeOfWord(wordCount: Int, item: ItemRead){
        var isCorrect: Bool = false
        switch item.type {
        case .anagram:
            isCorrect = anagram.isAnagram(firstWord: item.firstWord, secondWord: item.secondWord)
        case .palindrome:
            isCorrect = palindrome.isPalindrome(firstWord: item.firstWord)
        default:
            isCorrect = false
        }
        write.writeInteractiveWordParse(isCorrect: isCorrect, type: item.type)
    }
   
}

