//
//  ViewController.swift
//  Tipsy
//
//  Created by Bektemur on 05/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var totalBill: UITextField!
    
    @IBOutlet var tipAmount: UILabel!
    @IBOutlet var tipSlider: UISlider!
    
    @IBOutlet var peopleAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipAmount.text = String(format: "%.0f", tipSlider.value)
        
    }
    
    @IBAction func tipSliderChanged(_ sender: UISlider) {
        tipAmount.text = String(format: "%.0f", sender.value)
    }
    

}

