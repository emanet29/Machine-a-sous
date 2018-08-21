//
//  ViewController.swift
//  Machine a sous
//
//  Created by Snoopy on 21/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var bouton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bouton.layer.cornerRadius = 30
        bouton.layer.shadowColor = UIColor.darkGray.cgColor
        bouton.layer.shadowOffset = CGSize(width: 4, height: 4)
        bouton.layer.shadowRadius = 4
        bouton.layer.shadowOpacity = 0.8
    }

    @IBAction func boutonAction(_ sender: Any) {
        
    }
    
}

