//
//  PlusOne.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 9/10/24.
//

//You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.
//
//Increment the large integer by one and return the resulting array of digits.
//
//
//
//Example 1:
//
//Input: digits = [1,2,3]
//Output: [1,2,4]
//Explanation: The array represents the integer 123.
//Incrementing by one gives 123 + 1 = 124.
//Thus, the result should be [1,2,4].
//Example 2:
//
//Input: digits = [4,3,2,1]
//Output: [4,3,2,2]
//Explanation: The array represents the integer 4321.
//Incrementing by one gives 4321 + 1 = 4322.
//Thus, the result should be [4,3,2,2].
//Example 3:
//
//Input: digits = [9]
//Output: [1,0]
//Explanation: The array represents the integer 9.
//Incrementing by one gives 9 + 1 = 10.
//Thus, the result should be [1,0].
//
//
//Constraints:
//
//1 <= digits.length <= 100
//0 <= digits[i] <= 9
//digits does not contain any leading 0's.

import Foundation

class PlusOne {
    func plus(_ digits: [Int]) -> [Int] {
        guard digits.count > 0,digits.count < 101 else {
            return []
        }
        
//        var results:[Int] = []
//        for (index,digit) in digits.enumerated() {
//            if index == digits.count - 1 {
//                let lastDigit = digit + 1
//                if lastDigit > 9 {
//                    results.append(1)
//                    results.append(0)
//                }else{
//                    results.append(lastDigit)
//                }
//
//            }else {
//                results.append(digit)
//            }
//        }
//        return results
        
//        let arrayString = digits.map { String($0) }.joined()
//
//        if let num = Int(arrayString) {
//            let agr = num + 1
//            return String(agr).compactMap { Int(String($0)) }
//        }
//
//        return []
        
        var result = digits
        for i in (0..<result.count).reversed() {
            if result[i] < 9 {
                result[i] += 1
                return result
            }
            result[i] = 0
        }
        return [1] + result
        
    }
}
