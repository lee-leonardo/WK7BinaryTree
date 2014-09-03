//
//  ViewController.swift
//  BinaryTree
//
//  Created by Leonardo Lee on 9/3/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tree = BinarySearchTree()
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateTree()
        println("Head: \(tree.head?.value)")
        println("Left: \(tree.head?.left?.value))")
        println("Right: \(tree.head?.right?.value))")
    }
    
    func generateTree() {
        tree.addValue(value: 50)
        tree.addValue(value: 1)
        tree.addValue(value: 6)
        tree.addValue(value: 65)
        tree.addValue(value: 25)
        tree.addValue(value: 75)
        tree.addValue(value: 45)
        tree.addValue(value: 40)
        tree.addValue(value: 80)
        tree.addValue(value: 100)
        tree.addValue(value: 67)
    }

}

