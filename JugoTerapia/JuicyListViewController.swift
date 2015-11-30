//
//  JuicyListViewController.swift
//  JugoTerapia
//
//  Created by José Juan Reyes Zuniga on 29/11/15.
//  Copyright © 2015 MakingDevs. All rights reserved.
//

import UIKit

class JuicyListViewController: UITableViewController {
  
  var juices:[Juice] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let j1 = Juice(id: 1, juiceName: "Jugo contra la anemia", ingredients: "", recipe: "")
    let j2 = Juice(id: 2, juiceName: "Jugo contra la tos", ingredients: "", recipe: "")
    let j3 = Juice(id: 3, juiceName: "Jugo contra tu mama", ingredients: "", recipe: "")
    let j4 = Juice(id: 4, juiceName: "Jugo contra la tarugada", ingredients: "", recipe: "")
    juices += [j1,j2,j3,j4]
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