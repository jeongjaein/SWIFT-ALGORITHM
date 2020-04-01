//
//  GoldbachPosition.swift
//  FibonacciArray
//
//  Created by 정재인 on 2020/04/01.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

var count = 0
var realSosuArray : [Int] = []
var gbarry1: [Int] = []
var gbarry2: [Int] = []
var index : Int = 0
var Min : Int = 0
var Max : Int = 0


func GoldbachPosition(){
    realSosuArray.append(2)
    realSosuArray.append(3)
    
    var n = Int(readLine()!)!
    var sosuIndex  = 0
    for i in 4...n{
        test(i: i,sosuArray: realSosuArray)
    }
    
    
    for i in 0...realSosuArray.count-2{
        for j in 0...realSosuArray.count-2{
            if realSosuArray[i] + realSosuArray[j] == n{
                gbarry1.append(realSosuArray[i])
                gbarry2.append(realSosuArray[j])
            }
            else{
                
            }
        }
        
    }
    
    for i in 0...gbarry1.count-1{
        
        if gbarry1[i] > gbarry2[i]{
            if Max < gbarry1[i] - gbarry2[i]{
                Max = gbarry1[i] - gbarry2[i]
                index = i
            }
        }
    }
    
    print("\(gbarry1[index]),\(gbarry2[index]) 가 골드바흐 포지션입니다.")
    
}




func test(i : Int,sosuArray : [Int]){
    
    if i % sosuArray[count] == 0{
        count = 0
    }
    else{
        count += 1
        
        if count < sosuArray.count{
            test(i : i,sosuArray: sosuArray)
        }
        else {
            
            realSosuArray.append(i)
            print(i)
            count = 0
        }
    }
}
