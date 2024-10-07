//
//  SubsStringConcat.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 7/10/24.
//
//Substring with Concatenation of All Words
//You are given a string s and an array of strings words. All the strings of words are of the same length.
//
//A concatenated string is a string that exactly contains all the strings of any permutation of words concatenated.
//
//For example, if words = ["ab","cd","ef"], then "abcdef", "abefcd", "cdabef", "cdefab", "efabcd", and "efcdab" are all concatenated strings. "acdbef" is not a concatenated string because it is not the concatenation of any permutation of words.
//Return an array of the starting indices of all the concatenated substrings in s. You can return the answer in any order.
//
//
//
//Example 1:
//
//Input: s = "barfoothefoobarman", words = ["foo","bar"]
//
//Output: [0,9]
//
//Explanation:
//
//The substring starting at 0 is "barfoo". It is the concatenation of ["bar","foo"] which is a permutation of words.
//The substring starting at 9 is "foobar". It is the concatenation of ["foo","bar"] which is a permutation of words.
//
//Example 2:
//
//Input: s = "wordgoodgoodgoodbestword", words = ["word","good","best","word"]
//
//Output: []
//
//Explanation:
//
//There is no concatenated substring.
//
//Example 3:
//
//Input: s = "barfoofoobarthefoobarman", words = ["bar","foo","the"]
//
//Output: [6,9,12]
//
//Explanation:
//
//The substring starting at 6 is "foobarthe". It is the concatenation of ["foo","bar","the"].
//The substring starting at 9 is "barthefoo". It is the concatenation of ["bar","the","foo"].
//The substring starting at 12 is "thefoobar". It is the concatenation of ["the","foo","bar"].
//
//
//
//Constraints:
//
//1 <= s.length <= 104
//1 <= words.length <= 5000
//1 <= words[i].length <= 30
//s and words[i] consist of lowercase English letters.

class SubsStringConcat {
    func findSubstring(_ s: String, _ words: [String]) -> [Int] {
        guard !s.isEmpty, !words.isEmpty else { return [] }

        let wordLength = words[0].count
        let totalWordsLength = wordLength * words.count
        let stringLength = s.count

        if stringLength < totalWordsLength {
            return []
        }

        var wordDict = [String: Int]()
        for word in words {
            wordDict[word, default: 0] += 1
        }

        var result = [Int]()

        for i in 0..<wordLength {
            var left = i
            var right = i
            var seen = [String: Int]()
            var count = 0

            // Sliding window approach
            while right + wordLength <= stringLength {
                let start = s.index(s.startIndex, offsetBy: right)
                let end = s.index(start, offsetBy: wordLength)
                let word = String(s[start..<end])

                right += wordLength

                if let countInDict = wordDict[word] {
                    seen[word, default: 0] += 1
                    count += 1

                    while seen[word]! > countInDict {
                        let leftStart = s.index(s.startIndex, offsetBy: left)
                        let leftEnd = s.index(leftStart, offsetBy: wordLength)
                        let leftWord = String(s[leftStart..<leftEnd])

                        seen[leftWord]! -= 1
                        count -= 1
                        left += wordLength
                    }
                    if count == words.count {
                        result.append(left)
                    }
                } else {
                    seen.removeAll()
                    count = 0
                    left = right
                }
            }
        }

        return result
    }
}
