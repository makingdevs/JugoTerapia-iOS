//
//  ViewController.swift
//  JugoTerapia
//
//  Created by José Juan Reyes Zuniga on 29/11/15.
//  Copyright © 2015 MakingDevs. All rights reserved.
//

import UIKit

class CategoryViewController: UITableViewController {
  
  var categories:[JuicyCategory] = []

  override func viewDidLoad() {
    super.viewDidLoad()
    let c1 = JuicyCategory(categoryName: "Categoeria 1")
    let c2 = JuicyCategory(categoryName: "Categoeria 2")
    let c3 = JuicyCategory(categoryName: "Categoeria 3")
    let c4 = JuicyCategory(categoryName: "Categoeria 4")
    categories += [c1,c2,c3,c4];
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("juicyCategory",forIndexPath: indexPath)
    cell.textLabel?.text = categories[indexPath.row].categoryName
    return cell
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return categories.count;
  }


}

