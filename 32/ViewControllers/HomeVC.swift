//
//  ViewController.swift
//  32
//
//  Created by Mert Serkan Aydın on 10.05.2021.
//

import UIKit

class HomeVC: UIViewController {

    let gameTitleLabel = UILabel()
    let selectTheNumberOfPlayers = UILabel()
    var stepperLabel = UILabel()
    let nextButton = UIButton()
    let myStepper = UIStepper()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        view.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 0, alpha: 0.4)
        
//        LABELS
        
//        TITLE LABEL
        gameTitleLabel.text = "32"
        gameTitleLabel.font = UIFont(name: "AvenirNext-Heavy", size: 70)
        gameTitleLabel.textColor = .red
        gameTitleLabel.textAlignment = .center
        gameTitleLabel.frame = CGRect(x: width / 2.5, y: height / 6, width: width / 4, height: height / 10)
        self.view.addSubview(gameTitleLabel)
        
//        Select Number of Players Label
        selectTheNumberOfPlayers.text = "Select Number of Players"
        selectTheNumberOfPlayers.font = UIFont(name: "AmericanTypewriter-Bold", size: 25)
        selectTheNumberOfPlayers.textColor = .white
        selectTheNumberOfPlayers.textAlignment = .center
        selectTheNumberOfPlayers.frame = CGRect(x: width / 9.5, y: height / 2.5, width: width / 1.2, height: height / 12)
        self.view.addSubview(selectTheNumberOfPlayers)
        
//        Stepper Label
        stepperLabel.text = "2"
        stepperLabel.font = UIFont(name: "AmericanTypewriter-Bold", size: 27)
        stepperLabel.textColor = .white
        stepperLabel.textAlignment = .center
        stepperLabel.frame = CGRect(x: width / 2, y: height / 1.6, width: width / 12, height: height / 12)
        self.view.addSubview(stepperLabel)
        
//        Next Button
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(title: "Next", style: UIBarButtonItem.Style.done, target: self, action: #selector(toNamesVC))
        
        
//        Stepper
        myStepper.wraps = true
        myStepper.center = self.view.center
        myStepper.autorepeat = true
        myStepper.minimumValue = 2
        myStepper.maximumValue = 6
        myStepper.frame = CGRect(x: width / 2.35, y: height / 1.4, width: 0, height: 0)
        myStepper.addTarget(self, action: #selector(stepperValueChanged), for: UIControl.Event.touchUpInside)
        
        self.view.addSubview(myStepper)
        
    }

    @objc func stepperValueChanged() {
       
        let stepperValue = myStepper.value
        stepperLabel.text = "\(Int(stepperValue))"
    }
    
    @objc func toNamesVC() {
        performSegue(withIdentifier: "toNameOfPlayersVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNameOfPlayersVC" {
            let destinationVC = segue.destination as! nameOfPlayersVC
            destinationVC.selectedNumberOfPlayers = stepperLabel.text!
        }
    }
}

