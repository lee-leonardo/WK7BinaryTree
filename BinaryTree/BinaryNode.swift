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
    
    func addNode(node passed: BinaryNode) {
        if passed.value > self.value {
            if let left = self.left {
                left.addNode(node: passed)
            } else {
                self.left = passed
            }
        } else if passed.value < self.value {
            if let right = self.right {
                right.addNode(node: passed)
            } else {
                self.right = passed
            }
            
        }
    }
}
