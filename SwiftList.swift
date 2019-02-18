//
//  SwiftList.swift
//
//  Created by Nick Fedoroff on 6/25/15.
//  Copyright (c) 2015 Nick Fedoroff. All rights reserved.
//

import Foundation

public class SwiftList {
    
    enum ListType {
        case CommasOnly
        case OxfordComma
        case AllAnds
    }
    
    class func listify(#array: [String], listType: ListType, andString: String?) -> String {
        
        switch listType {
        case .CommasOnly:
            return join(", ", array)
        case .OxfordComma:
            var newArray = array
            var lastItem = newArray.removeLast()
            var allButLast = join(", ", newArray)
            
            if array.count < 2 {
                return array.first!
            } else if array.count < 3 {
                return join(" \(andType!) ", array)
            } else {
                return join(", \(andType!) ", [allButLast, lastItem])
            }
            
        case .AllAnds:
            return join(" \(andType!) ", array)
        default:
            break
        }
    }
}
