//
//  OptionType.swift
//  ArgsCleanCode
//
//  Created by Raluca Ionescu on 1/31/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

enum OptionType: String {
    case palindrome = "p"
    case anagram = "a"
    case help = "h"
    case unknown
    case quit = "q"
    
    init(value: String) {
        switch value {
        case "a": self = .anagram
        case "p": self = .palindrome
        case "h": self = .help
        case "q": self = .quit
        default: self = .unknown
        }
    }
}
