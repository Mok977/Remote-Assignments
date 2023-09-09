//: Part 3: Protocol in Swift
//1. Declare a struct Person with a name property type String and a protocol name PoliceMan . There is only one method arrest Criminals with no argument in the protocol.

// protocol 協定可被 class、struct、或 enum 類型採納以提供所需功能的具體實現
protocol PoliceMan{
    func arrestCriminals()
}

// 2. Make struct Person conform to PoliceMan protocol

struct Person: PoliceMan {
    var name: String

    func arrestCriminals() {
        print("\(name) is arresting criminals.")
    }
}

//3. Declare a protocol ToolMan with a method fixComputer that has no argument and return void.

protocol ToolMan {
    func fixComputer()
}

//4. Add a property toolMan to the struct Person with data type ToolMan.

// Update struct Person
struct person {
    var name: String
    var toolMan: ToolMan?
    
    func arrestCriminals() {
        print("\(name) is arresting criminals.")
    }
}
//5. Declare a struct named Engineer that conforms to the ToolMan protocol.

struct Engineer: ToolMan{
    func fixComputer() {
        print("fix the computer !")
    }
}

//6. Create a Person instance with the name “Steven” and also create the relative data you need to declare this instance.

// Create Person instance
let steven = person(name: "Steven", toolMan: Engineer())
// call toolMan
steven.toolMan?.fixComputer()
// call arrestCriminals()
steven.arrestCriminals()
