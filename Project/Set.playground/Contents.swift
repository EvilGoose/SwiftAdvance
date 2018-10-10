//: Playground - noun: a place where people can play

import UIKit

let naturals:Set = [1, 2, 3, 2]
naturals

let iPods:Set = ["touch", "nano", "mini", "shuffle", "classic"]
let discontinuedIPods: Set = ["mini", "classic"]
let currentIPods = iPods.subtracting(discontinuedIPods)

let touchScreen:Set = ["iPhone", "iPad", "touch", "nano"]
let iPodsWithTouch = iPods.intersection(touchScreen)

let devices:Set = iPods.union(iPods)

var indices = IndexSet()
indices.insert(integersIn: 1..<5)
indices.insert(integersIn: 11..<15)
let evenIndices = indices.filter{$0%2 == 0}
evenIndices

extension Sequence where Iterator.Element:Hashable {
    func unique() -> [Iterator.Element] {
        var seen:Set<Iterator.Element> = []
        return filter{
            if seen.contains($0) {
                return false
            }else {
                seen.insert($0)
                return true
            }
        }
    }
}

[1,2,3,12,1,3,4,5,6,4,6].unique()


//====================range====================

let singleDigitNumber = 0 ..< 10
let lowercaseLetters = Character("a")...Character("z")
singleDigitNumber.map{$0*$0}







