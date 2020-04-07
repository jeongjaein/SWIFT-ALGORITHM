//
//  PEtheif.swift
//  FibonacciArray
//
//  Created by 정재인 on 2020/04/07.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var finalStudent = [Int](repeating: 1, count: n)
    
    
    //총 학생 수 n 만큼의 길이의 1로 이루어진 배열을 만든다. ex) n == 5 -> [1,1,1,1,1]
    
    for i in lost{
        finalStudent[i-1] = 0
        
    }
    for i in reserve{
        if finalStudent[i-1] == 0{
            finalStudent[i-1] = 1
        }
        else if i-2 > 0 && finalStudent[i-2] == 0 {
            finalStudent[i-2] = 1
        }
        else if i < finalStudent.count && finalStudent[i] == 0{
            finalStudent[i] = 1
        }
    }
    return finalStudent.reduce(0, +)
}

var lost = [2,4]
var reserve = [3]



func peTheif(){
    print(solution(5, lost, reserve))
//    solution(10,lost,reserve)
}
