import UIKit

// 1. palindrom

func isPalindrome(myString:String) -> Bool {
    let reverseString = String(myString.reversed())
    if(myString != "" && myString == reverseString) {
        return true
    } else {
        return false
    }
}

print(isPalindrome(myString:"madam"))


// 2.find minimum
// number of denominations

func giveChange(amount:Int)->[Int]{
    let nominals = [1,5,10,20,50]
    var result = [Int]()
    var amount = amount
    
    for i in stride(from: nominals.count-1, to: -1, by: -1) {
    
        while amount >= nominals[i]{
            amount -= nominals[i]
            result.append(nominals[i])
        }
}
  return result
}

print(giveChange(amount: 75))

/// 3.   to Find the smallest positive integer that does not occur in a given sequence.
///
///
///
func solution(_ A :  [Int]) -> Int {
    var counter = [Int: Bool]()
    for i in A {
        counter[i] = true
    }

    var i = 1
    while true {
        if counter[i] == nil {
            return i
        } else {
            i += 1
        }
    }
}
print(solution([1,3,4]))

// 4. Balanced

func checkParentheses(s: String) -> Bool {
    let pairs: [Character: Character] = ["(": ")", "[": "]", "{": "}"]
    var stack: [Character] = []
    for char in s {
        if let match = pairs[char] {
            stack.append(match)
        } else if stack.last == char {
            stack.popLast()
        } else {
            return false
        }
    }
    return stack.isEmpty
}
print(checkParentheses(s: "()"))

// 5.




struct Task {
  private func fib(stearsCount: Int)-> Int {
    if (stearsCount <= 1){
      return stearsCount
    }else {
      return (fib(stearsCount: stearsCount - 1) + fib(stearsCount: stearsCount - 2))
    }
  }
  func countVariants(s: Int)-> Int {
    return fib(stearsCount: s + 1)
  }
}
let task = Task()
task.countVariants(s: 6)




/// 6. დაწერეთ საკუთარი მონაცემთა სტრუქტურა, რომელიც საშუალებას მოგვცემს O(1) დროში წავშალოთ ელემენტი
///
struct Stack {
private var myArray: [String] = []
mutating func push(_ element: String) {
    myArray.append(element)
}
mutating func pop() -> String? {
    return myArray.popLast()
}
func peek() -> String {
    guard let topElement = myArray.last else {return "This stack is empty."}
    return topElement
}
}
var stack = Stack()
stack.peek()
stack.push("Swift Arrays")
stack.push("Swift LinkedList")
stack.push("Swift Stack")
print(stack)
stack.peek()
stack.pop()
stack.pop()
stack.pop()
stack.peek()
stack.pop()






