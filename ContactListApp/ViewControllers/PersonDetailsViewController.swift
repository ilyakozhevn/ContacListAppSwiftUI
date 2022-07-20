//
//  PersonDetailsViewController.swift
//  ContactListApp
//
//  Created by Ilya Kozhevnikov on 20.07.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullname
        
        phoneLabel.text = "Phone: " + person.phone
        emailLabel.text = "Email: " + person.email
    }
    
}
