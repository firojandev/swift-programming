//
//  LastWordLength.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 9/10/24.
//

//Given a string s consisting of words and spaces, return the length of the last word in the string.
//
//A word is a maximal
//substring
// consisting of non-space characters only.
//
//
//
//Example 1:
//
//Input: s = "Hello World"
//Output: 5
//Explanation: The last word is "World" with length 5.
//Example 2:
//
//Input: s = "   fly me   to   the moon  "
//Output: 4
//Explanation: The last word is "moon" with length 4.
//Example 3:
//
//Input: s = "luffy is still joyboy"
//Output: 6
//Explanation: The last word is "joyboy" with length 6.
//
//
//Constraints:
//
//1 <= s.length <= 104
//s consists of only English letters and spaces ' '.
//There will be at least one word in s.

import Foundation
class LastWordLength {
    func calculate(_ s:String) -> Int {
        guard s.count > 0, s.count < 10000 else {
            return 0
        }
        let strs = s.split(separator: " ")
        if strs.count > 0 {
            print("str: \(strs[strs.count - 1])")
            let lastWord = strs[strs.count - 1]
            return lastWord.count
        }
        return 0
    }
}
