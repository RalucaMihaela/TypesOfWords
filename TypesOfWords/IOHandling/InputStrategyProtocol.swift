//
//  ReadStrategy.swift
//  TypesOfWords
//
//  Created by Raluca Ionescu on 2/13/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

typealias InputDictionary = (optionType: String, word: String)

protocol InputStrategyProtocol {
    func read(args argument: [String]?) -> [InputDictionary]
}

class StaticInputStrategy : InputStrategyProtocol {
    func read(args: [String]?) -> [InputDictionary] {
        //wordVerify
        return []
    }
}

class InteractiveInputStrategy : InputStrategyProtocol {
    func read(args: [String]?) -> [InputDictionary] {
        // -p/-a string1 string2
        var readDictionary: [InputDictionary] = []
        
        guard let input = args else {
            return []
        }
        
        for item in input {
            let line = self.substring(value: item)
            if line.secondWord.count > 0 {
                readDictionary.append(InputDictionary(optionType:line.optionType, word: line.firstWord))
                readDictionary.append(InputDictionary(optionType:line.optionType, word: line.secondWord))
            } else {
                readDictionary.append(InputDictionary(optionType:line.optionType, word: line.firstWord))
            }
        }
        
        return readDictionary
    }
    
    private func substring(value: String) -> (optionType:String, firstWord:String, secondWord:String){
        let delimiter = " "
        let stringArray = value.components(separatedBy: delimiter)
        return (optionType: stringArray[0], firstWord: stringArray[1], secondWord: stringArray[2])
    }
    
    func getOption(_ option: String) -> (option:OptionType, value: String) {
        return (OptionType(value: option), option)
    }
}
