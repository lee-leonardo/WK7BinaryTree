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
    var parent : BinaryNode?
    var left : BinaryNode?
    var right : BinaryNode?
    
    init(value passed: Int) {
        self.value = passed
    }
    convenience init(value passed: Int, parent: BinaryNode) {
        self.init(value: passed)
        self.parent = parent
        
    }
    
    func addNode(node passed: BinaryNode, parent: BinaryNode?) {
        if parent != nil {
            passed.parent = parent
        }
        
        if passed.value > self.value {
            if let left = self.left {
                left.addNode(node: passed, parent: self)
            } else {
                self.left = passed
            }
        } else if passed.value < self.value {
            if let right = self.right {
                right.addNode(node: passed, parent: self)
            } else {
                self.right = passed
            }
            
        }
    }
}
