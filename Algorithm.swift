//
//  Algo.swift
//  Practice
//
//  Created by Nouman Pervez on 21/09/26.
//

import Playgrounds

#Playground {
    
/*
 Given an array of integers nums and an integer target, return the indices of the two numbers that add up to target.

 There is exactly one valid pair, and you may not use the same element twice.
 The answer can be in any order.
 
 Examples

 twoSum([2, 7, 11, 15], 9) returns [0, 1]
 twoSum([3, 2, 4], 6) returns [1, 2]
 twoSum([3, 3], 6) returns [0, 1]
 
 */
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var seen = [Int: Int]()
        for (index, number) in nums.enumerated() {
            if let j = seen[target - number] {
                return [j, index]
            }
            seen[number] = index
        }
        
        return[]
    }
    
//    let _ = twoSum ([2, 7, 11, 15], 9)
//    let _ = twoSum ([3, 2, 4], 6)
//    let _ = twoSum ([2, 7, 11, 15], 9)
//    let _ = twoSum ([2, 7, 11, 15], 6)
    let a = twoSum([1, 5, 3, 4], 5)
    
    /*
     Let's play it: nums = [2, 7, 11, 15], target 9
     
     Step Card n    Position i    Partner needed (9 − n)    In notebook?    What we do
     1    2         0               7                       No, it's empty    Write 2 → 0
     2    7         1               2                       Yes, 2 → 0    Return [0, 1]

     At step 2, the 7 card asks "is a 2 in my notebook?" The notebook says the 2 was at position 0, so the answer is [0, 1].
     */
}


