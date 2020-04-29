//
//  DetailViewController.swift
//  AulaSplitView
//
//  Created by Rayane Xavier on 29/04/20.
//  Copyright © 2020 Rayane Xavier. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var student: Students? {
        didSet {
            refreshUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    private func refreshUI() {
        loadViewIfNeeded()
        nameLabel.text = student?.name
        imageView.image = student?.image
    }
}

extension DetailViewController: StudentSelectionDelegate {
    func studentSelected(_ newStudent: Students) {
        student = newStudent
    }
    

}
