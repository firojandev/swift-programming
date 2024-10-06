//
//  sum-nums-position.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 6/10/24.
//

import Foundation
//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Explanation: Because nums[0] + nums[1] == 9, we return [0, 1]

//let nums = [2,7,11,15]
//let target = 9
//
//let nums1 = [3,2,4]
//let target1 = 6
//
//let nums2 = [3,3]
//let target2 = 6
//
//print(calculate(nums2,target2))

class SumNumsPosition {
    func calculate(_ nums:[Int], _ target:Int) -> [Int] {
        var results : [Int] = []
        for (i,num) in nums.enumerated() {
            for (j,value) in nums.enumerated() {
                if i == j {
                    continue
                }
                if num + value == target {
                    if !results.contains(i){
                        results.append(i)
                    }
                    if !results.contains(j){
                        results.append(j)
                    }
                }
            }
        }
        return results
    }
}
