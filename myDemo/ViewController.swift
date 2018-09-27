//
//  ViewController.swift
//  myDemo
//
//  Created by Dinaol Melak on 9/26/18.
//  Copyright © 2018 Dinaol Melak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    var backgroundColor: UIColor!
    var myLabelColor: UIColor!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundColor=view.backgroundColor
        myLabelColor=myLabel.textColor
    }
    @IBAction func didTapAdjustText(_ sender: Any) {
        myLabel.text=myTextField.text
        if(myTextField.text=="")
        {
            myLabel.text="Hello from Dinaol :)"
        }
        myTextField.text=""
        view.endEditing(true)
    }
    @IBAction func didTapChangeTextColor(_ sender: Any) {
        myLabel.textColor=UIColor.blue
    }
    @IBAction func didTapChangeBackColor(_ sender: Any) {
        view.backgroundColor=UIColor.red
    }
    @IBAction func didTapChangeText(_ sender: Any) {
        myLabel.text="👋 Goodbye!"
    }
    @IBAction func didTapReset(_ sender: Any) {
        myLabel.text="Hello from Dinaol :)"
        myLabel.textColor=UIColor.white
        view.backgroundColor=backgroundColor
        myLabel.textColor=myLabelColor
    }
    
    
    

}

