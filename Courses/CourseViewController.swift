//
//  CourseViewController.swift
//  CellViews
//
//  Created by Jayakrishnan u on 12/22/20.
//

import UIKit

class CourseViewController: UIViewController {

    @IBOutlet var courseTableView: UITableView!
    var courses: [Course] = [Course]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        courses = Service.convertToJSON()
        // Do any additional setup after loading the view.
    }
    
}


extension CourseViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell", for: indexPath) as! CourseTableViewCell
        cell.configure(courses[indexPath.row])
        return cell
    }
    
    
}
