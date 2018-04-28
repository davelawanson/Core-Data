//
//  newContactViewController.swift
//  Core Data App
//
//  Created by David Lawanson on 4/27/18.
//  Copyright © 2018 David Lawanson. All rights reserved.
//

import UIKit

class newAssignmentViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        amountTextField.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameTextField.resignFirstResponder()
        amountTextField.resignFirstResponder()
    }
    
    @IBAction func saveExpense(_ sender: Any) {
        
    }
}

extension newAssignmentViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

