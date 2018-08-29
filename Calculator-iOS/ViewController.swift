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
    @IBOutlet weak var ButtonDivide: UIButton!
    @IBOutlet weak var ButtonPercent: UIButton!
    @IBOutlet weak var ButtonEqual: UIButton!
    @IBOutlet weak var ButtonDot: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var ButtonMultiply: UIButton!
    @IBOutlet weak var Button9: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button0: UIButton!
    @IBOutlet weak var ButtonPlus: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var ButtonMinus: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        //Setting the corner radius for all the buttons
        ButtonAC.layer.cornerRadius = 43.0
        ButtonPM.layer.cornerRadius = 43.0
        ButtonPercent.layer.cornerRadius = 43.0
        ButtonDivide.layer.cornerRadius = 43.0
        Button7.layer.cornerRadius = 39.5
        Button8.layer.cornerRadius = 39.5
        Button9.layer.cornerRadius = 39.5
        ButtonMultiply.layer.cornerRadius = 39.5
        Button4.layer.cornerRadius = 39.5
        Button5.layer.cornerRadius = 39.5
        Button6.layer.cornerRadius = 39.5
        ButtonDot.layer.cornerRadius = 39.5
        Button1.layer.cornerRadius = 39.5
        Button2.layer.cornerRadius = 39.5
        Button3.layer.cornerRadius = 39.5
        ButtonPlus.layer.cornerRadius = 39.5
        ButtonMinus.layer.cornerRadius = 39.5
        Button0.layer.cornerRadius = 40.0
        ButtonEqual.layer.cornerRadius = 39.5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Refernce to UI Label
    @IBOutlet weak var answerLabel: UILabel!
    
    var operation = true
    
    //This function adds number/operator to the answer label
    func addToAnswerLabel(number:String){
        var textLabel = String(answerLabel.text!)
        
        if operation{
            textLabel = ""
            operation = false
        }
        
        textLabel = textLabel + number
        answerLabel.text = textLabel
    }
    
    //This function clears the answerLabel when user presses the clear button
    @IBAction func buttonAC(_ sender: UIButton) {
        answerLabel.text = "0"
        operation = true
    }
    
    //This function is called when user press negation button. It makes the number negative
    @IBAction func buttonNegate(_ sender: Any) {
        var textLabel = String(answerLabel.text!)
        textLabel = "-" + textLabel
        answerLabel.text = textLabel
        operation = true
    }
    
    //This funtion is called when user presses percentage button. It finds the percentage of number
    @IBAction func buttonPercent(_ sender: UIButton) {
        var firstOperand = Double(answerLabel.text!)
        firstOperand = firstOperand!/100
        answerLabel.text = String(firstOperand!)
        operation = true
    }
    
    //This funtion is called when user presses division button. It finds the division of two numbers
    @IBAction func buttonDivision(_ sender: UIButton) {
        mathoperator = "/"
        firstOperand = Double(answerLabel.text!)
        operation = true
    }
    
    //Reference to the variable mathopertor and firstOperand
    var mathoperator = "+"
    var firstOperand : Double?
    
    
    //This funtion is called when user presses multiply button. It finds the multiplication of two numbers
    @IBAction func buttonMultiply(_ sender: UIButton) {
        mathoperator = "*"
        firstOperand = Double(answerLabel.text!)
        operation = true
    }
    
    //This funtion is called when user presses minus button. It finds the subtraction of two numbers
    @IBAction func buttonSubtraction(_ sender: UIButton) {
        mathoperator = "-"
        firstOperand = Double(answerLabel.text!)
        operation = true
    }
    
    //This funtion is called when user presses add button. It finds the addition of two numbers
    @IBAction func buttonAddition(_ sender: UIButton) {
    mathoperator = "+"
    firstOperand = Double(answerLabel.text!)
    operation = true
    }
    
    //This funtion is called when user presses 7 button
    @IBAction func buttonSeven(_ sender: UIButton) {
        addToAnswerLabel(number: "7")
    }
    
    //This funtion is called when user presses 8 button
    @IBAction func buttonEight(_ sender: UIButton) {
        addToAnswerLabel(number: "8")
    }
    
    //This funtion is called when user presses 9 button
    @IBAction func buttonNine(_ sender: UIButton) {
        addToAnswerLabel(number: "9")
    }
    
    //This funtion is called when user presses 4 button
    @IBAction func buttonFour(_ sender: UIButton) {
        addToAnswerLabel(number: "4")
    }
    
    //This funtion is called when user presses 5 button
    @IBAction func buttonFive(_ sender: UIButton) {
        addToAnswerLabel(number: "5")
    }
    
    //This funtion is called when user presses 6 button
    @IBAction func buttonSix(_ sender: UIButton) {
        addToAnswerLabel(number: "6")
    }
    
    //This funtion is called when user presses 1 button
    @IBAction func buttonOne(_ sender: UIButton) {
        addToAnswerLabel(number: "1")
    }
    
    //This funtion is called when user presses 2 button
    @IBAction func buttonTwo(_ sender: UIButton) {
        addToAnswerLabel(number: "2")
    }
    
    //This funtion is called when user presses 3 button
    @IBAction func buttonThree(_ sender: UIButton) {
        addToAnswerLabel(number: "3")
    }
    
    //This funtion is called when user presses 0 button
    @IBAction func buttonZero(_ sender: UIButton) {
        addToAnswerLabel(number: "0")
    }
    
    
    //This funtion is called when user presses dot button
    @IBAction func buttonDot(_ sender: UIButton) {
        addToAnswerLabel(number: ".")
    }
    
    
    //This funtion is called when user presses equalto button. It computes the result of mathematical operation and displays the result
    @IBAction func buttonEqualTo(_ sender: UIButton) {
        let secondOperand = Double(answerLabel.text!)
        var answer : Double?
    
    switch mathoperator {
    case "+":
        answer = firstOperand! + secondOperand!
        
    case "-":
        answer = firstOperand! - secondOperand!
        
    case "*":
        answer = firstOperand! * secondOperand!
        
    case "/":
        answer = firstOperand! / secondOperand!
        
    default:
        answer = 0.0
    }
    
    answerLabel.text = String(answer!)
    operation = true
}
}

