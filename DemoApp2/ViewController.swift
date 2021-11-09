//
//  ViewController.swift
//  DemoApp2
//
//  Created by Shreesha on 09/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textField1: UITextField!
    
    //var firstScreenLabel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = ""
        
    }
    
    @IBAction func button1(_ sender: UIButton) {
       
       performSegue(withIdentifier: "secondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondScreen" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.secondScreenLabel = textField1.text
            secondVC.delegate = self
        }
    }
    
    }
    
extension ViewController: SendData {
    func passDataBack(data: String) {
        label1.text = data
    }
}

