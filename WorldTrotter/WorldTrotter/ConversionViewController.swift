//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Robert Steiner on 9/11/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Measurement<UnitTemperature>? {
        didSet{
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        }else{
            return nil
        }
    }
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ConversionViewController loaded its view.")
        
        updateCelsiusLabel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.view.backgroundColor = {
            
            let green = CGFloat(arc4random()) / CGFloat(UInt32.max)
            let red = CGFloat(arc4random()) / CGFloat(UInt32.max)
            let blue = CGFloat(arc4random()) / CGFloat(UInt32.max)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }()
        
    }
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField){
        if let text = textField.text, let number = numberFormatter.number(from: text){
            fahrenheitValue = Measurement(value: number.doubleValue, unit: .fahrenheit)
        }else{
            fahrenheitValue = nil
        }
    }
    
    @IBAction func dismissKeyBoard(_ send: UITapGestureRecognizer){
        textField.resignFirstResponder()
    }
    
    func updateCelsiusLabel(){
        if let celsiusValue = celsiusValue {
            celsiusLabel.text = numberFormatter.string(from: NSNumber(value: celsiusValue.value))
        }else{
            celsiusLabel.text = "???"
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        let currentLocale = Locale.current
        let decimalSeparator = currentLocale.decimalSeparator ?? "."
        
        let existingTextHasDecimalSeparator = textField.text?.range(of: decimalSeparator)
        let replacementTExtHasDecimalSeparator = string.range(of: decimalSeparator)
        let replacementTextHasAlpha = string.rangeOfCharacter(from: NSCharacterSet.letters)
        
        if ((existingTextHasDecimalSeparator != nil && replacementTExtHasDecimalSeparator != nil) || replacementTextHasAlpha != nil) {
            return false //No Output
        }else{
            return true  //Output
        }
        
    }
    
}
