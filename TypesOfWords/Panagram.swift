//
//  Panagram.swift
//  ArgsCleanCode
//
//  Created by Raluca Ionescu on 1/16/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

class Panagram {
    
    private let numberOfArguments: Int = 2
    private let inputProtocol = InteractiveInputStrategy()
    private var inputDictionary: [InputDictionary] = []
    
    func isInteractive() -> Bool {
        return CommandLine.argc < numberOfArguments ? true : false
    }
    
    func start() {
        if isInteractive() {
            inputDictionary = self.inputProtocol.read(args: [inputProtocol.getInput()])
            
            let wordParseClass = WordTypeClass(inputDictionary: inputDictionary)
            wordParseClass.wordVerify()
        }
    }
    
    func staticMode() {
    }
   
}

