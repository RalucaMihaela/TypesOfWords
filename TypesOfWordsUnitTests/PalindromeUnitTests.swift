//
//  PalindromeUnitTests.swift
//  TypesOfWordsUnitTests
//
//  Created by Raluca Ionescu on 2/7/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import XCTest

class PalindromeUnitTests: XCTestCase {

    func isAnagramTest(){
        let word = "ana"
        let sut = Palindrome()
        
        let result = sut.isPalindrome(firstWord: word)
        XCTAssertEqual(result, true)
    }
    
    func isNotAnagramTest(){
        let word = "ana"
        let sut = Palindrome()
        
        let result = sut.isPalindrome(firstWord: word)
        XCTAssertEqual(result, false)
    }
}
