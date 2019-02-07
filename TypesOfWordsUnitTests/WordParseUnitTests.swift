//
//  WordParseUnitTests.swift
//  TypesOfWordsUnitTests
//
//  Created by Raluca Ionescu on 2/7/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import XCTest

class WordParseUnitTests: XCTestCase {
    
    func wordVerifies(){
        let argsCount = 3
        let numberOfArguments = 3
        let sut = WordParse()
        
        let result = sut.wordVerify(argsCount: argsCount, numberOfArguments: numberOfArguments)
        XCTAssertEqual(result, true)
        
    }
    
    func wordDoesNotVerifies(){
        let argsCount = 3
        let numberOfArguments = 4
        let sut = WordParse()
        
        let result = sut.wordVerify(argsCount: argsCount, numberOfArguments: numberOfArguments)
        XCTAssertEqual(result, true)
    }
}
