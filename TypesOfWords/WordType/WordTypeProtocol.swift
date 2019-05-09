//
//  WordTypeProtocol.swift
//  TypesOfWords
//
//  Created by Raluca Ionescu on 5/9/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

class WordTypeClass {
    private let dictionary: [InputDictionary]
    private let outputProtocol = InteractiveOutputStrategy()
    
    init(inputDictionary: [InputDictionary]){
        self.dictionary = inputDictionary
    }
    
    func wordVerify() {
        var result: Bool = false
        let optionType = dictionary[0].optionType
        
        if optionType == .palindrome {
            result = self.isPalindrome(firstWord: dictionary[0].word)
        } else if optionType == .anagram {
            result = self.isAnagram(firstWord: dictionary[0].word, secondWord: dictionary[1].word)
        }
        
        outputProtocol.write(result: result, type: optionType)
    }
}

extension WordTypeClass{
    
    func isAnagram(firstWord: String, secondWord: String) -> Bool{
        return firstWord.isAnagramOf(secondWord) ? true : false
    }
    
    func isPalindrome(firstWord: String) -> Bool {
        return firstWord.isPalindrome() ? true : false
    }
}
