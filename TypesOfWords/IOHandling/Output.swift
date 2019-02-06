//
//  Output.swift
//  TypesOfWords
//
//  Created by Raluca Ionescu on 2/6/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

class Output {
    
    private let consoleIO = ConsoleIO()
    
    func writeStatic(){
        
    }
    
    func writeInteractive(message: Messages){
        consoleIO.getOutput(message: message.rawValue)
    }
    
    func writeInteractiveWordParse(isCorrect: Bool, type: OptionType){
        switch type {
        case .anagram, .palindrome:
            if isCorrect {
                writeInteractive(message: type == .anagram ? .isAnagram : .isPalindrome)
            } else {
                writeInteractive(message: type == .anagram ? .isNotAnagram : .isNotPalindrome)
            }
        case .help:
            writeInteractive(message: .help)
        default:
            writeInteractive(message: .unknown)
        }
    }
}
