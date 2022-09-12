//
//  main.swift
//  Сalculation identical characters
//
//  Created by Mykola on 12.09.2022.
//

import Foundation

let inputString: String? = "tesT"

var anscnt = 0
var dict = [String: Int]()

if inputString != nil {
    if let inputUnwrapString = inputString?.lowercased() {
        for now in inputUnwrapString {
            let key = String(now)
            if dict.keys.contains(key) {
                dict[key]! += 1
            } else {
                dict[key] = 1
            }
            
            if let val = dict[key] {
                if val > anscnt {
                    anscnt = val
                }
            }
            
        }
    }
}

print(anscnt)
