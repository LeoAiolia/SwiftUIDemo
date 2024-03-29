//
//  CaculatorButtonItem.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2021/3/15.
//  Copyright © 2021 dev-yxr. All rights reserved.
//

import SwiftUI

enum CalculatorButtonItem {
    
    enum Op: String {
        case plus = "+"
        case minus = "-"
        case divide = "÷"
        case multiply = "×"
        case equal = "="
    }
    
    enum Command: String {
        case clear = "AC"
        case flip = "+/-"
        case percent = "%"
    }
    
    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
}

extension CalculatorButtonItem {
    
    var title: String {
        switch self {
        case .digit(let value): return String(value)
        case .dot: return "."
        case .op(let op): return op.rawValue
        case .command(let command): return command.rawValue }
    }
    
    var size: CGSize {
        CGSize(width: 88, height: 88)
    }
    
    var backgroundColorName: String {
        switch self {
        case .digit, .dot: return "digitBackground" case .op: return "operatorBackground"
        case .command: return "commandBackground" }
    }
}

extension CalculatorButtonItem: Hashable {}
