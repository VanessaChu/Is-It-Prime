//
//  ViewController.swift
//  Is It Prime
//
//  Created by Vanessa Chu on 2017-06-23.
//  Copyright © 2017 Vanessa Chu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var number: UITextField!
    @IBOutlet var result: UILabel!
    
    @IBAction func primeButton(_ sender: Any) {
        
        if let userEnteredInteger = number.text{
            let userEnteredInteger = Int(userEnteredInteger)
            
            if let ranNum = userEnteredInteger{
                var count = ranNum - 1
                var isPrime = true
                
                while count != 1 && isPrime == true{
                    isPrime = ranNum/count % 1 != 0
                    count -= 1
                }
                
                if isPrime == true{
                    result.text = "\(ranNum) is a Prime"
                }
                else{
                    result.text = "\(ranNum) is not a Prime"
                }
            }else{
                result.text = "Please enter a positive whole number"
            }
        }
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

