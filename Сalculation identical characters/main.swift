//
//  main.swift
//  Сalculation identical characters
//
//  Created by Mykola on 12.09.2022.
//

import Foundation

// input any string
let inputString: String? = "tesT"

// dictionary to save values
var dict = [String: Int]()

// check to nil
if inputString != nil {
    // string to lowercase type
    if let inputUnwrapString = inputString?.lowercased() {
        // loop for saving value
        for now in inputUnwrapString {
            let key = String(now)
            if dict.keys.contains(key) {
                dict[key]! += 1
            } else {
                dict[key] = 1
            }
        }
    }
}

print(dict.values.max()!)
