//
//  PersonViewController.swift
//  Homework_UIViewController
//
//  Created by Александр Ковбасин on 07.02.2023.
//

import UIKit

class PersonViewController: UIViewController {

//  //  @IBOutlet weak var nameSwitchButton: UIButton!
//
//
// //   @IBOutlet weak var nameField: UITextField!
//    @IBOutlet weak var positionField: UITextField!
//    @IBOutlet weak var addressField: UITextField!
//
//   // @IBOutlet weak var personPhotoImageView: UIImageView!
//
//    //@IBOutlet weak var switchNameButton: UIButton!
//    @IBOutlet weak var copyAddressButton: UIButton!
    
    private var nameSwitched: Bool = false

    var personFirstName: String = ""
    var personMiddleName: String = ""
    var personLastName: String = ""
    var personPosition: String = ""
    var personAddress: String = ""
    var personPhoto: String = ""
    
    let personPhotoImageView = UIImageView()
    let personNameLabel = UILabel()
    let nameTextField = UITextField()
    let nameSwitchButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        


        view.backgroundColor = UIColor(red: 244, green: 255, blue: 210)
        
        personPhotoImageView.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        personPhotoImageView.layer.borderWidth = 1
        personPhotoImageView.contentMode = .scaleAspectFill
        personPhotoImageView.layer.cornerRadius = 100
        personPhotoImageView.clipsToBounds = true
        personPhotoImageView.image = UIImage(named: personPhoto)
        self.view.addSubview(personPhotoImageView)
        
        personNameLabel.frame = CGRect(x: 45, y: 320, width: 100, height: 30)
        personNameLabel.textAlignment = .right
        personNameLabel.text = "NAME:"
        self.view.addSubview(personNameLabel)
        
        self.view.addSubview(nameTextField)
        nameTextField.frame = CGRect(x: 150, y: 320, width: 200, height: 30)
        nameTextField.text = "\(personFirstName) \(personMiddleName) \(personLastName)"
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.cornerRadius = 10
        nameTextField.backgroundColor = UIColor(red: 255, green: 255, blue: 255)
        
        self.view.addSubview(nameSwitchButton)
        nameSwitchButton.frame = CGRect(x: 150, y: 400, width: 200, height: 60)
        nameSwitchButton.setTitle("SWITCH NAME", for: .normal)
        nameSwitchButton.layer.borderWidth = 1
        nameSwitchButton.layer.cornerRadius = 5
        nameSwitchButton.backgroundColor = UIColor(red: 255, green: 255, blue: 255)
        
       // myFirstButton.setTitle("✸", for: .normal)
          //  myFirstButton.setTitleColor(.blue, for: .normal)
        //    myFirstButton.frame = CGRect(x: 15, y: -50, width: 300, height: 500)
        nameSwitchButton.addTarget(self, action: #selector(nameSwitch), for: .touchUpInside)
        
        

        
        
        
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

    @objc func nameSwitch(sender: UIButton!){
        if !nameSwitched {
            nameTextField.text = personFirstName
            nameSwitched = true
        }
        else {
            nameTextField.text = "\(personFirstName) \(personMiddleName) \(personLastName)"
            nameSwitched = false
        }
    }
    
//    @objc func copyAddress(_ sender: Any) {
//        UIPasteboard.general.string = addressField.text
//    }
}


