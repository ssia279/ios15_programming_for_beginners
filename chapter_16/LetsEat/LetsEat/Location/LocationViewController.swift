//
//  LocationViewController.swift
//  LetsEat
//
//  Created by Johnson Wang on 2/9/22.
//

import UIKit

class LocationViewController: UIViewController, UITableViewDataSource {
  @IBOutlet var tableView: UITableView!
  let manager = LocationDataManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.manager.fetch()
        // Do any additional setup after loading the view.
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.manager.numberOfLocationItems()
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath)
    cell.textLabel?.text = self.manager.locationItem(at: indexPath.row)
    return cell
  }
  


    
}
