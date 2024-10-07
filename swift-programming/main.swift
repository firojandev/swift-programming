//
//  main.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 6/10/24.
//

import Foundation

//Problem & solutions # 1
//let sumNumsPosition = SumNumsPosition()
//let nums = [2,7,11,15]
//let target = 9
//let problem1Solution = sumNumsPosition.calculate(nums,target)
//print(problem1Solution)

//Problem & solutions # 2
//Checkign a number is palindrome or not
//let palindrome = Palindrome()
//let num = 121
//let isPalindrome = palindrome.isPalindrome(num)
//print(isPalindrome)

//Problem & Solutions 3
//Convert Roman number to Int
//let romainToInt = RomanToInt()
//let inputStr = "XXVII"
//let results = romainToInt.convert(inputStr)
//print(results)

//Problem & Solutions 4
//Convert the number to roman number
//let numbreToRoman = IntToRoman()
//let inputNum = 58
//let results = numbreToRoman.convert(number: inputNum)
//print(results)

//Minimum String Length After Removing Substrings
//let removeSubString = RemoveSubString()
//let inputString = "CCCCDDDD"
//let results = removeSubString.findMinLength(inputString)
//print(results)

//Find longest common string
let commonStr = CommonString()
let inputArray: [String] = ["flower","flow","flight"]
//let inputArray = ["dog","racecar","car"]
//let inputArray: [String] = ["khds","khdsererer","khdsre"]
let results = commonStr.findLongest(inputArray)
print(results)
