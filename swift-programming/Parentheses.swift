//
//  Parentheses.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 7/10/24.
//

//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//Every close bracket has a corresponding open bracket of the same type.
//
//
//Example 1:
//
//Input: s = "()"
//
//Output: true
//
//Example 2:
//
//Input: s = "()[]{}"
//
//Output: true
//
//Example 3:
//
//Input: s = "(]"
//
//Output: false
//
//Example 4:
//
//Input: s = "([])"
//
//Output: true
//
//
//
//Constraints:
//
//1 <= s.length <= 104
//s consists of parentheses only '()[]{}'.

import Foundation

class Parentheses {
   
    func isValid(_ s: String) -> Bool {
        
        if s.count < 1 || s.count > 10000 {
            return false
        }
       
        let dictionary: [Character: Character] = [")": "(", "}": "{", "]": "["]
        var mStack: [Character] = []
        for char in s {
            if let dictBracket = dictionary[char] {
                if mStack.isEmpty || mStack.last != dictBracket {
                    return false
                }
                mStack.removeLast()
            } else {
                mStack.append(char)
            }
        }
        return mStack.isEmpty
    }
}
