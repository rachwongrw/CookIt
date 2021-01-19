//
//  RecipeDetailViewController.swift
//  CookIt
//
//  Created by Rachel Wong on 19/1/21.
//

import UIKit

class RecipeDetailViewController: UIViewController {

  var recipe: Recipe?
 
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.title = recipe?.title
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
