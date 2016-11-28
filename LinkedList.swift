//LinkedList
class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(_ value: T) {
        self.value = value
    }
    
    func displayValue() {
        print(value)
    }
}

class LinkedList<T> {
    var first: Node<T>?
    
    func getLast() -> Node<T>? {
        var last = first
        while last?.next != nil {
            last = last?.next
        }
        return last
    }
    
    func addFirst( _ node: Node<T>) {
        if first == nil {
            first = node
        }
        else {
            node.next = first
            first = node
        }
        
    }
    
    func addLast(_ node: Node<T>?) {
        if first == nil {
            first = node
        }
        else {
            let last = getLast()
            last?.next = node
        }
        
    }
    
    func deleteFirst() {
        
    }
    
    func deleteLast() {
        
    }
    
    func display() {
        var iterator = first
        while iterator != nil {
            iterator?.displayValue()
            iterator = iterator?.next
        }
        print("--------------")
    }
    
}

var myList = LinkedList<Int>()
myList.display()

myList.addFirst(Node<Int>(7))
myList.addFirst(Node<Int>(8))
myList.addFirst(Node<Int>(9))
myList.addFirst(Node<Int>(10))
myList.display()

var last = myList.getLast()
last?.displayValue()
myList.addLast(Node<Int>(5))
myList.display()