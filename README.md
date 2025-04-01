# Data Structures in Lua (Roblox)

This repo includes implementations of basic data structures in Lua for Roblox:

- **Stack**
- **Queue**
- **Set**
- **Priority Queue (Pqueue)**

## Usage

### Stack

- **push(e)**: Adds `e` to the stack.
- **pop()**: Removes and returns the top element.
- **top()**: Returns the top element without removing it.
- **clear()**: Clears the stack.
- **isEmpty()**: Returns `true` if the stack is empty.
- **size()**: Returns the number of elements.
- **contains(e)**: Checks if `e` exists in the stack.

Example:
```lua
local stack = Stack.newStack()
stack:push(10)
stack:push(20)
print(stack:pop()) -- 20
```

### Queue

- **enqueue(e)**: Adds `e` to the back.
- **dequeue()**: Removes and returns the front element.
- **front()**: Returns the front element without removing it.
- **clear()**: Clears the queue.
- **isEmpty()**: Returns `true` if the queue is empty.
- **size()**: Returns the number of elements.
- **contains(e)**: Checks if `e` exists in the queue.

Example:
```lua
local queue = Queue.newQueue()
queue:enqueue(10)
queue:enqueue(20)
print(queue:dequeue()) -- 10
```

### Set

- **insert(e)**: Adds `e` if not already present.
- **remove(e)**: Removes `e`.
- **contains(e)**: Checks if `e` exists.
- **size()**: Returns the number of elements.
- **clear()**: Clears the set.

Example:
```lua
local set = Set.newSet()
set:insert(10)
set:insert(20)
set:remove(10)
```

### Pqueue (Priority Queue)

- **enqueue(e, p)**: Adds `e` with priority `p`.
- **dequeue()**: Removes and returns the highest priority element.
- **peek()**: Returns the highest priority element.
- **clear()**: Clears the priority queue.
- **isEmpty()**: Returns `true` if the queue is empty.
- **size()**: Returns the number of elements.

Example:
```lua
local pqueue = Pqueue.newPqueue()
pqueue:enqueue("Task 1", 1)
pqueue:enqueue("Task 2", 2)
print(pqueue:dequeue()) -- Task 2
```

## License

MIT License
