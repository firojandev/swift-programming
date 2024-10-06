//
//  Palindrome.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 6/10/24.
//

import Foundation
//Check the number is palindrome or not
//let num1 = -12321
//print(isPalindrome(num1))

class Palindrome {
    func isPalindrome(_ x: Int) -> Bool {
        
        if x < 0 {
            return false
        }
        
        var reversed = ""
        
        let str = String(x)
        var num = abs(x)
        for _ in str {
            let a = num % 10
            reversed.append(String(a))
            num = num / 10
        }
        
        if str == reversed {
            return true
        }
        
        return false
        
    }
}

