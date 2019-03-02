//
//  CategoriesMenuViewController.swift
//  DocumentsCategories
//
//  Created by Chris Rehagen on 2/27/19.
//  Copyright © 2019 Chris Rehagen. All rights reserved.
//

import UIKit
import CoreData


class CategoriesMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var categoriesTableView: UITableView!
    
    var category = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            }
    
    override func viewWillAppear(_ animated: Bool) {
        fetchCategories(searchString: "")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func addCategory(_ sender: Any) {
        let alert = UIAlertController(title: "New Category", message: "Enter new category.", preferredStyle: UIAlertController.Style.alert)
        
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Submit", style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
        }))
        alert.addTextField(configurationHandler: {(textField: UITextField!) in
        })
        self.present(alert, animated: true, completion: nil)
    }
    
    func fetchCategories(searchString: String) {
    
        let fetchRequest: NSFetchRequest<Category> = Category.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "name", ascending: true)]
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let newCell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        
        let newCategory = category[indexPath.row]
        newCell.textLabel?.text = newCategory.name
        
        return newCell
    }
    
    

    
}
