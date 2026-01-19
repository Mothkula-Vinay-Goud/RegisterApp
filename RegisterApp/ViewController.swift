//
//  ViewController.swift
//  RegisterApp
//
//  Created by Vinay Goud Mothkula on 1/18/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    

    
    @IBOutlet weak var firstNumberTF: UITextField!
    @IBOutlet weak var secondNumberTF: UITextField!
    
    @IBOutlet weak var resultSum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let first = Int(firstNumberTF.text ?? "") ?? 0
        let second = Int(secondNumberTF.text ?? "") ?? 0
        let sum = first + second
        resultSum.text = "\(sum)"
    }
    

    @IBAction func clearClicked(_ sender: Any) {
        firstNumberTF.text = ""
        secondNumberTF.text = ""
        resultSum.text = "Result is Displayed Here"
    }
    


}

