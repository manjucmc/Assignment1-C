//
//  ViewController.swift
//  Assignment1-C
//
//  Created by Shubha Manjunath on 10/12/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var i : Int = 0;
    var daysInMonth = 30
    var dailyPay = Array<Double>()
    var totalPay = Array <Double>()
    var dailyWage :Double = 10
    var totalWage : Double = 10
   
    @IBOutlet weak var display1: UILabel!
    @IBOutlet weak var enterPay: UILabel!
    @IBOutlet weak var enterDays: UILabel!
    
    @IBOutlet weak var payAmount: UITextField!
    @IBOutlet weak var daysWorked: UITextField!
    
    @IBOutlet var resultDisplay: UITextView!
    
    
    @IBAction func calculate() {
        
        for (i=0; i<30;i++)
        {
            dailyWage = (dailyWage * 2)
            dailyPay.append(dailyWage)
            totalWage = totalWage + dailyWage
            totalPay.append(totalWage)
        }
        for (i=0; i<daysInMonth; i++)
        {
            if (dailyPay[i]<100)
            {
                resultDisplay.text = resultDisplay.text + "Day \(i) pay: \(dailyPay[i]) cents"
                
                if(totalPay[i]<100)
                {
                    resultDisplay.text = resultDisplay.text + "total pay:\(totalPay[i]) cents\n"
                }
                else
                {
                    resultDisplay.text = resultDisplay.text + "total pay: $\(totalPay[i]/100)\n"
                }
            }
            else
            {
                resultDisplay.text = resultDisplay.text + " Day \(i) pay: $\(dailyPay[i]/100); total pay: $\(totalPay[i]/100)\n"
            }
        }


        
        

    }

    

    
}

