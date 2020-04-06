//
//  TowerSignal.swift
//  FibonacciArray
//
//  Created by 정재인 on 2020/04/06.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation


func solution(_ heights:[Int]) -> [Int] {
    
    var answer : [Int] = []
    for i in (1...heights.count-1).reversed(){
        for j in(0...i-1).reversed(){
            if heights[i] < heights[j]{
                answer.append(j+1)
                break
            }
            if j == 0{
                answer.append(0)
            }
        }
    }
    answer.append(0)
    return answer.reversed()
}



var firstTop : [Int] = [6,9,5,7,4]
var secondTop : [Int] = [3,9,9,3,5,7,2]
var thirdTop : [Int] = [1,5,3,6,7,6,5]

func towerSignal(){
    print(solution(firstTop))
        print(solution(secondTop))
        print(solution(thirdTop))
}
