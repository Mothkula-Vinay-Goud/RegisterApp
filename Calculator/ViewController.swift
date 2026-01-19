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
    
    @IBOutlet weak var calculateSymbol: UILabel!
    @IBOutlet weak var resultSum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func sumButtonClicked(_ sender: Any) {
        let (first,second ) = getNumbers()
        let sum = first + second
        resultSum.text = "\(sum)"
        calculateSymbol.text = "+"
    }
    
    @IBAction func subtractButtonClicked(_ sender: Any) {
        let (first,second ) = getNumbers()
        let sum = first - second
        resultSum.text = "\(sum)"
        
        calculateSymbol.text = "-"
    }
    @IBAction func multiplyButtonClicked(_ sender: Any) {
        let (first,second ) = getNumbers()
        let sum = first * second
        resultSum.text = "\(sum)"
        calculateSymbol.text = "x"
    }
    @IBAction func divisionButtonClicked(_ sender: Any) {
        let (first,second ) = getNumbers()
        var sum = 0 ;
        if second != 0 {
            sum = first / second
        }
        resultSum.text = "\(sum)"
        calculateSymbol.text = "/"
        

    }
    func getNumbers() -> (Int, Int) {
        let first = Int(firstNumberTF.text ?? "") ?? 0
        let second = Int(secondNumberTF.text ?? "") ?? 0
        return (first, second)
    }

    @IBAction func clearClicked(_ sender: Any) {
        firstNumberTF.text = ""
        secondNumberTF.text = ""
        resultSum.text = "Result is Displayed Here"
    }
    


}

