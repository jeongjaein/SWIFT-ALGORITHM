//
//  main.swift
//  FibonacciArray
//
//  Created by 정재인 on 2020/03/30.
//  Copyright © 2020 정재인. All rights reserved.
//


var fibonacciArray : [Int] = []

func makeFibonacciArray(n : Int){
    
    fibonacciArray.append(0)
    fibonacciArray.append(1)
    
    for i in 2...n{
        fibonacciArray.append(fibonacciArray[i-1]+fibonacciArray[i-2])
    }
}

func FindFibonacciNumber(k : String){
    let userInput = Int(k)
    
    if let a = userInput{//optional때매 바인딩
        print("------------------")
        print("\(a)번째 피보나치 수열의 값은\(fibonacciArray[userInput!])입니다")}
    
    
}




makeFibonacciArray(n: 20)
print("알고싶은 피보나치수열의 인덱스를 입력하세요 : ")
FindFibonacciNumber(k: readLine()!)



