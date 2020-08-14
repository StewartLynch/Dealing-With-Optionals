
import Foundation

public func code(for title: String,
                    sampleCode: () -> Void) {
print("""
_____________________________
Results for: '\(title)'
""")
  sampleCode()
}

public func randomOptionalInt() -> Int? {
    Bool.random() ? Int.random(in: 1...10) : nil
}

enum MyError: Error {
    case negativeNumber
    case zero
}

public func spinWheel() throws -> Int {
    let number = Int.random(in: -5...5)
    if number < 0 { throw MyError.negativeNumber }
    if number == 0 { throw MyError.zero}
    return number
}
