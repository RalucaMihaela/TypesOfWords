//
//  main.swift
//  ArgsCleanCode
//
//  Created by Raluca Ionescu on 1/16/19.
//  Copyright © 2019 Raluca Ionescu. All rights reserved.
//

import Foundation

let panagram = Panagram()

if CommandLine.argc < 2 {
    panagram.interactiveMode()
} else {
    panagram.staticMode()
}


