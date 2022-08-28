//
//  ViewController.swift
//  Prework
//
//  Created by Lauren Miller on 8/23/22.
//

import UIKit
class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        print("Tapped", sender)
        TextLabel.textColor = UIColor.black
        TextLabel.text = "Hello from Lauren"
        view.backgroundColor = UIColor.cyan
    }
    
    @IBOutlet weak var TextLabel: UILabel!
    @IBAction func ButtonClicked(_ sender: Any) {
        print("Hello")
        TextLabel.textColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
        }
    @IBOutlet var Background: UIView!
    @IBAction func Button2Clicked(_ sender: Any) {
        print("change view")
        view.backgroundColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
        
    }
    @IBOutlet var TextField: UITextField!
    @IBAction func changeText(_ sender: Any) {
        self.view.endEditing(true)
        if TextField.text?.isEmpty == true {
            TextLabel.text = "Goodbye 👋"
        } else {
        TextLabel.text = TextField.text
            TextField.text = ""
        }
        
    }
    
    
    
}

