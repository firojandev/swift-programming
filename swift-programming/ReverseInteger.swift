//
//  ReverseInteger.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 8/10/24.
//
//Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
//
//Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
//
//
//
//Example 1:
//
//Input: x = 123
//Output: 321
//Example 2:
//
//Input: x = -123
//Output: -321
//Example 3:
//
//Input: x = 120
//Output: 21
//
//
//Constraints:
//
//-231 <= x <= 231 - 1


import Foundation
class ReverseInteger {
    func reverse(_ x: Int) -> Int {
        
        var num = abs(x)
        var revNum = ""
        
        while num > 0 {
            let r = num % 10
            num = num / 10
            revNum.append(String(r))
        }
        
        if let value = Int(revNum) {
            if isInRange(num: value){
                if x < 0 {
                    return -value
                }
              return value
            }
        }
        return 0
    }
    
    func isInRange(num:Int) -> Bool {
        let lb = -Int(pow(2.0,31.0))
        let ub = Int(pow(2.0,31.0))
        return num >= lb && num <= ub
    }
}
