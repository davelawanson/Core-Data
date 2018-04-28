//
//  ContactsViewController.swift
//  Core Data App
//
//  Created by David Lawanson on 4/27/18.
//  Copyright © 2018 David Lawanson. All rights reserved.
//

import UIKit

class AssignmentsViewController: UIViewController {
    
    @IBOutlet weak var assignmentsTableView: UITableView!
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.timeStyle = .long
        dateFormatter.dateStyle = .long
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addNewExpense(_ sender: Any) {
        performSegue(withIdentifier: "showAssignment", sender: self)
    }
}

extension AssignmentsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = assignmentsTableView.dequeueReusableCell(withIdentifier: "AssignmentCell", for: indexPath)
        
        return cell
    }
}

extension AssignmentsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showAssignment", sender: self)
    }
}

