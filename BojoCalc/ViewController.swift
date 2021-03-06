//
//  ViewController.swift
//  BojoCalc
//
//  Created by Anthony Bojorquez on 5/10/16.
//  Copyright © 2016 Anthony Bojorquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //User Input
    @IBOutlet weak var billField: UITextField!
    
    //Labels
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
    @IBAction func onTap(sender: AnyObject) {
   view.endEditing(true)
    }


    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
        
    }
}

