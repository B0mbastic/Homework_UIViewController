//
//  ViewController.swift
//  TableView
//
//  Created by Александр Ковбасин on 05.02.2023.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}

class ViewController: UIViewController {
    
    private var personsTableView = UITableView()
    private let identifier = "hwIdentifier"
    private struct personRecord {
        let personFirstName: String
        let personMiddleName: String
        let personLastName: String
        let personPosition: String
        let personAddress: String
        let personPhoto: String
    }
    private let personsArray = [personRecord(personFirstName: "John", personMiddleName: "James", personLastName: "Rambo", personPosition: "soldier", personAddress: "USA, Bowie, Arizona", personPhoto: "logo0"), personRecord(personFirstName: "Alan", personMiddleName: "", personLastName: "Schaefer", personPosition: "green berette", personAddress: "South America", personPhoto: "logo1"), personRecord(personFirstName: "Marion", personMiddleName: "", personLastName: "Cobretti", personPosition: "policeman", personAddress: "USA, Los Angeles", personPhoto: "logo2")]
    
    //let personsArray = ["John Rambo", "Alan Schaefer", "Marion Cobretti"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        personsTableView = UITableView(frame: view.bounds, style: .plain)
        personsTableView.register(PersonsViewCell.self, forCellReuseIdentifier: identifier)
        personsTableView.delegate = self
        personsTableView.dataSource = self
        personsTableView.backgroundColor = UIColor(red: 244, green: 255, blue: 210)
        personsTableView.rowHeight = 80
        self.view.addSubview(personsTableView)
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = personsTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? PersonsViewCell
        let personName: String
        personName = "\(personsArray[indexPath.row].personFirstName) \(personsArray[indexPath.row].personMiddleName) \(personsArray[indexPath.row].personLastName)"
        cell?.setPersonName(personName: personName, personPhoto: personsArray[indexPath.row].personPhoto)
        return cell ?? PersonsViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let personViewController = PersonViewController()
        personViewController.personFirstName = personsArray[indexPath.row].personFirstName
        personViewController.personMiddleName = personsArray[indexPath.row].personMiddleName
        personViewController.personLastName = personsArray[indexPath.row].personLastName
        personViewController.personPosition = personsArray[indexPath.row].personPosition
        personViewController.personAddress = personsArray[indexPath.row].personAddress
        
        personViewController.personPhoto = personsArray[indexPath.row].personPhoto
        
        present(personViewController, animated: true)
    }
}

