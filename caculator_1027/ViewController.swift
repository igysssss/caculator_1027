//
//  ViewController.swift
//  caculator_1027
//
//  Created by s20171106576 on 2018/10/27.
//  Copyright © 2018 s20171106576. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp:Double = 0
    var operatorFlag = 0
    var temp1:Double = 1
    


    @IBOutlet weak var result: UITextField!
    
    @IBAction func button1(_ sender: Any) {
        result.text = result.text!+"1"
    }
    @IBAction func button2(_ sender: Any) {
        result.text = result.text!+"2"
    }
    @IBAction func button3(_ sender: Any) {
        result.text = result.text!+"3"
    }
    @IBAction func button4(_ sender: Any) {
        result.text = result.text!+"4"
    }
    @IBAction func button5(_ sender: Any) {
        result.text = result.text!+"5"
    }
    @IBAction func button6(_ sender: Any) {
        result.text = result.text!+"6"
    }
    @IBAction func button7(_ sender: Any) {
        result.text = result.text!+"7"
    }
    @IBAction func button8(_ sender: Any) {
        result.text = result.text!+"8"
    }
    
    @IBAction func button9(_ sender: Any) {
        result.text = result.text!+"9"
    }
    @IBAction func button0(_ sender: Any) {
        result.text = result.text!+"0"
    }
    @IBAction func button(_ sender: Any) {
        result.text = result.text!+"."
    }
    @IBAction func buttonadd(_ sender: Any) {
        operatorFlag = 1
        temp = temp+Double(result.text!)!
        result.text = ""
        
        
        
    }
    @IBAction func buttonsub(_ sender: Any) {
        operatorFlag = 2
        if(temp==0){
        temp1 = Double(result.text!)!
            temp = 1 }
        else{
            temp1=temp1-Double(result.text!)!
        }
        result.text = ""
        
    }
    @IBAction func buttondiv(_ sender: Any) {
        operatorFlag = 3
        
        temp1 = temp1*Double(result.text!)!
        result.text = ""
        
       
    }
    @IBAction func buttonmul(_ sender: Any) {
        operatorFlag = 4
        if(temp==0){
            temp1 = Double(result.text!)!
            temp = 1}
        else{
            temp1=temp1/Double(result.text!)!
        }
        result.text = ""
    }
        
    
    @IBAction func buttonhundred(_ sender: Any) {
        
        
    }
    @IBAction func buttonresult(_ sender: Any) {
        if operatorFlag == 1
        {
            
            temp = temp + Double(result.text!)!
            result.text = "\(temp)"        }
        
        
        if operatorFlag == 2
        {
            
            temp1 = temp1 - Double(result.text!)!
            result.text = "\(temp1)"
            temp1=0
        }
        
        if operatorFlag == 3
        {
            
            temp1 = temp1 * Double(result.text!)!
            result.text = "\(temp1)"
            temp1=1
        }
        if operatorFlag == 4
        {
            
            temp1 = temp1 / Double(result.text!)!
            result.text = "\(temp1)"        }
        temp1=1
        
        
        temp=0
        
    }
    
    @IBAction func buttonAC(_ sender: Any) {
        result.text = ""
        temp=0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

