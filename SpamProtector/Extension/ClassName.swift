//
//  ClassName.swift
//  SpamProtector
//
//  Created by Jinsu Gu on 2021/05/11.
//
//  Use when class name is required

import Foundation

protocol ClassName {
    
}

extension ClassName {
    static var className : String {
        var name = String(describing: type(of: Self.self))
        name.removeLast(5) //remove '.type' at last of string
        return name
    }
    
    var className : String {
        var name = String(describing: type(of: Self.self))
        name.removeLast(5) //remove '.type' at last of string
        return name
    }
}
