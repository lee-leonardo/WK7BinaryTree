//
//  BinarySearchTree.swift
//  BinaryTree
//
//  Created by Leonardo Lee on 9/3/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import Foundation

class BinarySearchTree {
    var head : BinaryNode?
    
    init(){}
    
    func addValue(value passed: Int) {
        if self.head == nil {
            self.head = BinaryNode(value: passed)
        } else {
            findValue(self.head!, value: passed)
        }
    }
    
    func findValue(node : BinaryNode, value search: Int) -> Int {
        if search != node.value {
            if search > node.value {
                if let right = node.right {
                    findValue(right, value: search)
                } else {
                    node.right = BinaryNode(value: search)
                }
            } else if search < node.value {
                if let left = node.left {
                    findValue(left, value: search)
                } else {
                    node.left = BinaryNode(value: search)
                }
            }
        }
        return node.value
        
    }
}