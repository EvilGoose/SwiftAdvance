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

let squares = fibs.map {fib  in fib * fib}
squares

print("-----------")


let squares1 = fibs.map { (fib) in
    fib + 20
}
squares1


squares1.min()
squares1.sorted()

print("-----------")

let names = ["Paula", "Elena", "Zoe"]
names.reversed()
var lasNameEndingInA: String?
for name in names.reversed() where name.hasPrefix("P") {
    lasNameEndingInA = name
    break
}
lasNameEndingInA

print("-----------")

var numbers = 0..<10
numbers.filter {num in num % 2 == 0}
numbers.reduce(0, +)

[1, 2, 3].forEach{element in//对每个元素调用方法是使用
    print(element)
    if element > 2 {return}//amazing！
}

let slice = fibs[1..<fibs.endIndex]
slice
type(of: slice)


