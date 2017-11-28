//: Playground - noun: a place where people can play

import UIKit

let fibs = [0, 1, 1, 2, 3, 5]

var mutableFibs = [0, 1, 1, 2, 3, 5]

mutableFibs.append(8)
mutableFibs.append(contentsOf:[13, 21])
mutableFibs

let x = [1, 2, 3, 4, 5, 6, 7, 8]
var y = x
y.append(4)
x
y

for num in x {
    print(num)
}

print("-----------")

for num in x.dropFirst() {
    print(num)
}

print("-----------")

for num in x.dropLast(3) {
    print(num)
}

print("-----------")

var squared:[Int] = []
for fib in fibs {
    squared.append(fib * fib)
}
squared

print("-----------")

let squares = fibs.map { fib  in
      fib * fib
}





