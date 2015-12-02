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
    retrieveCategoriesFromManager()
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("juicyCategory",forIndexPath: indexPath)
    cell.textLabel?.text = categories[indexPath.row].categoryName
    return cell
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return categories.count
  }
  
  private func retrieveCategoriesFromManager(){
    JuiceCategoryManager.findAll(onSuccess: { (categories:[JuicyCategory]) -> () in
      self.categories = categories
      self.tableView.reloadData()
      }, onError: { (error:String) -> () in
        print("Can't load")
    })
  }


}

