//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Bektemur on 05/02/23.
//

import UIKit

class ResultViewController: UIViewController {
    var result: Float = 0
    @IBOutlet var resultWithTip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultWithTip.text = String(format: "%.1f", result)
    
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
