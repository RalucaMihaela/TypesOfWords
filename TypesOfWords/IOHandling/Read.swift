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
        
        output.writeInteractive(message: .help)
        let (option, _) = getOption(consoleIO.getInput())
        
        output.writeInteractive(message: .typeFirst)
        let first = consoleIO.getInput()
        
        output.writeInteractive(message: .typeSecond)
        let second = consoleIO.getInput()
        
        return (option,first,second)
    }
    
    func getOption(_ option: String) -> (option:OptionType, value: String) {
        return (OptionType(value: option), option)
    }
}
