//: Part 1: Object-Oriented Swift

// 1. Declare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”


enum Gender {
    case male, female, unassign
}

class Animal {
    // property
    let gender: Gender
    init(gender: Gender){        // init 執行初始化 value
        self.gender = gender     // self. 引用當前實體屬性 -> enum Gender
    }
    func eat(){
        print("I eat everything")
    }
}

let thisAnimal = Animal(gender: .male)  // 生成一個實體(instance)

thisAnimal.eat()


// 2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.

class Elephant: Animal {
    override func eat() {
        print("I eat apple")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat horse")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat grass")
    }
}

// 3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger , elephant , and horse are instances of class Tiger, Elephant, and Horse respectively.

class Zoo {
var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}
let elephant = Elephant(gender: .male)
let tiger = Tiger(gender: .female)
let horse = Horse(gender: .unassign)

let zoo = Zoo(weeklyHot: Tiger(gender: .female))

zoo.weeklyHot = elephant
zoo.weeklyHot = tiger
zoo.weeklyHot = horse

/*  4.What is an instance? What does Initilizer do in Class and Struct?
     - What is an instance?
        先需要生成一個特定型別(類別、結構或列舉)的實體，才能使用這個實體裡的方法
     
     - Initializer do in Class
        Class 會要求一定要用 initializers 來設定初始 value
        ex:
        class Person {
        var name: String
        var age: Int
        }
        let thisPerson = Person(name: "Amy", age: 18)
        // 運行失敗 顯示 Class 'Person' has no initializers
        需改為-->
         class Person {
             var name: String
             var age: Int

             init(name: String, age: Int) {
                 self.name = name
                 self.age = age
             }
         }
         let thisPerson = Person(name: "Amy", age: 18)
 
     - Initializer do in Struct
        不一定要設定 Initializer，在第一次使用時再賦予它 value 就可以了
        ex:
        struct Person2 {
        var name: String
        var age: Int
        }
        let thisPerson = Person2(name: "Amy", age: 18) // 運行成功

 */


/* 5. What’s the difference between Struct and Class ?
 
     Struct - value types, values, copy data, immutable
     Class  - reference types, obiects, share data, mutable
     
     Structure - equal if values are equal
     Class  - unique identities
     
     Struct used - SwiftUI
     Class  used - UIKit
 
     Struct - 是靜態調度(statically dispatched)，在 compile time 就決定好了，運行效率較高，確定沒有       subclass 要 override 的話，就可以用 static 來提升效率
     class - 動態調度(dynamically dispatched)，也就是在 runtime 才被指派，compiler 需要去找到底是       class 或是 subclass 的 method；換句話說就是用 class 可以被 override
 */

/* 6. What’s the difference between reference type and value type ?
 
    - reference type (share data) - class、function、closure (佔記憶體容量較小)
        reference type是 share data，所以當變數等於另一個變數時，它們將儲存同一個記憶體位址，
        此時兩個變數會指到同一個資料
        ex:
         class student {
             var name = "Amy"
             var age = 18
         }

         var student1 = student()      // output: 18
         var student2 = student1
         student1.age = 20
         student1.age                  // output: 20
         student2.age                  // output: 20

         // 因為設定 reference type 的變數等於另一個變數時，它們將儲存同一個記憶體位址，
            此時兩個變數指到同一個資料

    - value type (copy data) - struct、enum、tuple(元組) (佔記憶體容量較大)
        value type 是 copy data 所以每個 value 分別佔據不同的記憶體空間，當我們修改其中
        一個的內容時，並不影響另一個
            ex:
             struct student {
                var name = "Amy"
                var age = 18
             }

             var student1 = student()
             var student2 = student1   // 即使 var student2 = student1
             student1.age = 20         // student1 變更value也不影響student2
             student1.age              // output: 20
             student2.age              // output: 18
             
              // Note: struct function 要修改自己的屬性要加上 mutating 關鍵字
 */



/* 7. What’s the difference between instance method and type method ?
     - instance method
        呼叫和修改 instance 、與 instance 需求相關的屬性或函數的方法
         ex:
         // 定義了 3 instance methods, increment(), increment（By： Int）和 reset（）
         class Counter {
             var count = 0
          
             func increment() {
                 count += 1
             }
          
             func increment(by amount: Int) {
                 count += amount
             }
          
             func reset() {
                 count = 0
             }
         }
         // 呼叫和修改 instance
         let counter = Counter()         // output: count = 0
         counter.increment()             // output: count = 1
         counter.increment(by: 5)        // output: count = 6
         counter.reset()                 // output: count = 0
 
 - type method
     Type methods use the static keyword. method 指向自己，因此它們不能更改類型內的任何 value
         ex:
         class University {
             var name: String
             var founded: Int
             static var people = 10000
             
             init(name: String, founded:Int){
                 self.name = name
                 self.founded = founded
             }
             
             func changeName(newName:String){
                 self.name = newName
             }
             
             func changeFoundedYear(newYear:Int){
                 self.founded = newYear
             }
             
             func printInfo(){
                 print("The name of university is \(self.name), it was founded in the year \(self.founded) and the total population of all universities are  \(University.people) ")
             }
             // 用"static"來宣告一個 type method
             static func leave(){
                 self.people -= 1
                 print(people)
             }
             
         }

         var UniversityA = University(name: "A", founded: 1920)
         var UniversityB = University(name: "B", founded: 2000)
         // type method 是使用'.'來調用和訪問 如果要更改裡面的 value 要從Type method裡面執行
         University.leave()
         University.people
 */

/* 8. What does self mean in an instance method and a type method respectively?
    self appears in an initializer or method of a class, structure or enumeration
     - instance method
     instance method 指向 instance
     - type method
        type method 指向自己本身的 value
*/











