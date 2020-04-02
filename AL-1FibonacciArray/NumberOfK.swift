//
//  NumberOfK.swift
//  FibonacciArray
//
//  Created by 정재인 on 2020/04/02.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation




func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answerArray : [Int] = [commands.count]
    for j in 0...commands.count-1{
        let arraySlice = array[commands[j][0]-1...commands[j][1]-1]
        answerArray.append(Array(arraySlice).sorted()[commands[j][2]-1])
        sortedArray.removeAll()
        
    }
    return answerArray
}

var targetArray2 : [Int] = [1,6,5,4,6,4,3,2,1,2,3,4,5,6,7,4,8,0,7,6,5,4,3,2,3,3,1,2,2,3,5,5,6,7,7,8,7,6,5,4,1,3]
var commandsArray : [[Int]] = [[4,8,5],[6,10,4],[2,10,4],[9,14,3]]
var sortedArray : [Int] = []

func NumberOfK(){
    
    print(solution(targetArray2,commandsArray))
    
    
}


