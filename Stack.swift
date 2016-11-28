// Preparing for coding stack with swift

class Book {
    var title: String
    var author: String
    var releasedYear: String
    
    init(_ title: String, _ author: String, _ releasedYear: String){
        self.title = title
        self.author = author
        self.releasedYear = releasedYear
    }
}

class Stack<T> {
    var list = [T]()
    
    func push(_ node: T) {
        list.insert(node, at: 0)
    }
    
    func pop() -> T {   
        return list.remove(at: 0)    
    }
    
    func peek() -> T {
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

print(stackInt.pop())
stackInt.display()


stackInt.push(6)
stackInt.push(7)
stackInt.push(8)
stackInt.display()

print(stackInt.peek())
stackInt.display()