//
//  ViewController.swift
//  Tip_Calculator
//
//  Created by Ira Sharma on 9/6/18.
//  Copyright © 2018 Ira Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject)
    {
        view.endEditing(true)
    }
    @IBAction func tipCalculator(_ sender: Any)
    
    {
        let tipPercentages = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
    tipLabel.text = String(format: "%.2f", tip)
    totalLabel.text = String(format: "%.2f", total)
    }
}

