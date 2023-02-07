//
//  PersonViewController.swift
//  Homework_UIViewController
//
//  Created by Александр Ковбасин on 07.02.2023.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet weak var nameSwitchButton: UIButton!
    
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var positionField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    
    @IBOutlet weak var personPhotoImageView: UIImageView!
    
    @IBOutlet weak var switchNameButton: UIButton!
    @IBOutlet weak var copyAddressButton: UIButton!
    
    private var nameSwitched: Bool = false

    var personFirstName: String = ""
    var personMiddleName: String = ""
    var personLastName: String = ""
    var personPosition: String = ""
    var personAddress: String = ""
    var personPhoto: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let personPhotoImageView = UIImageView()
        //let nameTextField = UITextField()

        view.backgroundColor = UIColor(red: 244, green: 255, blue: 210)
        
        personPhotoImageView.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        personPhotoImageView.layer.borderWidth = 1
        personPhotoImageView.contentMode = .scaleAspectFill
        personPhotoImageView.layer.cornerRadius = 100
        personPhotoImageView.clipsToBounds = true
        personPhotoImageView.image = UIImage(named: personPhoto)
        self.view.addSubview(personPhotoImageView)
//        logoPicture.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
//        logoPicture.layer.borderWidth = 1
//        logoPicture.layer.cornerRadius = 100
//        logoPicture.image = UIImage(named: "personPhoto")
        
//        print(nameField)
//        
//        nameField.text = "test"//"\(personFirstName) \(personMiddleName) \(personLastName)"
//        nameField.layer.borderWidth = 1
//        nameField.layer.cornerRadius = 10
//        
//        positionField.layer.borderWidth = 1
//        positionField.layer.cornerRadius = 10
//        
//        addressField.layer.borderWidth = 1
//        addressField.layer.cornerRadius = 10
//        
//        switchNameButton.layer.borderWidth = 1
//        switchNameButton.layer.cornerRadius = 25
//        
//        copyAddressButton.layer.borderWidth = 1
//        copyAddressButton.layer.cornerRadius = 25
        // Do any additional setup after loading the view.
    }

    @IBAction func nameSwitch(_ sender: Any) {
        if !nameSwitched {
            nameField.text = personFirstName
            nameSwitched = true
        }
        else {
            nameField.text = "\(personFirstName) \(personMiddleName) \(personLastName)"
            nameSwitched = false
        }
    }
    
    @IBAction func copyAddress(_ sender: Any) {
        UIPasteboard.general.string = addressField.text
    }
}


