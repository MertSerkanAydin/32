//
//  ChooseYourNumberVC.swift
//  32
//
//  Created by Mert Serkan Aydın on 10.05.2021.
//

import UIKit

class ChooseYourNumberVC: UIViewController {

    let writeeYourNumber = UILabel()
    var playerNumberTextField = UITextField()
    var playerNamesInput = [String]()
    let myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let width = view.frame.size.width
        let height = view.frame.size.height
        view.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 0, alpha: 0.4)
        
//        Hide Keyboard
        let gestureRecognizerforHidingKeyboard = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizerforHidingKeyboard)
        
//        Write your number Label
        writeeYourNumber.text = "Name of Players"
        writeeYourNumber.font = UIFont(name: "AmericanTypewriter-Bold", size: 30)
        writeeYourNumber.textColor = .red
        writeeYourNumber.textAlignment = .center
        writeeYourNumber.frame = CGRect(x: width / 12, y: height / 6, width: width / 1.2, height: height / 10)
        self.view.addSubview(writeeYourNumber)
        
        
//        Create Textfield
                        
        playerNumberTextField.frame = CGRect(x: width / 8, y: height / 2, width: width / 1.3, height: height / 20)
        playerNumberTextField.placeholder = "Name of Playe\(playerNamesInput)r"
        playerNumberTextField.borderStyle = UITextField.BorderStyle.line
        playerNumberTextField.backgroundColor = UIColor.white
        playerNumberTextField.textColor = UIColor.black
        self.view.addSubview(playerNumberTextField)
        
        
//        Create Next Button
        
        myButton.setTitle("Next", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.green, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width / 2.35, y: height / 1.4, width: 100, height: 100)
        myButton.addTarget(self, action: #selector(ChooseYourNumberVC.nextPlayer), for: UIControl.Event.touchUpInside)
        view.addSubview(myButton)
                    
                
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    @objc func nextPlayer() {
        
    }
}
