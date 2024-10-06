//
//  RomainToInt.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 6/10/24.
//

import Foundation

class RomanToInt {
    
    func convert(_ s:String) -> Int {
        var result = 0
        
        let dictionary: [Character:Int] = [
            "I":1,
            "V":5,
            "X":10,
            "L":50,
            "C":100,
            "D":500,
            "M":1000
        ]
        
        var preVal = 0
        //XXVII => IIVXX => 2 + 5 + 20= 27
        for char in s.reversed() {
            
            let curVal = dictionary[char] ?? 0
            
            print("Char \(char) ==> value:\(curVal)")
            
            if curVal < preVal {
                print("\(preVal) is large")
                result -= curVal
            } else {
                print("\(curVal) is large")
                result += curVal
            }
            
            preVal = curVal
            
        }
        
        return result
    }
}
