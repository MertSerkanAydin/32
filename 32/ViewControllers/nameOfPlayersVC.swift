//
//  nameOfPlayersVC.swift
//  32
//
//  Created by Mert Serkan Aydın on 10.05.2021.
//

import UIKit

class nameOfPlayersVC: UIViewController {

    var selectedNumberOfPlayers = ""
    let nameOfPlayersLabel = UILabel()
    var playerNamesArray = [UITextField?]()
    var playerNamesInputArray = [String]()
    var playersTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        view.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 0, alpha: 0.4)
        
//        Hide Keyboard
        let gestureRecognizerforHidingKeyboard = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizerforHidingKeyboard)
        
        
//        Name of players Label
        nameOfPlayersLabel.text = "Name of Players"
        nameOfPlayersLabel.font = UIFont(name: "AmericanTypewriter-Bold", size: 30)
        nameOfPlayersLabel.textColor = .red
        nameOfPlayersLabel.textAlignment = .center
        nameOfPlayersLabel.frame = CGRect(x: width / 12, y: height / 6, width: width / 1.2, height: height / 10)
        self.view.addSubview(nameOfPlayersLabel)
        
        
//        Next Button
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: UIBarButtonItem.Style.done, target: self, action: #selector(toChooseYourNumberVC))
        
        
//        Create Textfields
        var textfieldY : CGFloat = height / 3
        if let selectedNumberOfPlayersToInt = Int(selectedNumberOfPlayers) {
            for index in 1...selectedNumberOfPlayersToInt {
                
                playersTextField = UITextField(frame: CGRect(x: width / 8, y: textfieldY, width: width / 1.3, height: height / 20))
                textfieldY = textfieldY + 60
                playersTextField.tag = index
                playersTextField.placeholder = "Name of Player \(index)"
                playersTextField.borderStyle = UITextField.BorderStyle.line
                playersTextField.backgroundColor = UIColor.white
                playersTextField.textColor = UIColor.black
                self.view.addSubview(playersTextField)
                playerNamesArray.append(playersTextField)
            }
        }
        
    }
    
    @objc func toChooseYourNumberVC() {
        
        for i in playerNamesArray {
            playerNamesInputArray.append((i?.text)!)
        }
        
        performSegue(withIdentifier: "toChooseYourNumberVC", sender: nil)        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toChooseYourNumberVC" {
            let destinationVC = segue.destination as! ChooseYourNumberVC
            destinationVC.playerNamesInput = playerNamesInputArray
        }
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }

}
