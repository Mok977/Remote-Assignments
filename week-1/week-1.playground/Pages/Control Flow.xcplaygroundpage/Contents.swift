//: Part 4: Control Flow
/*
1. Here is an array:
let lottoNumbers = [10, 9, 8, 7, 6, 5]
Please use For-In loop and Range to print the last three members in the .lottoNumbers.array.
*/

print("Q1.--------------------")

let lottoNumbers = [10, 9, 8, 7, 6, 5]

for i in 3..<lottoNumbers.count {
    print(lottoNumbers[i])
}

/*
 2. Please use a for-in loop to print the results as the images listed below respectively
(through .lottoNumbers.):
[5, 6, 7, 8, 9, 10]
[10, 8, 6]
 */

print("\nQ2.--------------------")

for j in lottoNumbers.reversed() {
    print("list: \(j)")
}

print("\n-----------------------")

// number % 2 等於0成立 進入迴圈
for a in lottoNumbers where a % 2 == 0 {
    print("Number: \(a)")
}

/*
 3. Please use a while loop to solve the Q2.
 */

print("\nQ3.--------------------")

lottoNumbers.count                          // index: [0, 1, 2, 3, 4, 5]
var Q3 = lottoNumbers.count - 1             // 因為 index 是從 0 開始所以要-1
while Q3 >= 0 {                             // 由小排到大所以要從 5 開始遍歷
    print("Q3-1: \(lottoNumbers[Q3])")
    Q3 -= 1
}

print("\n-----------------------")

Q3 = 0                                    // 這次從 0 開始，當前索引 0 = 10
while Q3 < lottoNumbers.count {               // 0 < 6 進入外迴圈
    if Q3 % 2 == 0{                           // 內迴圈 if的判斷式 number % 2 等於0成立 進入陣列
        print("Q3-2: \(lottoNumbers[Q3])")
    }
    Q3 += 1                                   // 跑完後 +1 再繼續迴圈
}


/*
 4. Please use a repeat-while loop to solve Q2.
 */

// repeat-while 迴圈, 最少會執行 1 次

print("\nQ4.--------------------")

var Q4 = lottoNumbers.count - 1
repeat {
    print("Q4-1: \(lottoNumbers[Q4])")
    Q4 -= 1
}while Q4 >= 0

print("\n-----------------------")

Q4 = 0
repeat {
    if Q4 % 2 == 0{
        print("Q4-2: \(lottoNumbers[Q4])")
    }
    Q4 += 1
}while Q4 < lottoNumbers.count


/*
 5. What are the differences between while and repeat-while?
 */
print("\nQ5.--------------------")

// 判斷 i > 10 所以不執行
var Q5 = 10
while Q5 < 10 {
    print("Q5-1: \(Q5)")
    Q5 += 1
}

print("\n-----------------------")

// repeat-while 迴圈, 最少會執行 1 次
Q5 = 10
repeat {
    print("Q5-2: \(Q5)")
    Q5 += 1
}while Q5 < 10

/*
 6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”
 */
print("\nQ6.--------------------")

var isRaining = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
}else{
    print("Although it’s sunny, I still don’t want to work today.")
}

/*
7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director.
Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.
 */
print("\nQ7.--------------------")

var jobLevel = 1

if jobLevel == 1 {
    print("Member")
}else if jobLevel == 2 {
    print("Leader")
}else if jobLevel == 3 {
    print("Manager")
}else if jobLevel == 4 {
    print("Director")
}else {
    print("We don't have this job")
}

print("\n-----------------------")

switch jobLevel {
    case 1: print("Member")
    case 2: print("Leader")
    case 3: print("Manager")
    case 4: print("Director")
    default: print("We don't have this job")
}



