//
//  Anagram.swift
//  ArgsCleanCode
//
//  Created by Raluca Ionescu on 1/30/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

class Anagram {
    
    func isAnagram(firstWord: String, secondWord: String) -> Bool{
        return firstWord.isAnagramOf(secondWord) ? true : false
    }
}
