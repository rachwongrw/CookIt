//
//  ViewController.swift
//  CookIt
//
//  Created by Rachel Wong on 19/1/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  // any items after the first class (inheritance) are protocols.

  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    tableView.delegate = self
    tableView.dataSource = self
  }

  
  // ----- protocol stubs here -----
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 8 // returns the no. of rows in the section
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath) // this looks for the reusable cell
    cell.textLabel?.text = "Hello"
    return cell
  }
 // --------------------------------
}

