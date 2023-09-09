//: Part 2: Enumerations and Optionals in Swift

/*
 1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
     ● Please declare an enum named Gasoline to model gasoline.
     ● Every kind of gasoline has its price. Please declare a computed property named price and a method named getPrice separately in Gasoline enum that both will return different prices depending on different gasoline.
     ● Please establish raw values for . The data type of raw value should be String. For example, should be “92”.
     ● Please explain what enum associated value is and how it works.
 */

enum Gasoline: String{  // enumeration definition
    case gasoline92 = "92", gasoline95 = "95", gasoline98 = "98", diesel = "diesel"
    // property 返回特定價格
    var price: Int {
        // switch 根據 enum 確定價格
        // enum 的可變方法可以把 self 設置為同一 enum 類型中不同的成員
        switch self {
            case .gasoline92:
                return 100          // 回傳 gasoline92 price
            case .gasoline95:
                return 150          // 回傳 gasoline95 price
            case .gasoline98:
                return 200          // 回傳 gasoline98 price
            case .diesel:
                return 250          // 回傳 diesel price
        }
    }
    func getprice() -> Int {        // Method 方法回傳 price 的 value
        return self.price
    }
}

let gas = Gasoline.gasoline92              // 把 enum 變成實例
let gasolinePrice = gas.price              // 使用 property 取出 price
let gasolineGetPrice = gas.getprice()      // 使用 Method 取出 price

print("92的價錢是= \(gasolinePrice)")       // output



/*
 2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the
     value of a will be nil or Int . You should have learned how to deal with Optional.
    ● People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
 */
// class Pet with name property
class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
// class People with pet property
class People {
    var pet: Pet?
    
    init(pet: Pet?) {
        self.pet = pet
    }
}
    

/* Note: guard let 的 else { } 程式將在 optional 無value時執行
         跟 if let 相反，if let 的 { } 程式將在 optional 有value時執行
         guard let 後的常數可在 guard let else { } 後繼續使用
         if let 後的常數只能在 if let 的 { } 裡使用
*/

// ● Please create a People instance. Use guard let to unwrap the pet property and print its name.
// create a People instance
let petName = Pet(name: "Saki")
let myPet = People(pet: petName)

// Use guard let to unwrap the pet property and print its name
func petProperty(person: People) {
    // guard let 是為了防止可選值，並在可選值為 nil 時提前退出
    guard let myPetName = person.pet?.name else {
        print("No pet")
        return
    }
    print("My pet name: \(myPetName)")
}
// 呼叫 func peint 寵物的名字
petProperty(person: myPet)

// ● Please create another People instance. Use if let to unwrap the pet property and print its name.

func petProperty2(person: People){
    if let myPetName2 = person.pet?.name {
        print("My pet name: \(myPetName2)")
    }else{
        print("No pet")
    }
}
petProperty2(person: myPet)
