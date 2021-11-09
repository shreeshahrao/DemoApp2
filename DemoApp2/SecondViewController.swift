//
//  SecondViewController.swift
//  DemoApp2
//
//  Created by Shreesha on 09/11/21.
//

import UIKit
protocol SendData {
    func passDataBack(data: String)
}
class SecondViewController: UIViewController {
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var textField2: UITextField!
    
    var delegate: SendData?
    
    var secondScreenLabel: String?
  
    override func viewDidLoad() {
        super.viewDidLoad()
        label2.text = secondScreenLabel
       
    }
    
    @IBAction func button2(_ sender: UIButton) {
        delegate?.passDataBack(data: textField2.text!)
        dismiss(animated: true,completion: nil)
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
