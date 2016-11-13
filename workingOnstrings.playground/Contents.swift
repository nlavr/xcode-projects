//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, "

var newString = str + "Nikita"

for character in newString.characters {
    print(character)
}


let newTypeString = NSString(string: newString)

newTypeString.substring(to: 5)

newTypeString.substring(from:4)

NSString(string:newTypeString.substring(from:6)).substring(from:1)

newTypeString.substring(with: NSRange(location: 7, length: 6))


if newTypeString.contains("Nikita") {

    print("newTypeString contains Nikita!")
}



newTypeString.components(separatedBy: " ")

newTypeString.uppercased

newTypeString.lowercased

