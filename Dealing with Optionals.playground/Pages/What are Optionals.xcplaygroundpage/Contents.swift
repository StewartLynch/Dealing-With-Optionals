/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## What are Optionals
An optional represents two possibilities: Either there is a value, and by unwrapping the optional you can access that value, or there isn’t a value at all.

*/
code(for: "Optional values") {
    var dogName:String? = "Rupert"
    print("My dog's name is \(dogName)")
    
    dogName = nil
    print("My dog's name is \(dogName)")
}

code(for: "Force Unwrapping") {
    var dogName:String? = "Rupert"
    print("My dog's name is \(dogName!)")
    
    dogName = nil
    if dogName != nil {
        print("My dog's name is \(dogName!)")
    }
}

code(for: "Do I get an integer") {
    let number = randomOptionalInt()
    if number != nil {
        print("My number is \(number!)")
    } else {
        print("No number was provided")
    }
}

/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
