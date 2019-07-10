//
//  ConversionCalculatorViewController.swift
//  Conversion Calculator UI
//
//  Created by Brian Jiang on 7/9/19.
//  Copyright © 2019 Brian Jiang. All rights reserved.
//

import UIKit

struct UnitConverter {
    let label: String
    let inputUnit: String
    let outputUnit: String
}

class ConversionCalculatorViewController: UIViewController {
    @IBOutlet weak var OutputDisplay: UITextField!
    @IBOutlet weak var InputDisplay: UITextField!
    
    var conversions = [UnitConverter(label: "Fahrenheit to Celcius", inputUnit: "F°", outputUnit: "C°"),
                       UnitConverter(label: "Celcius to Fahrenheit", inputUnit: "C°", outputUnit: "F°"),
                       UnitConverter(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"),
                       UnitConverter(label: "Kilometers to Miles", inputUnit: "km", outputUnit: "mi")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        OutputDisplay.text = conversions[0].outputUnit
        InputDisplay.text = conversions[0].inputUnit

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Converter(_ sender: Any) {
        let menuOptions = UIAlertController(title: "Converter Menu", message: "Choose Converter", preferredStyle: UIAlertController.Style.actionSheet)
        
        for unitconverter in conversions {
            menuOptions.addAction(UIAlertAction(title: unitconverter.label, style: UIAlertAction.Style.default, handler: {
                (alertAction) -> Void in
                self.InputDisplay.text = unitconverter.inputUnit
                self.OutputDisplay.text = unitconverter.outputUnit
            }))
        }
        
        menuOptions.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        self.present(menuOptions, animated: true, completion: nil)
    }
}
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


