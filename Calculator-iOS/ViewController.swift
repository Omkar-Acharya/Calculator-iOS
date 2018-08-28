//
//  ViewController.swift
//  Calculator-iOS
//
//  Created by Omkar Acharya on 8/26/18.
//  Copyright © 2018 Omkar Acharya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
    
}

