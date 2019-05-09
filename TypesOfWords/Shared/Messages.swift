//
//  Error.swift
//  ArgsCleanCode
//
//  Created by Raluca Ionescu on 1/31/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

enum Messages: String {
    case isAnagram = "Is anagram"
    case isNotAnagram = "Is not anagram"
    case globalError = "Arguments are not correct"
    case isPalindrome = "Is palindrome"
    case isNotPalindrome = "Is not palindrome"
    case help = "Type 'a' to check for anagrams or 'p' for palindromes type 'q' to quit."
    case unknown = "Unknown option"
    
    case typeFirst = "Type the first string:"
    case typeSecond = "Type the second string:"
    
    case typeFirstPalindrome = "Type a word or sentence:"
}
