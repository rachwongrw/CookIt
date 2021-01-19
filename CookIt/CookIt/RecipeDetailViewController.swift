//
//  RecipeDetailViewController.swift
//  CookIt
//
//  Created by Rachel Wong on 19/1/21.
//

import UIKit

class RecipeDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  var recipe: Recipe?
 
  @IBOutlet weak var recipeImg: UIImageView!
  @IBOutlet weak var steps: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    steps.delegate = self
    steps.dataSource = self
    self.title = recipe?.title
    

    if let url = URL(string: recipe!.img),
      let data = try? Data(contentsOf: url) {
      recipeImg.image = UIImage(data: data)
    }
  }
  
  func tableView(_ steps: UITableView, numberOfRowsInSection section: Int) -> Int {
    return (recipe?.steps.count)!
  }
  
  func tableView(_ steps: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = steps.dequeueReusableCell(withIdentifier: "stepsCell", for: indexPath)
    let step = recipe?.steps[indexPath.row]
    cell.textLabel?.text = step
    return cell
  }
  
  
  /*
  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // Get the new view controller using segue.destination.
      // Pass the selected object to the new view controller.
  }
  */

  
}
