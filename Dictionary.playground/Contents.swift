
//: Playground - noun: a place where people can play

import UIKit


enum Setting {
    case text(String)
    case int(Int)
    case bool(Bool)
}

let defaultSettings:[String:Setting] = [
    "Air plane" : .bool(true),
    "Name" : .text("My iPhone"),
]

defaultSettings["Name"]

var localSettings = defaultSettings
localSettings["Name"] = .text("Mein iPhone")
localSettings["Do Not Disturb"] = .bool(true)

let oldName = localSettings.updateValue(.bool(false), forKey: "Do Not Disturb")
localSettings.updateValue(.text("New iPhone"), forKey: "Name")
localSettings
oldName

extension Dictionary{
    mutating func merge<S>(_ other: S)
        where S:Sequence, S.Iterator.Element == (key:Key, value: Value) {
            for(k, v) in other {
                self[k] = v
            }
    }
}

//添加新的元素
extension Dictionary {
    init<S:Sequence>(_ sequence:S)
        where S.Iterator.Element == (key:Key, value:Value){
            self = [:]
            self.merge(sequence)
    }
}

//转为某种类型
extension Dictionary {
    func mapValues<NewValue>(transform:(Value) -> NewValue)
        -> [Key:NewValue] {
        return Dictionary<Key,NewValue>(map{(key,value) in
            return(key, transform(value))
        })
    }
}

var settings = defaultSettings
let overriddenSettings:[String:Setting] = ["Name":.text("Jack's Phone")]
settings.merge(overriddenSettings)
settings


let defaultAlarms = (1..<5).map{(key:"Alarm\($0)",value: true)}
let alarmDictionary = Dictionary(defaultAlarms)

let settingsAsStrings = settings.mapValues{setting -> String in
    switch setting {
    case .text(let text):return text
    case .int(let number):return String(number)
    case .bool(let value):return String(value)
    }
}
settingsAsStrings

struct Person {
    var name: String
    var zipCode: Int
    var birthdary: Date
}

extension Person: Equatable{
    static func ==(lhs:Person, rhs:Person) -> Bool {
        return lhs.name == rhs.name
        && lhs.zipCode == rhs.zipCode
        && lhs.birthdary == rhs.birthdary
    }
}

extension Person: Hashable {
    var hashValue: Int {
        return name.hashValue^zipCode.hashValue^birthdary.hashValue
    }
}



