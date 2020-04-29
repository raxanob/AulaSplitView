//
//  MasterViewController.swift
//  AulaSplitView
//
//  Created by Rayane Xavier on 29/04/20.
//  Copyright © 2020 Rayane Xavier. All rights reserved.
//

import UIKit

protocol StudentSelectionDelegate: class {
    func studentSelected(_ newStudent: Students)
}

class MasterViewController: UITableViewController {

    let students = [
    Students("Rayane", "rayane.png"),
    Students("Alex", "alex.png"),
    Students("Amaury", "amaury.png"),
    Students("Artur", "artur.png"),
    Students("Cassia", "cassia.png"),
    Students("Edgar", "edgar.png"),
    Students("Eloisa", "eloisa.png"),
    Students("Enes", "enes.png"),
    ]
    
    weak var delegate: StudentSelectionDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let student = students[indexPath.row]
        cell.textLabel?.text = student.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectStudent = students[indexPath.row]
        delegate?.studentSelected(selectStudent)
    }
}
