/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## Optional Binding with `guard`
 
Swift's guard keyword lets us check if an optional exists and exits the current scope if it doesn't, which makes it perfect for early returns in methods.

 */
code(for: "guard") {
    guard let number = randomOptionalInt() else {
        print("No number was generated")
        return
    }
    print("The number is \(number)")
}

code(for: "Multiple guard") {
    // Can only submit if all values are not optional
    func submit(name:String?, city: String?, prov_state: String?) -> String {
        guard let name = name else {
            return "Missing name"
        }
        guard let city = city else {
            return "Missing city"
        }
        guard let prov_state = prov_state else {
            return "Missing province/state"
        }
        return """
            name: \(name)
            city: \(city)
            prov/state" \(prov_state)
        """
    }
    let submission = submit(name: "Stewart", city: "Vancouver", prov_state: "BC")
    print(submission)
}

/*:
 
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
