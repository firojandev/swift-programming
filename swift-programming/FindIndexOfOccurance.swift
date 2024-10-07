//
//  FindIndexOfOccurance.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 7/10/24.
//
//Find the Index of the First Occurrence in a String
//Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
//
//
//
//Example 1:
//
//Input: haystack = "sadbutsad", needle = "sad"
//Output: 0
//Explanation: "sad" occurs at index 0 and 6.
//The first occurrence is at index 0, so we return 0.
//Example 2:
//
//Input: haystack = "leetcode", needle = "leeto"
//Output: -1
//Explanation: "leeto" did not occur in "leetcode", so we return -1.
//
//
//Constraints:
//
//1 <= haystack.length, needle.length <= 104
//haystack and needle consist of only lowercase English characters.

import Foundation

class FindIndexOfOccurance {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var results = -1
        
        guard !haystack.isEmpty, !needle.isEmpty else {
            return -1
        }
        
        if haystack.count < 1 || needle.count > 10000 {
            return -1
        }
        
        if let range = haystack.range(of: needle) {
        
            let lowerBound = range.lowerBound
            
            results = haystack.distance(from: haystack.startIndex, to: lowerBound)
            
        }
        
        return results
    }
}
