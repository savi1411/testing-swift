//
//  Hater.swift
//  First
//
//  Created by Carlos Alberto Savi on 13/04/21.
//

import Foundation

struct Hater {
    var hating = false
    
    mutating func hadABadDay() {
        hating = true
    }
    
    mutating func hadAGoodDay() {
        hating = false
    }
    
}
