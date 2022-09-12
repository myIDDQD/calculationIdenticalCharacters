//
//  main.swift
//  Сalculation identical characters
//
//  Created by Mykola on 12.09.2022.
//

//MARK: Task link
// https://youtu.be/QLhqYNsPIVo?list=PL6Wui14DvQPySdPv5NUqV3i8sDbHkCKC5&t=923

// input any string
let inputString: String? =  "https://youtu.be/QLhqYNsPIVo?list=PL6Wui14DvQPySdPv5NUqV3i8sDbHkCKC5&t=923"

// dictionary to save values
var dict = [String: Int]()
var resultChar = ""
var resultNum = 0

// check string to nil
if inputString != nil {
    
    // Use Optional Binding and convert string to uppercased type
    if let inputUnwrapString = inputString?.uppercased() {
        
        // loop for saving value
        for char in inputUnwrapString {
            let key = String(char)
            
            // check value in dictionary ? add value : plus value
            if dict.keys.contains(key) == false {
                dict[key] = 1
            } else {
                if dict[key] != nil {
                    dict[key]! += 1
                    if resultNum < dict[key]! {
                        resultNum = dict[key]!
                        resultChar = key
                    }
                }
            }
        }
    }
}

print("In the string most often, exactly \(resultNum) times there is a character \(resultChar)")
