//
//  ViewController.swift
//  Machine a sous
//
//  Created by Snoopy on 21/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var bouton: UIButton!
    
    
    var emojis = ["🥝","🍌","🍎"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
        picker.isUserInteractionEnabled = false
        
        
        bouton.layer.cornerRadius = 30
        bouton.layer.shadowColor = UIColor.darkGray.cgColor
        bouton.layer.shadowOffset = CGSize(width: 4, height: 4)
        bouton.layer.shadowRadius = 4
        bouton.layer.shadowOpacity = 0.8
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return emojis.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return emojis[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 150
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let label = UILabel()
        label.text = emojis[row]
        label.font = UIFont.systemFont(ofSize: 80)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        
        return label
    }
    
    @IBAction func boutonAction(_ sender: Any) {
        for x in (0..<picker.numberOfComponents) {
            picker.selectRow(Int(arc4random_uniform(UInt32(emojis.count))), inComponent: x, animated: true)
        }
        
    }
    
}

