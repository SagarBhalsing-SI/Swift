// Custom errors
enum QueueError: Error {
    case queueFull
}

// Custom linked list node
class Node<T> {
    let value: T
    var next: Node<T>?
     
    init(_ value: T) {
        self.value = value
    }
}

// Custom queue data structure
class Queue<T> {
    private var front: Node<T>?
    private var rear: Node<T>?
    private var count: Int = 0
    private let maxSize: Int
    
    // Initialize a fixed-size queue
    init(maxSize: Int) {
        self.maxSize = maxSize
    }
    
    // Enqueue an item with exception handling
    func enqueue(_ item: T) throws {
        if count >= maxSize {
            throw QueueError.queueFull
        }
        
        let newNode = Node(item)
        
        if rear == nil {
            front = newNode
            rear = newNode
        } else {
            rear?.next = newNode
            rear = newNode
        }
        
        count += 1
    }
    
    // Dequeue an item
    func dequeue() -> T? {
        if let frontNode = front {
            front = frontNode.next
            
            if front == nil {
                rear = nil
            }
            
            count -= 1
            return frontNode.value
        }
        
        return nil
    }
    
    // Check if the queue is empty
    func isEmpty() -> Bool {
        return front == nil
    }
    
    // Get the front item without dequeuing
    func peek() -> T? {
        return front?.value
    }
    
    // Get the rear item without dequeuing
    func rearPeek() -> T? {
        return rear?.value
    }
    
    // Get the length of the queue
    func length() -> Int {
        return count
    }
    
    // View the whole queue without dequeuing
    func viewQueue() -> [T] {
        var result: [T] = []
        var current = front
        
        while let currentNode = current {
            result.append(currentNode.value)
            current = currentNode.next
        }
        
        return result
    }
    
    // Search for an item using a closure
    func search(_ condition: (T) -> Bool) -> T? {
        var current = front
        
        while let currentNode = current {
            if condition(currentNode.value) {
                return currentNode.value
            }
            current = currentNode.next
        }
        
        return nil
    }
}

// Example usage
let maxSize = 5
let queue = Queue<Int>(maxSize: maxSize)

try? queue.enqueue(1)
try? queue.enqueue(2)
try? queue.enqueue(3)
try? queue.enqueue(4)
try? queue.enqueue(5)


print(queue.viewQueue())


if let foundItem = queue.search({ $0 == 3 }) {
    print("Item found: \(foundItem)") // Output: Item found: 3
} else {
    print("Item not found")
}

if let foundItem = queue.search({ $0 == 6 }) {
    print("Item found: \(foundItem)")
} else {
    print("Item not found") // Output: Item not found
}
