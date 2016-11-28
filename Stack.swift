class Stack<T> {
    var list = [T]()
    let maxSize = 20
    
    func isEmpty() -> Bool {
        return list.count == 0
    }
    func isFull() -> Bool {
        return list.count >= maxSize
    }
    
    func push(_ node: T) {
        if isFull() {
            print("Stack full")
        }
        else {
            list.insert(node, at: 0)
        }
    }
    
    func pop() -> T? {
        if isEmpty() {
            print("Stack is empty")
            return nil
        }
        return list.remove(at: 0)
    }
    
    func peek() -> T? {
        if isEmpty() {
            print("Stack is empty")
            return nil
        }
        return list[0]
    }
    
    func display() {
        print(list)
        print("----------------")
    }
}

var stackInt = Stack<Int>()
stackInt.display()

stackInt.push(5)
stackInt.display()

print(stackInt.pop() ?? "")
stackInt.display()


stackInt.push(6)
stackInt.push(7)
stackInt.push(8)
stackInt.display()

print(stackInt.peek() ?? "")
stackInt.display()

var newStack = Stack<Int>()
print(newStack.pop() ?? "")

print(newStack.peek() ?? "")