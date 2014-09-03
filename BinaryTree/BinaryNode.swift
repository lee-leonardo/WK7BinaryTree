//
//  BinaryNode.swift
//  BinaryTree
//
//  Created by Leonardo Lee on 9/3/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import Foundation

class BinaryNode {
    var value : Int!
    var left : BinaryNode?
    var right : BinaryNode?
    
    init(value passed: Int) {
        self.value = passed
    }
    
    func addChild(node: BinaryNode) -> BinaryNode {
        return node
    }
}
