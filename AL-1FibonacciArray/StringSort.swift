

import Foundation




//func solution(_ strings:[String], _ n:Int) -> [String] {
//    
//    
//    
//    var sortedArray = strings
//    var tempString : String
//
//    var a : Character
//    var b : Character
//    
//    
//    for j in 0...strings.count-2{
//        
//        for i in 0...strings.count-2-j {
//            
//            a = sortedArray[i][sortedArray[i].index(sortedArray[i].startIndex,offsetBy: n-1)]
//            
//            b = sortedArray[i+1][sortedArray[i+1].index(sortedArray[i+1].startIndex,offsetBy: n-1)]
//            
//            
//            if  a < b {
//                
//            }
//                
//            else if a == b{
//                if sortedArray[i] < sortedArray[i-1]{
//                    
//                }
//                else {
//                    
//                    tempString = sortedArray[i]
//                    sortedArray[i] = sortedArray[i+1]
//                    sortedArray[i+1] = tempString
//                }
//            }
//            else{
//                
//                
//                tempString = sortedArray[i]
//                sortedArray[i] = sortedArray[i+1]
//                sortedArray[i+1] = tempString
//            }
//            
//            
//        }
//    }
//
//    return sortedArray
//}
//
//
//
//var targetArray : [String] = []
//
//func start(){
//    
//    targetArray.append("asddkaesf")
//    targetArray.append("bbgefdsargd")
//    targetArray.append("tbgafvx")
//    targetArray.append("fksbldflgdsa")
//    targetArray.append("sdbcqwe")
//    targetArray.append("tbtfrgfvd")
//    
//    let n = Int(readLine()!)!
//    solution(targetArray,n)
//}
