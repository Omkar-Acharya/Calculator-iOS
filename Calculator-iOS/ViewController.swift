//
//  ViewController.swift
//  Calculator-iOS
//
//  Created by Omkar Acharya on 8/26/18.
//  Copyright © 2018 Omkar Acharya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Button References for creating round buttons
    @IBOutlet weak var ButtonAC: UIButton!
    @IBOutlet weak var ButtonPM: UIButton!
    @IBOutlet weak var ButtonPercent: UIButton!
    @IBOutlet weak var ButtonDivide: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    @IBOutlet weak var ButtonMultiply: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var ButtonMinus: UIButton!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var ButtonPlus: UIButton!
    @IBOutlet weak var Button0: UIButton!
    @IBOutlet weak var ButtonDot: UIButton!
    @IBOutlet weak var ButtonEqual: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        //Setting the corner radius for all the buttons to make the button shape as circle
        ButtonAC.layer.cornerRadius = 40.0
        ButtonPM.layer.cornerRadius = 40.0
        ButtonPercent.layer.cornerRadius = 40.0
        ButtonDivide.layer.cornerRadius = 40.0
        Button7.layer.cornerRadius = 40.0
        Button8.layer.cornerRadius = 40.0
        Button9.layer.cornerRadius = 40.0
        ButtonMultiply.layer.cornerRadius = 40.0
        Button4.layer.cornerRadius = 40.0
        Button5.layer.cornerRadius = 40.0
        Button6.layer.cornerRadius = 40.0
        ButtonDot.layer.cornerRadius = 40.0
        Button1.layer.cornerRadius = 40.0
        Button2.layer.cornerRadius = 40.0
        Button3.layer.cornerRadius = 40.0
        ButtonPlus.layer.cornerRadius = 40.0
        ButtonMinus.layer.cornerRadius = 40.0
        Button0.layer.cornerRadius = 40.0
        ButtonEqual.layer.cornerRadius = 40.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var firstOperandText = ""
    var secondOperandText = ""
    var clearFlag = true
    var isFirstOperand = true
    var alreadyoperation = false
    var optext = ""
    let calcilogic = CalculatorLogic()
    
    @IBAction func ButtonPress(_ sender: UIButton) {
        if clearFlag {
            answerLabel.text = ""
            clearFlag = false
        }
        let currentLabel = answerLabel.text!
        let textLabel = sender.titleLabel!.text
        if let text = textLabel {
            switch text {
            case "+", "-", "X", "/", ".":
                if alreadyoperation{
                    return
                }
                if isFirstOperand{
                    return
                }
                optext = text
                alreadyoperation = true
                answerLabel.text = "\(currentLabel)\(optext)"
                break
            case "=":
                //let result = calcilogic.calculate(textString: answerLabel.text!)
                //answerLabel.text = result
                isFirstOperand = true
                alreadyoperation = false
                clearFlag = true
                let result = calcilogic.calculate(firstNo: Int(firstOperandText)!, secondNo: Int(secondOperandText)!, operation: optext)
                answerLabel.text = "\(result)"
                firstOperandText = ""
                secondOperandText = ""
                break
            default:
                /*
                optext = text
                answerLabel.text = "\(currentLabel)\(optext)"
                alreadyoperation = false
                break;
                */
                
                if isFirstOperand {
                    firstOperandText = "\(firstOperandText)\(text)"
                    isFirstOperand = false
                } else {
                    secondOperandText = "\(secondOperandText)\(text)"
                }
                answerLabel.text = "\(currentLabel)\(text)"
                break;
            }
        }
    }
}
