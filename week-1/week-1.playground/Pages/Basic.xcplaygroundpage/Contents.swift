//: Part 2: Basic
/*
 1. Please explain the difference between let and var .
    let 用於定義常量，定義完後不能修改。
    var 用於定義變量，可以修改。

 2. In Swift, we usually define a variable through the syntax as below:
    Var x: Int = 10
    We use the formula: 2 * radius * pi to calculate the circumference. Now, please define a variable pi and assign a value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be.
 */

    let pi: Double = 3.14159265359
    // 圓周率是固定的3.1415所以使用 let 比較合適

/*
 3. Declare two constants x and y of type Int then assign any value to them. After that,please calculate the average of x and y and store the result in a constant named average .
 */

let x: Int = 10
let y: Int = 4
let average: Int = (x+y)/2
print(average)

/*
 4.Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
    ● Please solve this problem so that we can put the average in the record system.
    ● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
        
 */

let average2 = (Double(x) + Double(y)) / 2.0
print(average2)

// (10 / 3) 是正整數 適合使用 Int 類型
// (10.0 / 3.0) 是浮點數 適合使用 Double 類型

/*
 5. Declare two constants that values are 10 and 3 each, then please calculate the
    remainder and save the result in a constant named remainder.
 */

let a = 10
let b = 3
let remainder = a % b


/*
 6. Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the type annotation.
 */

var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

/*
 7. What is Type Inference in Swift?
    Swift 會根據我們輸入的類型去找出適當的型別，像是true or false 二選一的答案很明顯就是Bool類型，所以即便我們沒有寫出型別 Swift 還是會幫我們判斷

 8. What is the issue about this piece of code?

    var phoneNumber = 0987654321
    phoneNumber = "Hello world."
    雖然 var 可以重新指定但是只能改成相同型別的物件
 
 9. Compound assignment operators are very useful when programming.
    Please declare a variable   with initial value 22000, and use unary plus operator
    adding 28000 to salary, so it will be 50000 after this process.
 */

var salary = 22000
salary += 28000
print(salary)

/*
 10. You should notice that ‘=’ has a different meaning in programming. In the real world, .‘=’ means equal while in programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant.
    Now please write down the Equality operator in Swift.
 
    swift中的相等運算符號"=="  ex: a == b
 */
