
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

public func randomWord() -> String? {
    Bool.random() ? ["Dog", "Cat", "Bird"].randomElement() : nil
}
