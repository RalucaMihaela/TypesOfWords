//
//  AnagramUnitTests.swift
//  TypesOfWordsUnitTests
//
//  Created by Raluca Ionescu on 2/7/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import XCTest

class AnagramUnitTests: XCTestCase {

    func isAnagramTest(){
        let firstWord = "restful"
        let secondWord = "fluster"
        let sut = Anagram()
        
        let result = sut.isAnagram(firstWord: firstWord, secondWord: secondWord)
        XCTAssertEqual(result, true)
    }

    func isNotAnagramTest(){
        let firstWord = "restful"
        let secondWord = "mom"
        let sut = Anagram()
        
        let result = sut.isAnagram(firstWord: firstWord, secondWord: secondWord)
        XCTAssertEqual(result, false)
    }
}
