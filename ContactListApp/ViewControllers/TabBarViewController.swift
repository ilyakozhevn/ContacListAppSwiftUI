//
//  TabBarViewController.swift
//  ContactListApp
//
//  Created by Ilya Kozhevnikov on 20.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    let persons = Person.getRandomPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        givePersonsToVCs()
    }
    
    private func givePersonsToVCs() {
        guard let viewControllers = self.viewControllers else { return }
        
        for viewController in viewControllers {
            if let fullnameVC = viewController as? PersonsListViewController {
                fullnameVC.persons = persons
            } else if let detailedVC = viewController as? PersonsListDetailedViewController {
                detailedVC.persons = persons
            }
        }
    }
}
