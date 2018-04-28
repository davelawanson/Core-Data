//
//  newCatergoryViewController.swift
//  Core Data App
//
//  Created by David Lawanson on 4/27/18.
//  Copyright © 2018 David Lawanson. All rights reserved.
//

import UIKit

class newCategoryViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        titleTextField.resignFirstResponder()
    }
    
    @IBAction func saveCategory(_ sender: Any) {
        
    }
}

extension newCategoryViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
