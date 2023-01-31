//
//  ViewController.swift
//  Homework_UIViewController
//
//  Created by Александр Ковбасин on 31.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameSwitchButton: UIButton!
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var positionField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    
    @IBOutlet weak var logoPicture: UIImageView!
    
    @IBOutlet weak var switchNameButton: UIButton!
    @IBOutlet weak var copyAddressButton: UIButton!
    
    private var nameSwitched: Bool = false
    private var firstName: String = "John"
    private var middleName: String = "James"
    private var lastName: String = "Rambo"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoPicture.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        logoPicture.layer.borderWidth = 1
        logoPicture.layer.cornerRadius = 100
        
        nameField.text = "\(firstName) \(middleName) \(lastName)"
        nameField.layer.borderWidth = 1
        nameField.layer.cornerRadius = 10
        
        positionField.layer.borderWidth = 1
        positionField.layer.cornerRadius = 10
        
        addressField.layer.borderWidth = 1
        addressField.layer.cornerRadius = 10
        
        switchNameButton.layer.borderWidth = 1
        switchNameButton.layer.cornerRadius = 25
        
        copyAddressButton.layer.borderWidth = 1
        copyAddressButton.layer.cornerRadius = 25
        // Do any additional setup after loading the view.
    }

    @IBAction func nameSwitch(_ sender: Any) {
        if !nameSwitched {
            nameField.text = firstName
            nameSwitched = true
        }
        else {
            nameField.text = "\(firstName) \(middleName) \(lastName)"
            nameSwitched = false
        }
    }
    
    @IBAction func copyAddress(_ sender: Any) {
        UIPasteboard.general.string = addressField.text
    }
}

