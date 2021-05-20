//
//  nameOfPlayersVC.swift
//  32
//
//  Created by Mert Serkan Aydın on 10.05.2021.
//

import UIKit
import DropDown

class nameOfPlayersVC: UIViewController {

    var players = [PlayerInformations]()
    var selectedNumberOfPlayers = ""
    let nameOfPlayersLabel = UILabel()
//    var playerNamesArray = [UITextField?]()
    var arrayNames : [String] = []
    var arrayNumbers : [Int] = []
//    var array = [Any : Any]()
    var players1TextField = UITextField()
    var players2TextField = UITextField()
    var players3TextField = UITextField()
    var players4TextField = UITextField()
    var players5TextField = UITextField()
    var players6TextField = UITextField()
    let menu : DropDown = DropDown()
    var numbersButton = UIButton()
    var nextPlayerButton = UIButton()
    var x = 1
    let numbersArray = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        array = [[arrayNames] : [arrayNumbers]]
        let width = view.frame.size.width
        let height = view.frame.size.height
        view.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 0, alpha: 0.4)
        
//        Hide Keyboard
        let gestureRecognizerforHidingKeyboard = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizerforHidingKeyboard)
        
        
//        DropDown Menu
        DropDown.appearance().textColor = UIColor.black
        DropDown.appearance().selectedTextColor = UIColor.black
        DropDown.appearance().textFont = UIFont.systemFont(ofSize: 15)
        DropDown.appearance().backgroundColor = UIColor.white
        DropDown.appearance().selectionBackgroundColor = UIColor.lightGray
        DropDown.appearance().cellHeight = 40
        DropDown.appearance().cornerRadius = 10
        menu.dismissMode = .onTap
        menu.direction = .bottom
        menu.dataSource = numbersArray
        
        menu.selectionAction = { [unowned self] (index: Int, item: String) in
          print("Selected item: \(item) at index: \(index)")

            numbersButton.setTitle(item, for: UIControl.State.normal)
            
        }

      

            
        
//        Name of players Label
        nameOfPlayersLabel.text = "Name of Players"
        nameOfPlayersLabel.font = UIFont(name: "AmericanTypewriter-Bold", size: 30)
        nameOfPlayersLabel.textColor = .red
        nameOfPlayersLabel.textAlignment = .center
        nameOfPlayersLabel.frame = CGRect(x: width / 12, y: height / 6, width: width / 1.2, height: height / 10)
        self.view.addSubview(nameOfPlayersLabel)
        
        
//        Next Button
//        if let selectedNumberOfPlayersToInt = Int(selectedNumberOfPlayers) {
//
//            if selectedNumberOfPlayersToInt == x {
//                let width = view.frame.size.width
//                let height = view.frame.size.height
////                nextPlayerButton = UIButton(frame: CGRect(x: width / 3, y: height / 2, width: width / 3, height: height / 20))
//                nextPlayerButton.frame = CGRect(x: width / 3, y: height - (height / 3), width: width / 3, height: height / 20)
//                nextPlayerButton.setTitle("Start Game", for: UIControl.State.normal)
//
//        }
//
//            }
        
        
        
        
//        Create Textfields and DropDown Numbers
        
        
//        Next Player Button
        nextPlayerButton = UIButton(frame: CGRect(x: width / 3, y: height / 2, width: width / 3, height: height / 20))
        nextPlayerButton.backgroundColor = UIColor.gray
        nextPlayerButton.setTitle("Enter Players", for: UIControl.State.normal)
        nextPlayerButton.addTarget(self, action: #selector(nextPlayerSelector), for: UIControl.Event.touchUpInside)
        nextPlayerButton.layer.cornerRadius = 10

        self.view.addSubview(nextPlayerButton)
        

    }
    
    func createTextField() {

        let width = view.frame.size.width
        let height = view.frame.size.height
        let textfieldY = height / 2
        
        if x == 1 {
            players1TextField.frame = CGRect(x: width / 8, y: textfieldY, width: width / 1.6, height: height / 20)
            players1TextField.placeholder = "Name of Player 1"
            players1TextField.borderStyle = UITextField.BorderStyle.line
            players1TextField.backgroundColor = UIColor.white
            players1TextField.textColor = UIColor.black
            players1TextField.layer.cornerRadius = 10
            menu.bottomOffset = CGPoint(x: 0, y: (menu.anchorView?.plainView.bounds.height)!)
            self.view.addSubview(players1TextField)
            
//            playerNamesArray.append(players1TextField)
        } else if x == 2 {
            players1TextField.isHidden = true
            players2TextField.frame = CGRect(x: width / 8, y: textfieldY, width: width / 1.6, height: height / 20)
            players2TextField.placeholder = "Name of Player 2"
            players2TextField.borderStyle = UITextField.BorderStyle.line
            players2TextField.backgroundColor = UIColor.white
            players2TextField.textColor = UIColor.black
            players2TextField.layer.cornerRadius = 10
            menu.bottomOffset = CGPoint(x: 0, y: (menu.anchorView?.plainView.bounds.height)!)
            self.view.addSubview(players2TextField)
            players1TextField.isHidden = true
            
//            playerNamesArray.append(players1TextField)
        } else if x == 3 {
            players1TextField.isHidden = true
            players2TextField.isHidden = true
            players3TextField.frame = CGRect(x: width / 8, y: textfieldY, width: width / 1.6, height: height / 20)
            players3TextField.placeholder = "Name of Player 3"
            players3TextField.borderStyle = UITextField.BorderStyle.line
            players3TextField.backgroundColor = UIColor.white
            players3TextField.layer.cornerRadius = 10
            menu.bottomOffset = CGPoint(x: 0, y: (menu.anchorView?.plainView.bounds.height)!)
            self.view.addSubview(players3TextField)
//            playerNamesArray.append(players1TextField)
        } else if x == 4 {
            players1TextField.isHidden = true
            players2TextField.isHidden = true
            players3TextField.isHidden = true
            players4TextField.frame = CGRect(x: width / 8, y: textfieldY, width: width / 1.6, height: height / 20)
            players4TextField.placeholder = "Name of Player 4"
            players4TextField.borderStyle = UITextField.BorderStyle.line
            players4TextField.backgroundColor = UIColor.white
            players4TextField.layer.cornerRadius = 10
            menu.bottomOffset = CGPoint(x: 0, y: (menu.anchorView?.plainView.bounds.height)!)
            self.view.addSubview(players4TextField)
//            playerNamesArray.append(players1TextField)
        } else if x == 5 {
            players1TextField.isHidden = true
            players2TextField.isHidden = true
            players3TextField.isHidden = true
            players4TextField.isHidden = true
            players5TextField.frame = CGRect(x: width / 8, y: textfieldY, width: width / 1.6, height: height / 20)
            players5TextField.placeholder = "Name of Player 5"
            players5TextField.borderStyle = UITextField.BorderStyle.line
            players5TextField.backgroundColor = UIColor.white
            players5TextField.layer.cornerRadius = 10
            menu.bottomOffset = CGPoint(x: 0, y: (menu.anchorView?.plainView.bounds.height)!)
            self.view.addSubview(players5TextField)
//            playerNamesArray.append(players1TextField)
        } else if x == 6 {
            players1TextField.isHidden = true
            players2TextField.isHidden = true
            players3TextField.isHidden = true
            players4TextField.isHidden = true
            players5TextField.isHidden = true
            players6TextField.frame = CGRect(x: width / 8, y: textfieldY, width: width / 1.6, height: height / 20)
            players6TextField.placeholder = "Name of Player 6"
            players6TextField.borderStyle = UITextField.BorderStyle.line
            players6TextField.backgroundColor = UIColor.white
            players6TextField.layer.cornerRadius = 10
            menu.bottomOffset = CGPoint(x: 0, y: (menu.anchorView?.plainView.bounds.height)!)
            self.view.addSubview(players6TextField)
//            playerNamesArray.append(players1TextField)
        }
         
       
    }
    
    @objc func nextPlayerSelector() {
        
        
        arrayNames.append("\(players1TextField.text ?? "")")
        arrayNames.append("\(players2TextField.text ?? "")")
        arrayNames.append("\(players3TextField.text ?? "")")
        arrayNames.append("\(players4TextField.text ?? "")")
        arrayNames.append("\(players5TextField.text ?? "")")
        arrayNames.append("\(players6TextField.text ?? "")")
//        print(arrayNames)
//        array = ["\(players1TextField.text ?? "")" : ""]
        
        if let selectedNumberOfPlayersToInt = Int(selectedNumberOfPlayers) {
            
            if x <= selectedNumberOfPlayersToInt {
                
                let width = view.frame.size.width
                let height = view.frame.size.height
                
        //        DropDown Button
                numbersButton = UIButton(frame: CGRect(x: width - (width / 5), y: height / 2, width: width / 6, height: height / 20))
                menu.anchorView = numbersButton
                numbersButton.backgroundColor = UIColor.gray
                numbersButton.setTitle("Number", for: UIControl.State.normal)
                numbersButton.addTarget(self, action: #selector(numbersButtonSelector), for: UIControl.Event.touchUpInside)
                numbersButton.layer.cornerRadius = 5
                self.view.addSubview(numbersButton)
                
                nextPlayerButton.frame = CGRect(x: width / 3, y: height - (height / 3), width: width / 3, height: height / 20)
                nextPlayerButton.setTitle("Next Player", for: UIControl.State.normal)
                
                createTextField()
                
                if let aa = Int(menu.selectedItem ?? "") {
                    arrayNumbers.append(aa)
                    players.append(PlayerInformations(name: "\(players1TextField.text ?? "")", number: aa))
                    players.append(PlayerInformations(name: "\(players2TextField.text ?? "")", number: aa))
                    players.append(PlayerInformations(name: "\(players3TextField.text ?? "")", number: aa))
                    players.append(PlayerInformations(name: "\(players4TextField.text ?? "")", number: aa))
                    players.append(PlayerInformations(name: "\(players5TextField.text ?? "")", number: aa))
                    players.append(PlayerInformations(name: "\(players6TextField.text ?? "")", number: aa))
                }

                x += 1
//                print(arrayNumbers)
                print(players)
            } else {
                let width = view.frame.size.width
                let height = view.frame.size.height
//                nextPlayerButton = UIButton(frame: CGRect(x: width / 3, y: height / 2, width: width / 3, height: height / 20))
                nextPlayerButton.frame = CGRect(x: width / 3, y: height - (height / 3), width: width / 3, height: height / 20)
                nextPlayerButton.setTitle("Start Game", for: UIControl.State.normal)
                
                performSegue(withIdentifier: "toGameVC", sender: nil)
            }
        }
    }
    
    @objc func numbersButtonSelector() {
        menu.show()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGameVC" {
            let destinationVC = segue.destination as! GameVC
//            destinationVC.playerNamesInput = playerNamesInputArray
        }
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }

}
