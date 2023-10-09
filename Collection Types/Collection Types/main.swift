//
//  main.swift
//  Collection Types
//
//  Created by Ahmet Erkut on 9.10.2023.
//

import Foundation

// MARK: Array
///In Swift, an array is a data structure enclosed in square brackets and contains a list of elements separated by commas. Elements within an array can be accessed using a specific index. Here are more details about an array in Swift:

//Array Declaration:
var numbers = [10,20,30]
var fruits = [String]() //Empty Array

// Add Data
fruits.append("Apple")  // 0
fruits.append("Banana") // 1
fruits.append("Cherry") // 2
print(fruits)           // ["Apple", "Banana", "Cherry"]

// Update Data
fruits[0] = "New Apple" // "Apple" -> "New Apple"
print(fruits)           // ["New Apple", "Banana", "Cherry"]

// Insert
fruits.insert("Orange", at: 1)  // Will add Orange at 1 index
print(fruits)                   // ["New Apple", "Orange", "Banana", "Cherry"]

// Read Data
print(fruits[2])    // "Banana"
let f = fruits[0]
print(f)            // "New Apple"

print("Size: \(fruits.count)")              //Size: 4
print("Is Empty Control: \(fruits.isEmpty)")//Is Empty Control: false

//Array with loops:

for fruit in fruits {
    print("Result 1: \(fruit)") //"Result 1: New Apple Result 1: Orange Result 1: Banana Result 1: Cherry"
}

for (index,fruit) in fruits.enumerated() {
    print("\(index). -> \(fruit)") //"0. -> New Apple 1. -> Orange 2. -> Banana 3. -> Cherry"
}

fruits.remove(at: 1)// will remove 1 index item
print(fruits)       // ["New Apple", "Banana", "Cherry"]

fruits.removeAll()  // will remove all items
print(fruits)       // []


/// Object Oriented
class Students {
    var no: Int?
    var name: String?
    var grade: String?
    
    init(no: Int, name: String, grade: String) {
        self.no = no
        self.name = name
        self.grade = grade
    }
}

var std1 = Students(no: 200, name: "Zeynep", grade: "9C")
var std2 = Students(no: 300, name: "Ahmet", grade: "11Z")
var std3 = Students(no: 100, name: "Beyza", grade: "12A")

var studentsList = [Students]()
studentsList.append(std1)
studentsList.append(std2)
studentsList.append(std3)

for s in studentsList {
    print("No: \(s.no!) - Name: \(s.name!) - Grade: \(s.grade!)")
}

//Filtering
var f1 = studentsList.filter({ $0.no! > 100 && $0.no! < 250 }) // Filters students with numbers between 100 and 250
print("Filter 1")
for s in f1 {
    print("No: \(s.no!) - Name: \(s.name!) - Grade: \(s.grade!)") // "No: 200 - Name: Zeynep - Grade: 9C"
}

var f2 = studentsList.filter({ $0.name!.contains("yz") }) // Filters students who has "yz" in name
print("Filter 2")
for s in f2 {
    print("No: \(s.no!) - Name: \(s.name!) - Grade: \(s.grade!)") // "No: 100 - Name: Beyza - Grade: 12A"
}

//Sorting
var s1 = studentsList.sorted(by: { $0.no! > $1.no! })
print("Sorting the number of students from descending")
for s in s1 {
    print("No: \(s.no!) - Name: \(s.name!) - Grade: \(s.grade!)")
}

var s2 = studentsList.sorted(by: { $0.no! < $1.no! })
print("Sorting the number of students from ascending")
for s in s2 {
    print("No: \(s.no!) - Name: \(s.name!) - Grade: \(s.grade!)")
}

var s3 = studentsList.sorted(by: { $0.name! > $1.name! })
print("Sorting the name of students from descending")
for s in s3 {
    print("No: \(s.no!) - Name: \(s.name!) - Grade: \(s.grade!)")
}

var s4 = studentsList.sorted(by: { $0.name! < $1.name! })
print("Sorting the name of students from ascending")
for s in s4 {
    print("No: \(s.no!) - Name: \(s.name!) - Grade: \(s.grade!)")
}


//MARK: Set
///In the Swift programming language, the "Set" data structure is used to store a collection of unique values. Sets are different from other collection types like arrays or dictionaries because each element can only appear once. Sets are useful for performing operations similar to mathematical set operations.
///Unique Values: Sets are a collection type where each value can only appear once. You cannot add the same element more than once.
///Unordered: Elements in Sets are stored in an unordered manner. This means there is no guarantee that the elements will be stored in the order they were added.
///O(1) Access: Sets provide O(1) complexity for accessing elements. This means that the performance of a Set is not dependent on the number of elements it contains.
///Adding and Removing Elements: Adding new elements to Sets and removing elements is straightforward. When adding an element to a Set, it checks whether the same element already exists in the Set.

// Set Declaration
var fruits2 = Set<String>()

// Add Data
fruits2.insert("Apple")
fruits2.insert("Orange")
fruits2.insert("Banana")
print(fruits2) // Elements are indexed in a mixed manner so output is looks different from appended

fruits2.insert("Amasya Apple")
print(fruits2)

for fruit in fruits2 {
    print("Result: \(fruit)")
}

for (index,fruit) in fruits2.enumerated() {
    print("\(index). -> \(fruit)")
}

print("Size: \(fruits2.count)") // Size: 4
print("Is Empty: \(fruits2.isEmpty)") // Is Empty: false

fruits2.remove("Apple")
print(fruits2)

fruits2.removeAll()
print(fruits2)


//MARK: Dictionary - HashMap - Map
///Dictionary is a collection type that allows you to store key-value pairs. Each value in the dictionary is associated with a unique key, and you can use the key to retrieve the corresponding value. Dictionaries are commonly used to represent mappings between keys and values, making them a powerful data structure for various tasks.

// Dictionary Declaration
var cities = [Int:String]()

// Add Data
cities[53] = "Rize"
cities[34] = "Istanbul"
cities[26] = "Eskisehir"
print(cities) //[34: "Istanbul", 26: "Eskisehir", 53: "Rize"]

// Read Data
print(cities[53]!)

// Update Data
cities[26] = "New Eskisehir"
print(cities[26]!)

for (key, value) in cities {
    print("\(key): \(value)")
}

// Delete Data
cities.removeValue(forKey: 26)
print(cities)
