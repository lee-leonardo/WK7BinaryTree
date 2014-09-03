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
            self.head!.addNode(node: BinaryNode(value: passed))
        }
        
        //The super hard to read concise way to do that.
        //self.head?.addNode(node: BinaryNode(value: passed)) ?? (self.head = BinaryNode(value: passed))
    }
    
    func findNode(value: Int) -> BinaryNode? {
        return self.findValue(self.head, value: value)
    }
    
    private func findValue(node : BinaryNode?, value search: Int) -> BinaryNode? {
        if node != nil {
            if search == node!.value {
                return node
            } else {
                if search < node!.value {
                    return findValue(node!.left, value: search)
                } else if search > node!.value {
                    return findValue(node!.right, value: search)
                }
            }
        }
        return nil
    }
    
    //Deprecated, as it assigns values if they are not found... which is not intended in the funciton. Also the return is an int, which doesn't make much sense either.
    /*
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
    */
}