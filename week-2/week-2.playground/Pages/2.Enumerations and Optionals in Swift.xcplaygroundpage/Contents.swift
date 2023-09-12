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


// ● Please explain what enum associated value is and how it works.
/*
     Associated Value 關聯值（相關值）
     - 使用語法
     enum 列舉名稱 {
          case 成員(參數名稱: 型別)
     }

     或

     enum 列舉名稱 {
          case 成員(型別)
     }
     
     - 如何運作
         enum Barcode {
            // 帶有 (Int、Int、Int、Int) 類型關聯值的 upc 值
             case upc(Int, Int, Int, Int)
            // 帶有 String 類型關聯值的 qrCode 值
             case qrCode(String)
         }
         
        //  creates a new var 分配值到 Barcode.upc 以及加入 associated tuple value (8, 85909, 51226, 3)
         var productBarcode = Barcode.upc(8, 85909, 51226, 3)
        // 原本 Barcode.upc 的 value 會被 new Barcode.qrCode 替換
         productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
        // print(productBarcode) // Output: qrCode("ABCDEFGHIJKLMNOP")
        // 只能存儲其中一個
         
         // 搭配 switch 語句 檢查不同的類型，將每個關聯值提取使用 let, var
         switch productBarcode {
         case let .upc(numberSystem, manufacturer, product, check):
             print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
         case let .qrCode(productCode):
             print("QR code: \(productCode).")
         }
     
     參考: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations/
     https://medium.com/%E5%BD%BC%E5%BE%97%E6%BD%98%E7%9A%84-swift-ios-app-%E9%96%8B%E7%99%BC%E5%95%8F%E9%A1%8C%E8%A7%A3%E7%AD%94%E9%9B%86/enum-%E5%84%B2%E5%AD%98%E7%9B%B8%E9%97%9C%E8%81%AF%E8%B3%87%E6%96%99%E7%9A%84-associated-value-26ab3e061a16
 */


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
