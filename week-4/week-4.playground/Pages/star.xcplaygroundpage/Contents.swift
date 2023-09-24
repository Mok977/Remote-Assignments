//4. (Advanced) Please complete the following function that prints a pyramid made of asterisks.

func printPyramid(layers: Int) {
    if layers < 1 {
        return
    }
    
    for i in 1...layers {
        for _ in 1...(layers - i) {
            print(" ", terminator: "")
        }
        
        for _ in 1...(2 * i - 1) {
            print("*", terminator: "")
        }
        
        print()
    }
}

printPyramid(layers: 5)
