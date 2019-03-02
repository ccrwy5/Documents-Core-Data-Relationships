//
//  DocumentEditorViewController.swift
//  DocumentsCategories
//
//  Created by Chris Rehagen on 2/27/19.
//  Copyright © 2019 Chris Rehagen. All rights reserved.
//

import UIKit
import CoreData

class DocumentEditorViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var documentTextArea: UITextView!
    
    
    var document: Document?
    var category: Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func alertNotifyUser(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
 
    
    @IBAction func saveFile(_ sender: Any) {
        guard nameTextField.text != nil else {
            alertNotifyUser(message: "Fail on line 39.")
            return
        }
        
        
        if let document = document {
            do {
                let managedContext = document.managedObjectContext
                try managedContext?.save()
            } catch {
                alertNotifyUser(message: "Failed on line 49.")
            }
        } else {
            alertNotifyUser(message: "Failed on line 52.")
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    

 

}
