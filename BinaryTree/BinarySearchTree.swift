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
    
    //These are here to help the BST understand its depth and nodes, so that it rebalances at times where it knows its inefficient.
    var nodeCount : Int?
    var depth: Int?
    
    init(){}
    
    func addValue(value passed: Int) {
        if self.head == nil {
            self.head = BinaryNode(value: passed)
        } else {
            self.head!.addNode(node: BinaryNode(value: passed), parent:nil)
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
    
    func deleteNode(value : Int) -> BinaryNode? {
        var selectedNode = findNode(value)
        
        if selectedNode != nil {
            if selectedNode!.left != nil && selectedNode!.right != nil {
                let leftTemp = selectedNode!.left
                
                selectedNode!.value = selectedNode!.right?.value
                selectedNode!.right = selectedNode!.right?.right
                selectedNode?.right?.right = nil
                selectedNode!.right?.parent = selectedNode
                selectedNode!.left = selectedNode!.right?.left
                selectedNode?.right?.left = nil
                selectedNode?.left?.parent = selectedNode
                
                selectedNode!.addNode(node: leftTemp!, parent: selectedNode)
                
            }
            else if let oneNode = (selectedNode!.left ?? selectedNode!.right) {
                if let parent = selectedNode?.parent {
                    
                    if parent.left?.value == selectedNode?.value {
                        parent.left = nil
                    } else if parent.right?.value == selectedNode?.value {
                        parent.right =  nil
                    }
                    
                    parent.addNode(node: oneNode, parent: nil)
                    selectedNode?.parent = nil
                }
                
            }
            else {
                if let parent = selectedNode?.parent {
                    selectedNode?.parent = nil
                    if parent.left?.value == selectedNode?.value {
                        parent.left = nil
                    } else if parent.right?.value == selectedNode?.value {
                        parent.right =  nil
                    }
                }
            }
        }
        
        return selectedNode
        
    }
    
    func rebalanceMergeSort() {
        
    }
    
    func rebalanceHardMode() {}
    
    func printTree() {
        
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