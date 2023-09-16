/*1. What is a closure ? How to execute a closure?
closure 無法獨立存在，必須指派給 let 或 var ，或是當成參數傳入 function ； closure 可以根據上下文推測型別，處理抓取所需的內存
 
 語法：
 { (參數) -> 回傳型別 in
     處理邏輯...
 }
 
 */

// function
 func myClosure(param1: Int, add: (Int, Int) -> Int) -> Int {
     return add(param1, 5)
 }
// closure 寫運算式再回傳給func
// 單行運算式 closure 可以通過隱藏 return 關鍵字來隱含返回單行運算式的結果
// let result: Int = myClosure(param1: 10, add: { (param1: Int, param2: Int) -> Int in
//     return param1 + param2 }
// )
// 運算式中可以使用參數名稱縮寫
let result: Int = myClosure(param1: 10, add: { $0 + $1 })
print(result) // return： 15

/*
參考資料：https://franksios.medium.com/ios-closure-%E9%96%89%E5%8C%85-cf8ab16d6efc
 https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures/
*/

//2. Please declare a closure whose input type is Int, output type is Bool. The functionality of this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.

// declare a closure whose input type is Int, output type is Bool
let isOddVerify: (Int) -> Bool = { number in
    number % 2 != 0
}

let number = 3
let isOdd = isOddVerify(number)
print(isOdd)

//3. Please complete the following function that prints a triangle made of asterisks.

func printTriangle(layers: Int) {
    for i in 1...layers {
        // 控制星星
        for _ in 1...i {
            print("*", terminator: "")
        }
        // 換行
        print()
    }
}

// Call the function 指定階數
printTriangle(layers: 5)
