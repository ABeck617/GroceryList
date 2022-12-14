//
//  ViewController.swift
//  GroceryList
//
//  Created by Anthony Beckford on 11/28/22.
//

import UIKit

class ViewController: UITableViewController {
    var GroceryList = [String]()
    let cellid = "cellid"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        title = "Grocery List"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // add
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: .add, style: .plain, target: self, action: #selector(save))
        
        // Share
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        // trash
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(resetList))
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellid)
    }
    
    
    // insert tableview
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return GroceryList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath)
        
        let GroceryList = GroceryList[indexPath.row]
        
        cell.textLabel?.text = GroceryList
        cell.textLabel?.textColor = UIColor.red
        
//        var context = cell.defaultContentConfiguration()
//        context.text = GroceryList[indexPath.row]
        return cell
    }
    
    
    
    // Create a Delete cell
    
    @objc func save() {
//       // adding a new AlertController
        let alertController = UIAlertController(title: "Add New Grocery Item", message: "Please add new Item", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { [
            unowned self] action in
            guard let textField = alertController.textFields?.first, let sthToadd = textField.text else { return }
            self.GroceryList.append(sthToadd)
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
//
        
    }
    
//    @objc func shareTapped() {
//
//    }
//
    @objc func resetList() {
        
    }
    
    
}
