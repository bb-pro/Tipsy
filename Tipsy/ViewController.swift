//
//  ViewController.swift
//  Tipsy
//
//  Created by Bektemur on 05/02/23.
//

import UIKit

class ViewController: UIViewController {
//MARK: - Private Properties
    
    private var tipPerPerson: Float = 0
    
//MARK: - IB Outlets
    
    @IBOutlet var totalBill: UITextField!
    
    @IBOutlet var tipAmount: UILabel!
    @IBOutlet var tipSlider: UISlider!
    
    @IBOutlet var peopleAmount: UILabel!
    @IBOutlet var tipStepper: UIStepper!

//MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipAmount.text = String(format: "%.0f", tipSlider.value)
        tipStepper.value = 0
        peopleAmount.text = String(tipStepper.value)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = tipPerPerson
        }
    }

//MARK: - IB Actions
    @IBAction func tipSliderChanged(_ sender: UISlider) {
        tipAmount.text = String(format: "%.0f", sender.value) 
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        peopleAmount.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bil = Float(totalBill.text ?? "0") ?? 0
        tipPerPerson = (bil + (bil * tipSlider.value) / 100) / Float(tipStepper.value)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
}

