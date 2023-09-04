//: Part 3: Collection

// 1. Please initialize an empty array with String data type and assign it to a variable named .myFriends.

var myFriends: [String] = [ ]

// 2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array at once.

myFriends += ["Ian", "Bomi", "Kevin"]

// 3. Oops, I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of myFriends array.

myFriends.append("Michael")

// 4. Because I usually hang out with Kevin, please move Kevin to the beginning of the .myFriends array.

myFriends.swapAt(0, 2)
// 改用 insert 這個 method 可以怎麼做？
myFriends.insert("Kevin", at: 0)

// 5. Use for...in to print all the friends in myFriends array.

for i in myFriends{
    print(i)
}


/* 6. Now I want to know who is at index 5 in the myFriends array, try to find the answer for me. Please explain how you get the answer and why the answer is it.

           Index    0        1       2        3
    目前array裡面 ["Kevin", "Bomi", "Ian", "Michael"]
    目前 Index 只有到 0-3 所以沒辦法找到 5
 */

// 7. How to get the first element in an array?

myFriends.first

// 8. How to get the last element in an array?

myFriends.last

// 9. Please initialize a with keys of type String, value of type Int, and assign it to a variable named  myCountryNumber.

var myCountryNumber: [String: Int] = [ : ]

// 10. Please add three values 1, 44, 81 to myCountryNumber for keys ‘US’, ‘GB’, ‘JP’ respectively.

myCountryNumber = [ "US": 1,
                    "GB": 44,
                    "JP": 81 ]

// 11. Change the value of ‘GB’ from 44 to 0.

myCountryNumber ["GB"] = 0

// 12. How to declare an empty dictionary?

// ex:
var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]

// 13. How to remove a key-value pair in a dictionary?

responseMessages [403] = nil
responseMessages.removeValue(forKey: 200)
print(responseMessages)

