//
//  Output.swift
//  TypesOfWords
//
//  Created by Raluca Ionescu on 2/6/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

class Output {
    
    private let consoleIO = ConsoleIO()
    
    func writeStatic(){
        
    }
    
    func writeInteractive(message: Messages){
        consoleIO.getOutput(message: message.rawValue)
    }
}
