//
//  GameSceneVC.swift
//  32
//
//  Created by Mert Serkan Aydın on 10.05.2021.
//

import UIKit

final class TargetAction {
    let work: () -> Void

    init(_ work: @escaping () -> Void) {
        self.work = work
    }

    @objc func action() {
        work()
    }
}

class GameVC: UIViewController {
    
    private var tas: [TargetAction] = []
    
//    var numbersButtons = UIButton()
    let numbersArray = 1...32
    var buttonArray = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        (0...4).forEach { x in
//                    let button = UIButton(frame: CGRect(x: CGFloat(x) * 50 , y: 40, width: 44, height: 44))
//                    button.setTitleColor(.black, for: .normal)
//                    button.setTitle("\(x)", for: .normal)
//                    let ta =
//                        TargetAction {
//                            Swift.print(x)
//                        }
//                    tas.append(ta)
//                    button.addTarget(ta, action: #selector(TargetAction.action), for: .touchUpInside)
//                    view.addSubview(button)
//                }
            
        let width = view.frame.size.width
        let height = view.frame.size.height
        view.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 0, alpha: 0.4)
        
        var xPosition = width * 0.11
        var yPosition = height - (height * 0.75)
        
        print(width / 10 , height / 20)
        
        for index in 1...32 {
            
            
            let numbersButtons = UIButton(frame: CGRect(x: xPosition, y: yPosition, width: width / 6, height: height / 16))
           
            if xPosition < width - (width / 3) {
            xPosition = xPosition + (width / 5)
            } else {
            yPosition = yPosition + (height / 14)
            xPosition = width * 0.11
            }
            numbersButtons.setTitleColor(.white, for: .normal)
            numbersButtons.setTitle("\(index)", for: .normal)
            numbersButtons.layer.cornerRadius = 5
            numbersButtons.backgroundColor = UIColor.red
//            numbersButtons.tintColor = UIColor.white
//            buttonArray.append(numbersButtons)
            let ta =
                TargetAction {
                    Swift.print(index)
                    numbersButtons.isHidden = true
//                    self.numbersButtons.isHidden = true
//
//                    let alert = UIAlertController(title: "Are you sure?", message: "", preferredStyle: UIAlertController.Style.alert)
//                    let yesButton = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default) { (yes) in
//
//                        Swift.print(self.numbersButtons.titleLabel?.text)
//
//                    }
//                    let noButton = UIAlertAction(title: "No", style: UIAlertAction.Style.cancel, handler: nil)
//                    alert.addAction(yesButton)
//                    alert.addAction(noButton)
//                    self.present(alert, animated: true, completion: nil)
                }
                    
                
            tas.append(ta)
            numbersButtons.addTarget(ta, action: #selector(TargetAction.action), for: .touchUpInside)
            self.view.addSubview(numbersButtons)
            
        }
        
    }
    
//    @objc func numbersClicked() {
//
//        numbersButtons.isHidden = true
//
//        let alert = UIAlertController(title: "Are you sure?", message: "", preferredStyle: UIAlertController.Style.alert)
//        let yesButton = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default) { (yes) in
//
//            print(self.numbersButtons.titleLabel?.text)
//
//        }
//        let noButton = UIAlertAction(title: "No", style: UIAlertAction.Style.cancel, handler: nil)
//        alert.addAction(yesButton)
//        alert.addAction(noButton)
//        self.present(alert, animated: true, completion: nil)
//    }
    

}
