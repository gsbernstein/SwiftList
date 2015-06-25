# SwiftList
A simple swift class for formatting lists of strings. Because I needed an Oxford comma.

##Installation
Just add SwiftList.swift to your project.

##Usage
SwiftList has one method — `listify`.

`listify` takes an array of strings, a list type, and a an optional string to use as the "and" in your list. 

```swift
let arrayOfStrings = ["Bob", "Mo", "Jenny", "Franny", "Ramona"]

let oxfordAnd = SwiftList.listify(array: arrayOfStrings, listType: .OxfordComma, andString: "and")
//Outputs
"Bob, Mo, Jenny, Franny, and Ramona"

let oxfordAmpersand = SwiftList.listify(array: arrayOfStrings, listType: .OxfordComma, andString: "&")
//Outputs
"Bob, Mo, Jenny, Franny, & Ramona"

let allAndsPlus = SwiftList.listify(array: arrayOfStrings, listType: .AllAnds, andString: "+")
//Outputs
"Bob + Mo + Jenny + Franny + Ramona"
```

###List Types
List types are defined by a `ListType` enum within the class. There are three list types:
* `.CommasOnly` - performs a basic `join' on the array, using commas
  * "One, Two, Three, Four" 
* `.OxfordComma` — inserts an "and" before the last item in the list
  * "One, Two, Three, and Four"
* `.AllAnds` — performs a `join` with your specified `andString`
  * "One and Two and Three and Four"
