//
//  PersonViewController.swift
//  Homework_UIViewController
//
//  Created by Александр Ковбасин on 07.02.2023.
//

import UIKit

class InsetsTextField: UITextField {
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 4)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 4)
    }
}

class PersonViewController: UIViewController {
    
    private var nameSwitched: Bool = false

    var personFirstName: String = ""
    var personMiddleName: String = ""
    var personLastName: String = ""
    var personPosition: String = ""
    var personAddress: String = ""
    var personPhoto: String = ""
    
    private lazy var personPhotoImageView = UIImageView()
    private lazy var personNameLabel = UILabel()
    private lazy var nameTextField = InsetsTextField()
    private lazy var personPositionLabel = UILabel()
    private lazy var positionTextField = InsetsTextField()
    private lazy var personAddressLabel = UILabel()
    private lazy var addressTextField = InsetsTextField()
    private lazy var nameSwitchButton = UIButton()
    private lazy var addressCopyButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 244, green: 255, blue: 210)

        self.view.addSubview(personPhotoImageView)
        personPhotoImageView.translatesAutoresizingMaskIntoConstraints = false
        personPhotoImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        personPhotoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        personPhotoImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        personPhotoImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        personPhotoImageView.layer.borderWidth = 1
        personPhotoImageView.contentMode = .scaleAspectFill
        personPhotoImageView.layer.cornerRadius = 100
        personPhotoImageView.clipsToBounds = true
        personPhotoImageView.image = UIImage(named: personPhoto)


        self.view.addSubview(personNameLabel)
        personNameLabel.translatesAutoresizingMaskIntoConstraints = false
        personNameLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40).isActive = true
        personNameLabel.topAnchor.constraint(equalTo: personPhotoImageView.bottomAnchor, constant: 40).isActive = true
        personNameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        personNameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        personNameLabel.textAlignment = .right
        personNameLabel.text = "NAME:"
 
        self.view.addSubview(personPositionLabel)
        personPositionLabel.translatesAutoresizingMaskIntoConstraints = false
        personPositionLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40).isActive = true
        personPositionLabel.topAnchor.constraint(equalTo: personNameLabel.bottomAnchor, constant: 10).isActive = true
        personPositionLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        personPositionLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        personPositionLabel.textAlignment = .right
        personPositionLabel.text = "POSITION:"
        
        self.view.addSubview(personAddressLabel)
        personAddressLabel.translatesAutoresizingMaskIntoConstraints = false
        personAddressLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40).isActive = true
        personAddressLabel.topAnchor.constraint(equalTo: personPositionLabel.bottomAnchor, constant: 10).isActive = true
        personAddressLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        personAddressLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        personAddressLabel.textAlignment = .right
        personAddressLabel.text = "ADDRESS:"
        
        self.view.addSubview(nameTextField)
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.leadingAnchor.constraint(equalTo: personNameLabel.trailingAnchor, constant: 20).isActive = true
        nameTextField.topAnchor.constraint(equalTo: personPhotoImageView.bottomAnchor, constant: 40).isActive = true
        nameTextField.layer.borderWidth = 1
        nameTextField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        nameTextField.text = "\(personFirstName) \(personMiddleName) \(personLastName)"
        nameTextField.layer.cornerRadius = 10
        nameTextField.backgroundColor = UIColor(red: 255, green: 255, blue: 255)
        
        self.view.addSubview(positionTextField)
        positionTextField.translatesAutoresizingMaskIntoConstraints = false
        positionTextField.leadingAnchor.constraint(equalTo: personPositionLabel.trailingAnchor, constant: 20).isActive = true
        positionTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10).isActive = true
        positionTextField.layer.borderWidth = 1
        positionTextField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        positionTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        positionTextField.text = "\(personPosition)"
        positionTextField.layer.cornerRadius = 10
        positionTextField.backgroundColor = UIColor(red: 255, green: 255, blue: 255)

        self.view.addSubview(addressTextField)
        addressTextField.translatesAutoresizingMaskIntoConstraints = false
        addressTextField.leadingAnchor.constraint(equalTo: personAddressLabel.trailingAnchor, constant: 20).isActive = true
        addressTextField.topAnchor.constraint(equalTo: positionTextField.bottomAnchor, constant: 10).isActive = true
        addressTextField.layer.borderWidth = 1
        addressTextField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        addressTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        addressTextField.text = "\(personAddress)"
        addressTextField.layer.cornerRadius = 10
        addressTextField.backgroundColor = UIColor(red: 255, green: 255, blue: 255)
        
        self.view.addSubview(nameSwitchButton)
        nameSwitchButton.translatesAutoresizingMaskIntoConstraints = false
        nameSwitchButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        nameSwitchButton.topAnchor.constraint(equalTo: personAddressLabel.bottomAnchor, constant: 40).isActive = true
        nameSwitchButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nameSwitchButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        nameSwitchButton.setTitle("SWITCH NAME", for: .normal)
        nameSwitchButton.setTitleColor(.black, for: .normal)
        nameSwitchButton.layer.borderWidth = 1
        nameSwitchButton.layer.cornerRadius = 20
        nameSwitchButton.backgroundColor = UIColor(red: 167, green: 241, blue: 132)

        nameSwitchButton.addTarget(self, action: #selector(nameSwitch), for: .touchUpInside)
        
        self.view.addSubview(addressCopyButton)
        addressCopyButton.translatesAutoresizingMaskIntoConstraints = false
        addressCopyButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        addressCopyButton.topAnchor.constraint(equalTo: nameSwitchButton.bottomAnchor, constant: 10).isActive = true
        addressCopyButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        addressCopyButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        addressCopyButton.setTitle("COPY ADDRESS", for: .normal)
        addressCopyButton.setTitleColor(.black, for: .normal)
        addressCopyButton.layer.borderWidth = 1
        addressCopyButton.layer.cornerRadius = 20
        addressCopyButton.backgroundColor = UIColor(red: 167, green: 241, blue: 132)

        addressCopyButton.addTarget(self, action: #selector(copyAddress), for: .touchUpInside)
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
    
    @objc func copyAddress(_ sender: UIButton) {
        UIPasteboard.general.string = addressTextField.text
    }
}


