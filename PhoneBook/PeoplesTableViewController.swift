//
//  PeoplesTableViewController.swift
//  PhoneBook
//
//  Created by Vahtee Boo on 29.07.2021.
//

import UIKit

class PeoplesTableViewController: UITableViewController {
    
    var phoneBook: [Persons] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        addPersons()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        phoneBook.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = phoneBook[indexPath.row]
        let text = person.fullname
        
        var content = cell.defaultContentConfiguration()
        content.text = text
        cell.contentConfiguration = content
        
        return cell
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func addPersons() {
        
        let randomNames = DataManager.shared.names.shuffled()
        let randomSurnames = DataManager.shared.surnames.shuffled()
        let randomPhones = DataManager.shared.phones.shuffled()
        let randomEmails = DataManager.shared.emails.shuffled()
        
        for index in 0...DataManager.shared.names.count - 1 {
            let person = Persons(name: randomNames[index], surname: randomSurnames[index], phone: randomPhones[index], email: randomEmails[index])
            phoneBook.append(person)
        }
//        print(phoneBook[5].fullname)
    }
    
}
