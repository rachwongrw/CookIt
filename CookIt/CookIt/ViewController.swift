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
  let recipesOld: [String] = ["Best Brownies", "Banana Bread", "Chocolate Chip Cookies"]
  
  var brownie = Recipe(title: "Best Brownies", steps: [])
  var bBread = Recipe(title: "Banana Bread", steps: [])
  var cookies = Recipe(title: "Chocolate Chip Cookies", steps: [])
  
  var recipes: [Recipe] = [Recipe(title: "Best Brownies", steps: []), Recipe(title: "Banana Bread", steps: []), Recipe(title: "Chocolate Chip Cookies", steps: [])]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    tableView.delegate = self
    tableView.dataSource = self
  
  }
  
//  var recipes = [brownie, bBread, cookies]
  
  // ----- protocol stubs here -----
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return recipes.count // returns the no. of rows in the section
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath) // this looks for the reusable cell
    
//    for recipe in recipes {
    cell.textLabel?.text = recipes[indexPath.row].title
//    }
    
    return cell
  }
 // --------------------------------
}

