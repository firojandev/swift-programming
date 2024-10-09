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
    
    //Minimum Add to Make Parentheses Valid
//    A parentheses string is valid if and only if:
//
//    It is the empty string,
//    It can be written as AB (A concatenated with B), where A and B are valid strings, or
//    It can be written as (A), where A is a valid string.
//    You are given a parentheses string s. In one move, you can insert a parenthesis at any position of the string.
//
//    For example, if s = "()))", you can insert an opening parenthesis to be "(()))" or a closing parenthesis to be "())))".
//    Return the minimum number of moves required to make s valid.
//
//
//
//    Example 1:
//
//    Input: s = "())"
//    Output: 1
//    Example 2:
//
//    Input: s = "((("
//    Output: 3
//
//
//    Constraints:
//
//    1 <= s.length <= 1000
//    s[i] is either '(' or ')'.
    
    
    func minAddToMakeValid(_ s: String) -> Int {
        if s.count < 1 || s.count > 1000 {
            return 0
        }
        var balance = 0
        var need = 0
        
        for char in s {
            if char == "(" {
                balance += 1
            } else if char == ")" {
                if balance > 0 {
                    balance -= 1
                } else {
                    need += 1
                }
            }
        }
        
        return need + balance
        
    }
    
}
