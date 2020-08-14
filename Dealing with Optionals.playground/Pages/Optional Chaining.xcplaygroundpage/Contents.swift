/*:
 [< Previous](@previous)           [Home](Introduction)
 
 ## Optional Chaining
 
Optional chaining is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil. If the optional contains a value, the property, method, or subscript call succeeds; if the optional is nil, the property, method, or subscript call returns nil. Multiple queries can be chained together, and the entire chain fails gracefully if any link in the chain is nil.

 */
class Parent {
    var name: String
    var child: Child?
    init(name: String) {
        self.name = name
    }
}

class Child {
    var name: String
    var pet: Pet?
    init(name: String) {
        self.name = name
    }
}
class Pet {
    var name: String?
}


code(for: "Optional Chaining 1") {
    let father = Parent(name: "Stewart")
//    var childName = father.child?.name ?? "no child"
//    print("child name is \(childName)")
//    father.child?.name = "Aidan"
//    childName = father.child?.name ?? "no child"
//    print("child name is \(childName)")
    let son = Child(name: "Aidan")
    father.child = son
    let childName = father.child?.name ?? "no child"
    print("child name is \(childName)")
    let pet = Pet()
    son.pet = pet
//    pet.name = "Rupert"
//    son.pet?.name = "Rupert"
    father.child?.pet?.name = "Rupert"
    print("pet name is \(pet.name ?? "No pet")")
}

code(for: "Optional Chaining 2") {
    let mother = Parent(name: "Kathryn")
    let daughter = Child(name: "Ali")
    mother.child = daughter
    
    guard let _ = mother.child else {
        print("No child")
        return
    }

    let pet = Pet()
    pet.name = "Toby"
    mother.child!.pet = pet
    print("\(daughter.name)'s pet's name is \(pet.name!)")
}

/*:
 
 [< Previous](@previous)           [Home](Introduction)
 */
