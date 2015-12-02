//
//  JuicyListViewController.swift
//  JugoTerapia
//
//  Created by José Juan Reyes Zuniga on 29/11/15.
//  Copyright © 2015 MakingDevs. All rights reserved.
//

import UIKit

class JuicyListViewController: UITableViewController {

  var selectedCategoryId:Int = 0
  var juices:[Juice] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("juiceCell",forIndexPath: indexPath)
    cell.textLabel?.text = juices[indexPath.row].juiceName
    return cell
  }
 
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return juices.count
  }
}