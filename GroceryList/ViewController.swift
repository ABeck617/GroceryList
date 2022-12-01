//
//  ViewController.swift
//  GroceryList
//
//  Created by Anthony Beckford on 11/28/22.
//

import UIKit

class ViewController: UITableViewController {
    var GroceryList = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        title = "Gorcery List"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // add
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        
        // Share
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        // trash
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(resetList))
        
        
        
    }

    @objc func addTapped() {
        let ac = UIAlertController(title: "Add Grocery Item", message: nil, preferredStyle: .alert)
        ac.addTextField()
    }
    
    @objc func shareTapped() {
        
    }
    
    @objc func resetList() {
        
    }
}

