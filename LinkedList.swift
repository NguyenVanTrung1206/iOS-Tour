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
        var node = first
        while node?.next != nil {
            node = node?.next
        }
        return node
    }
    
    func getBeforeLast() -> Node<T>? {
        var node = first
        while node?.next?.next != nil {
            node = node?.next
        }
        return node
    }
    
    func addFirst(_ node: Node<T>) {
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
    
    func deleteFirst() -> Node<T>? {
        if first == nil {
            return nil
        }
        else {
            let temp = first
            first = first?.next
            temp?.next = nil
            return temp
        }
    }
    
    func deleteLast() -> Node<T>? {
        if first == nil {
            return nil
        }
        else if first?.next == nil {
            return deleteFirst()
        }
        else {
            let oldLast = getLast()
            let beforeVariableLast = getBeforeLast()
            beforeVariableLast?.next = nil
            return oldLast
           
        }
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
print("*************")
myList.addLast(Node<Int>(5))
myList.display()

var fist = myList.deleteFirst()
myList.display()
myList.deleteLast()?.displayValue()
print("------")
myList.display()