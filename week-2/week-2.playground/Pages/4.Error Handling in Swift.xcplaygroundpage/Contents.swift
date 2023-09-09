//: Part 4: Error Handling in Swift
/*
 Read the code above first and paste it in the playground file, there is an error inside the code. Please solve the error by adding a piece of code in the file. Call guess(number:) and pass 20 as the argument after you fix the problem.
 */

// 猜數字遊戲
// A type representing an error value that can be thrown.
enum GuessNumberGameError: Error {
    // 代表猜錯了
    case wrongNumber
}
class GuessNumberGame {
    // 玩家目標數字
    var targetNumber = 10
    // Swift使用 throws 相關介紹
    //https://itisjoe.gitbooks.io/swiftgo/content/ch2/error-handling.html
    func guess(number: Int) throws {
        //猜的數字 跟 target是否一致
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}
let game = GuessNumberGame()
do{
    try game.guess(number: 20)
} catch GuessNumberGameError.wrongNumber{
    print("你猜錯了")
} catch {
    print("你答對了！")
}


/* 參考
 https://medium.com/one-two-swift/swift%E5%9F%BA%E7%A4%8E-%E9%8C%AF%E8%AA%A4%E8%99%95%E7%90%86-try-try-try-1339ab450dc6
 https://www.appcoda.com.tw/swift-error-handling/
 */
