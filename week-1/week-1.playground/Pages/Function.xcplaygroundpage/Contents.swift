//: Part 5: Function
/*
 1. What are the return types in the following statements?
 func birthday( ) -> String { }
 func payment( ) -> Double { }
 
 birthday 回傳types是 String
 payment 回傳types是 Double
 */

/*
 2. Please declare a function named multiply with two arguments a and b . This function won’t return any value and will only print out the result of a * b . Be noticed that we want to give the argument b a default value of 10.
 */
print("Q2.--------------------")

func multiply (a: Int, b: Int = 10){
    print(a*b)
}

/*
 3. What’s the difference between argument label and parameter name in a function?
 
        argument label -> 外部名字 呼叫 function 時的參數名
        parameter name -> 內部名字 function 裡存取的參數名
 */
print("Q3.--------------------")

func birthday(personName: String) -> String {
                // parameter name: personName
    return "Happy birthday \(personName) !"
}
// argument label: personName
birthday(personName: "Pocky")

/*
 4. Please declare a function named greet with person as an argument label and name as a parameter name. This greet function will return a String. For example, if you call the function greet like this: greet(person: "Luke") It will return the string: “Hello, Luke”.
 */
print("Q4.--------------------")

func greet(person: String) -> String{
    return "Hello, \(person) ."
}
greet(person: "Luke")

