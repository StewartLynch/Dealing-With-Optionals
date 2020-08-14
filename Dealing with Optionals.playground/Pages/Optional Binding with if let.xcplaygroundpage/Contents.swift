/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## Optional Binding with "if let"
 You use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable. Optional binding can be used with if and while statements to check for a value inside an optional, and to extract that value into a constant or variable, as part of a single action.
 
 */
code(for: "if let") {
//    let number = randomOptionalInt()
    if let number = randomOptionalInt() {
        print("The number is \(number)")
    } else {
        print("No number is generated")
    }

}

code(for: "do try catch") {
    do {
        let number = try spinWheel()
        print("The number is \(number)")
    } catch {
        print("Error: \(error)")
    }
}

code(for: "Optional try") {
    if let number = try? spinWheel() {
        print("The number is \(number)")
    } else {
         print("No number is generated")
    }
}

code(for: "Multiple if let") {
    // Can only submit if all values are not optional
    func submit(name:String?, city: String?, prov_state: String?) -> String {
        if let name = name, let city = city, let prov_state = prov_state {
            return """
                name: \(name)
                city: \(city)
                prov/state: \(prov_state)
            """
        } else {
            return "Missing Information"
        }
    }
    let submission = submit(name: "Stewart", city: nil, prov_state: "BC")
    print(submission)
}

code(for: "Muliple nested if let") {
    func submit(name:String?, city: String?, prov_state: String?) -> String {
        if let name = name {
            if let city = city {
                if let prov_state = prov_state {
                    return """
                        name: \(name)
                        city: \(city)
                        prov/state: \(prov_state)
                    """
                } else {
                    return "missing province/state"
                }
            } else {
                return "missing city"
            }
        } else {
            return "missing name"
        }
    }
    let submission = submit(name: "Stewart", city: nil, prov_state: nil)
    print(submission)
}

/*:
 
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
