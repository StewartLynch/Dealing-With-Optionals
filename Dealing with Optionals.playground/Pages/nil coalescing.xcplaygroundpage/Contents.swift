/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## nil coalescing operator
 
 
Swift's nil coalescing operator helps you solve the optional unwrapping problem by either unwrapping an optional if it has a value, or providing a default if the optional is empty

 */
code(for: "nil coallescing") {
    let number = randomOptionalInt()
    print("The number is \(number ?? -1)")
}

code(for: "nil coallescing-2") {
    let number = randomOptionalInt() ?? -1
    print("The number is \(number)")
}

code(for: "random word") {
    let word = randomWord()
    print("My word is \(word ?? "No word returned")")
}

code(for: "random word2") {
    let word = randomWord() ?? "No word returned"
    print("My word is \(word)")
}

/*:
 
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
