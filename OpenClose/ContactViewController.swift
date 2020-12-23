//
//  ContactViewController.swift
//  CellViews
//
//  Created by Jayakrishnan u on 12/22/20.
//

import UIKit

struct Contact {
    var names: [String]
    var status: Bool
}

class ContactViewController: UIViewController {

    @IBOutlet var contactTableView: UITableView!
    var contacts: [Contact] = [
                        Contact(names:["Anoop", "Anitha", "Ajay", "Akil", "Arnold"], status: false),
                        Contact(names:["Ishaan", "Iaan"], status: false),
                        Contact(names:["Vinu", "Vihaan", "Victor", "Vijay", "Vimal"], status: false),
                    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTableView.delegate = self
        contactTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

}

extension ContactViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if contacts[section].status {
            return 0
        }
        return contacts[section].names.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactTableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.section].names[indexPath.row]
        return  cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let button = UIButton()
        let title = contacts[section].status ? "Close" : "Open"
        button.setTitle(title, for: .normal)
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.tag = section
        return button
    }
    
    @objc func buttonClicked(sender: UIButton) {
       
        let section = sender.tag
        let oldStatus = contacts[section].status
        
        var indexPaths = [IndexPath]()
        for row in contacts[section].names.indices {
            let indexPath = IndexPath(row: row, section: section)
            indexPaths.append(indexPath)
        }
        //contacts[section].names.removeAll()
        contacts[section].status = !oldStatus
        if oldStatus {
            contactTableView.insertRows(at: indexPaths, with: .fade)
        } else {
            contactTableView.deleteRows(at: indexPaths, with: .left)
        }
        
        sender.setTitle(oldStatus ? "Open" : "Close", for: .normal)
    }
}
