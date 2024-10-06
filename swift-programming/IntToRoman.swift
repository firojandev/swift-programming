//
//  IntToRoman.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 6/10/24.
//

/*
 
 
 If the value does not start with 4 or 9, select the symbol of the maximal value that can be subtracted from the input, append that symbol to the result, subtract its value, and convert the remainder to a Roman numeral.
 If the value starts with 4 or 9 use the subtractive form representing one symbol subtracted from the following symbol, for example, 4 is 1 (I) less than 5 (V): IV and 9 is 1 (I) less than 10 (X): IX. Only the following subtractive forms are used: 4 (IV), 9 (IX), 40 (XL), 90 (XC), 400 (CD) and 900 (CM).
 Only powers of 10 (I, X, C, M) can be appended consecutively at most 3 times to represent multiples of 10. You cannot append 5 (V), 50 (L), or 500 (D) multiple times. If you need to append a symbol 4 times use the subtractive form.
 
 Example 1:

 Input: num = 3749

 Output: "MMMDCCXLIX"

 Explanation:

 3000 = MMM as 1000 (M) + 1000 (M) + 1000 (M)
  700 = DCC as 500 (D) + 100 (C) + 100 (C)
   40 = XL as 10 (X) less of 50 (L)
    9 = IX as 1 (I) less of 10 (X)
 Note: 49 is not 1 (I) less of 50 (L) because the conversion is based on decimal places
 Example 2:

 Input: num = 58

 Output: "LVIII"

 Explanation:

 50 = L
  8 = VIII
 Example 3:

 Input: num = 1994

 Output: "MCMXCIV"

 Explanation:

 1000 = M
  900 = CM
   90 = XC
    4 = IV
 
*/

import Foundation
class IntToRoman {
    func convert(number:Int) -> String {
       
        //17 => 10 + 5 + 1 + 1 => XVII
        //3749 => 1000 + 1000 + 1000 + 500 + 100 + 100 + 40 + 9 => M M M D C C XL IX
        
        let intRomanMap = [
            (1000, "M"),
            (900, "CM"),
            (500, "D"),
            (400, "CD"),
            (100, "C"),
            (90, "XC"),
            (50, "L"),
            (40, "XL"),
            (10, "X"),
            (9, "IX"),
            (5, "V"),
            (4, "IV"),
            (1, "I")
        ]
        
        var results = "";
        var value = number
        
        for (intVal, romanSymbol) in intRomanMap {
            while value >= intVal {
                results += romanSymbol
                value -= intVal
            }
        }
        
        return results
        
    }
}
