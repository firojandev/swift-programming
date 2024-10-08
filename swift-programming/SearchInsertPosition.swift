//
//  SearchInsertPosition.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 8/10/24.
//
//Search Insert Position
//Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
//
//You must write an algorithm with O(log n) runtime complexity.
//
//
//
//Example 1:
//
//Input: nums = [1,3,5,6], target = 5
//Output: 2
//Example 2:
//
//Input: nums = [1,3,5,6], target = 2
//Output: 1
//Example 3:
//
//Input: nums = [1,3,5,6], target = 7
//Output: 4
//
//
//Constraints:
//
//1 <= nums.length <= 104
//-104 <= nums[i] <= 104
//nums contains distinct values sorted in ascending order.
//-104 <= target <= 104

import Foundation

class SearchInsertPosition {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        if nums.count < 1 || nums.count > 10000 || target < -10000 || target > 10000 {
            return 0
        }
        
        var position = 0
        var right = nums.count - 1
        
        while position <= right {
            let mid = position + (right - position) / 2
            
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                position = mid + 1
            } else {
                right = mid - 1
            }
        }
        return position
    }
}
