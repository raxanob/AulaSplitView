//
//  Students.swift
//  AulaSplitView
//
//  Created by Rayane Xavier on 29/04/20.
//  Copyright © 2020 Rayane Xavier. All rights reserved.
//

import Foundation
import UIKit

class Students {
    let name: String
    let image: UIImage
    
    init(_ name: String, _ imageName: String) {
        self.name = name
        self.image = UIImage(named: imageName)!
    }
}
