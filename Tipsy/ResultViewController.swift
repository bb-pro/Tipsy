//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Bektemur on 05/02/23.
//

import UIKit

class ResultViewController: UIViewController {

//MARK: - Public Properties
    var result: Float = 0
    
//MARK: - IB Outlets
    @IBOutlet var resultWithTip: UILabel!
    
//MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultWithTip.text = String(format: "%.1f", result)
    
    }

//MARK: - IB Actions
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
