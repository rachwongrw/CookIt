class Recipe {
  var title: String
  var steps: [String]
  var img: String
  
  init(title: String, steps: [String], img: String) {
    self.title = title
    self.steps = steps
    self.img = img
  }
}
