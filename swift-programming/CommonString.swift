//
//  CommonString.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 7/10/24.
//

//Longest Common Prefix
//Write a function to find the longest common prefix string amongst an array of strings.
//
//If there is no common prefix, return an empty string "".
//
//
//
//Example 1:
//
//Input: strs = ["flower","flow","flight"]
//Output: "fl"
//Example 2:
//
//Input: strs = ["dog","racecar","car"]
//Output: ""
//Explanation: There is no common prefix among the input strings.
//
//
//Constraints:
//
//1 <= strs.length <= 200
//0 <= strs[i].length <= 200
//strs[i] consists of only lowercase English letters

import Foundation

class CommonString {
    func findLongest(_ strs: [String]) -> String {
        if strs.count < 1  || strs.count > 200 {
            return ""
        }
        var prefixStr = strs[0]
        for word in strs {
            while !word.hasPrefix(prefixStr) {
                prefixStr.removeLast()
                if prefixStr.isEmpty {
                    return ""
                }
            }
        }
        return prefixStr
    }
}
