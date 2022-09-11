//
//  File.swift
//  ios-framework
//
//  Created by NguyenTC6.GFS on 11/09/2022.
//

import Foundation

public class CalculatorServices: NSObject {
    public func sum(numberA: Int, numberB: Int) -> Int {
        return numberA + numberB
    }
    
    public func subtraction(numberA: Int, numberB: Int) -> Int {
        return numberA * numberB
    }
    
    public func randomNumber() -> Int {
        let randomInt = Int.random(in: 1...100)
        return randomInt
    }
}
