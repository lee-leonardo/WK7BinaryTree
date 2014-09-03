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
        tree.addValue(value: 120)
        tree.addValue(value: 80)
        tree.addValue(value: 90)
        tree.addValue(value: 135)
        tree.addValue(value: 4)
        tree.addValue(value: 10)
        tree.addValue(value: 12)
        tree.addValue(value: 23)
        tree.addValue(value: 8)
    }

}

