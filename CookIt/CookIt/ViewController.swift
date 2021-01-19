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

  var recipes: [Recipe] = [
    Recipe(title: "Best Brownies", steps: ["Step1", "Step2"], img: "https://images.pexels.com/photos/45202/brownie-dessert-cake-sweet-45202.jpeg"),
    Recipe(title: "Banana Bread", steps: ["Step1", "Step2"],  img: "https://images.pexels.com/photos/830894/pexels-photo-830894.jpeg"),
    Recipe(title: "Chocolate Chip Cookies", steps: ["Step1", "Step2"], img: "https://images.pexels.com/photos/230325/pexels-photo-230325.jpeg")
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    tableView.delegate = self
    tableView.dataSource = self
  
  }
  
//  let recipes = [brownie, bBread, cookies]
  
  // ----- protocol stubs here -----
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return recipes.count // returns the no. of rows in the section
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath) // this looks for the reusable cell
    let recipe = recipes[indexPath.row]
    cell.textLabel?.text = recipe.title
    
    if let url = URL(string: recipe.img),
      let data = try? Data(contentsOf: url) { // Data has a throw, so need to add the try. It's `try?` so we don't need to add the catch block
      // UIImage takes in a data type. We cannot directly add the picture url as it is technically a string type.
      // To convert the string URL to data type, Data takes in a URL type (and not string type)
      // Hence, we need to convert the picture url string to URL type before going into Data
      cell.imageView?.image = UIImage(data: data)
    }
    
    return cell
  }
 // --------------------------------
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? RecipeDetailViewController, //  app to segue to the recipe detail screen
       let index = tableView.indexPathForSelectedRow?.row { // to find the index from the recipe array
      destination.recipe = recipes[index]
    }
  }
}

