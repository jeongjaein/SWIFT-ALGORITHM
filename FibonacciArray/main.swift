//
//  main.swift
//  FibonacciArray
//
//  Created by 정재인 on 2020/03/30.
//  Copyright © 2020 정재인. All rights reserved.
//


var fibonacciArray : [Int] = []

//n개짜리 피보나치수열을만듬
func makeFibonacciArray(n : Int){
    
    fibonacciArray.append(0)
    fibonacciArray.append(1)
    
    for i in 2...n{
        fibonacciArray.append(fibonacciArray[i-1]+fibonacciArray[i-2])
    }
}

//k번째 피보나치수열의 값을 알려줌
func findFibonacciNumber(k : String){
    let userInput = Int(k)
    
    if let a = userInput{//optional때매 바인딩
        print("------------------")
        print("\(a)번째 피보나치 수열의 값은\(fibonacciArray[userInput!])입니다")}
        print("------------------")
    
    
}




makeFibonacciArray(n: 20)
print("알고싶은 피보나치수열의 인덱스를 입력하세요 : ")
findFibonacciNumber(k: readLine()!)



