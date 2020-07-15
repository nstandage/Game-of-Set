//
//  StyleableProtocol.swift
//  Game of Set
//
//  Created by Nathan on 7/14/20.
//  Copyright © 2020 Nathan. All rights reserved.
//

import Foundation


protocol Styleable {
    var shape: Shapeable { get }
    var color: Colorable { get }
    var shade: Shadable { get }
    var number: Int { get }
    
}


protocol Shapeable {
    var shape: CardStyle { get }
}


protocol Shadable {
    var shadeType: CardShade { get }
}


protocol Colorable {
    var color: CardColor { get }
}



enum CardShape: CaseIterable {
    case Diamond
    case Squiggle
    case Oval
}

enum CardColor: CaseIterable {
    case Red
    case Green
    case Purple
}


enum CardShade: CaseIterable {
    case Solid
    case Striped
    case Open
}
