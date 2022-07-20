//
//  PersonsListDetailedViewController.swift
//  ContactListApp
//
//  Created by Ilya Kozhevnikov on 20.07.2022.
//

import UIKit

class PersonsListDetailedViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactDetails", for: indexPath)
        
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = persons[indexPath.section].phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = persons[indexPath.section].email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullname
    }
    
}
