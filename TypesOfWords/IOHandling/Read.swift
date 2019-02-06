//
//  Input.swift
//  TypesOfWords
//
//  Created by Raluca Ionescu on 2/6/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

class Read {
    
    private let consoleIO = ConsoleIO()
    private let output = Output()
    
    func readStatic(){
        
    }
    
    func readInteractive() -> (OptionType, String, String) {
        var firstWord: String = ""
        var secondWord: String = ""
        
        output.writeInteractive(message: .help)
        let (option, _) = getOption(consoleIO.getInput())
        
        switch option {
        case .anagram:
            output.writeInteractive(message: .typeFirst)
            firstWord = consoleIO.getInput()
            
            output.writeInteractive(message: .typeSecond)
            secondWord = consoleIO.getInput()
        case .palindrome:
            output.writeInteractive(message: .typeFirst)
            firstWord = consoleIO.getInput()
        default:
            output.writeInteractive(message: .unknown)
        }
        
        return (option,firstWord,secondWord)
    }
    
    func getOption(_ option: String) -> (option:OptionType, value: String) {
        return (OptionType(value: option), option)
    }
}
