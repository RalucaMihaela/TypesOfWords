//
//  OutputStrategyProtocol.swift
//  TypesOfWords
//
//  Created by Raluca Ionescu on 3/13/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

protocol OutputStrategyProtocol {
    func writeMessage(message: Messages)
    func write(result: Bool, type: OptionType)
}

class StaticOutputStrategy : OutputStrategyProtocol {
    func writeMessage(message: Messages) {
        print("\(message)")
    }
    
    func write(result: Bool, type: OptionType) {
    }
}

class InteractiveOutputStrategy : OutputStrategyProtocol {
    func writeMessage(message: Messages) {
        print("\(message)")
    }
    
    func write(result: Bool, type: OptionType) {
        switch type {
        case .anagram, .palindrome:
            if result {
                writeMessage(message: type == .anagram ? .isAnagram : .isPalindrome)
            } else {
                writeMessage(message: type == .anagram ? .isNotAnagram : .isNotPalindrome)
            }
        case .help:
            writeMessage(message: .help)
        default:
            writeMessage(message: .unknown)
        }
    }
    
}
