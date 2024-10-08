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

//Problem & Solutions 5
//Minimum String Length After Removing Substrings
//let removeSubString = RemoveSubString()
//let inputString = "CCCCDDDD"
//let results = removeSubString.findMinLength(inputString)
//print(results)

//Problem & Solutions 6
//Find longest common string
//let commonStr = CommonString()
//let inputArray: [String] = ["flower","flow","flight"]
////let inputArray = ["dog","racecar","car"]
////let inputArray: [String] = ["khds","khdsererer","khdsre"]
//let results = commonStr.findLongest(inputArray)
//print(results)

//Problem & Solutions 7
//let parentheses = Parentheses()
//let inputString = "(){}[]"
//let results = parentheses.isValid(inputString)
//print(results)

//Problem & Solutions 8
//Substring with Concatenation of All Words
//let subsStringConcat = SubsStringConcat()
//let inputString = "barfoofoobarthefoobarman"
//let inputStringArray = ["bar","foo","the"]
//let results = subsStringConcat.findSubstring(inputString,inputStringArray)




//Problem & solutions 9
//
// Creating the first sorted linked list: 1 -> 2 -> 4
//let list1 = ListNode(1)
//list1.next = ListNode(2)
//list1.next?.next = ListNode(4)
//
//// Creating the second sorted linked list: 1 -> 3 -> 4
//let list2 = ListNode(1)
//list2.next = ListNode(3)
//list2.next?.next = ListNode(4)
//
//// Merging the two lists
//let merger = MergeTwoSortedLists()
//if let mergedList = merger.mergeTwoLists(list1, list2) {
//    // Print merged list
//    var current: ListNode? = mergedList
//    while current != nil {
//        print(current!.val)
//        current = current?.next
//    }
//}

//Problem & solutions 10
//let findIndexOfOccurance = FindIndexOfOccurance()
//let haystack = "mesaltaf"
//let needle = "altaf"
//let results = findIndexOfOccurance.strStr(haystack,needle)
//print(results)

//Problem & Solutions 11
//Minimum Number of Swaps to Make the String Balanced
//let balanceString = BalanceString()
//let inputStr = "][]["
//let results = balanceString.minSwaps(inputStr)
//print(results)

//Problem & solutions 12
//Reverse Integer
//let reverseInteger = ReverseInteger()
//let inputValue = -123
//let results = reverseInteger.reverse(inputValue)
//print(results)

//Problem & solutions 13
//Remove Element
//let removeElement = RemoveElement()
//var inputArray = [0,1,2,2,3,0,4,2]
//let val = 2
//let results = removeElement.remove(&inputArray,val)
//print(results)

//Problem & solutions 14
//Remove Duplicate
//let removeDuplicate = RemoveDuplicate()
//var inputArray = [1]
//let results = removeDuplicate.remove(&inputArray)
//print(results)

//Problem & solutions 15
//Search Insert Position
let searchInsertPosition = SearchInsertPosition()
let inputArray = [1,3,5,6]
let target = 10
let results = searchInsertPosition.searchInsert(inputArray,target)
print(results)
