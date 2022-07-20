//
//  PersonsListViewController.swift
//  ContactListApp
//
//  Created by Ilya Kozhevnikov on 20.07.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count 
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        content.text = persons[indexPath.row].fullname
        
        cell.contentConfiguration = content

        return cell
    }
   
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }
    
    // MARK: - Navigation

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
         detailsVC.person = sender as? Person
     }

}
