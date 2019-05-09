//
//  ReadStrategy.swift
//  TypesOfWords
//
//  Created by Raluca Ionescu on 2/13/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

typealias InputDictionary = (optionType: OptionType, word: String)

protocol InputStrategyProtocol {
    func read(args argument: [String]?) -> [InputDictionary]
}

class StaticInputStrategy : InputStrategyProtocol {
    func read(args: [String]?) -> [InputDictionary] {
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
            if let secondWord = line.secondWord {
                if secondWord.count > 0 {
                    readDictionary.append(InputDictionary(optionType:OptionType(value: line.optionType), word: line.firstWord))
                    readDictionary.append(InputDictionary(optionType:OptionType(value: line.optionType), word: secondWord))
                } else {
                    readDictionary.append(InputDictionary(optionType:OptionType(value: line.optionType), word: line.firstWord))
                }
            }
            
        }
        
        return readDictionary
    }
    
    private func substring(value: String) -> (optionType:String, firstWord:String, secondWord:String?){
        let delimiter = " "
        let stringArray = value.components(separatedBy: delimiter)
        return (optionType: stringArray[0], firstWord: stringArray[1], secondWord: stringArray.count > 2 ? stringArray[2] : "")
    }
    
    func getOption(_ option: String) -> (option:OptionType, value: String) {
        return (OptionType(value: option), option)
    }

}

extension InputStrategyProtocol {
    func getInput() -> String {
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        let strData = String(data: inputData, encoding: String.Encoding.utf8)!
        return strData.trimmingCharacters(in: CharacterSet.newlines)
    }
}
