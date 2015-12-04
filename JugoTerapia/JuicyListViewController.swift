//
//  JuicyListViewController.swift
//  JugoTerapia
//
//  Created by José Juan Reyes Zuniga on 29/11/15.
//  Copyright © 2015 MakingDevs. All rights reserved.
//

import UIKit

class JuicyListViewController: UITableViewController {

  var selectedCategory:JuicyCategory?
  var juices:[Juice] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    retrieveJuicesFromManager()
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("juiceCell",forIndexPath: indexPath)
    cell.textLabel?.text = juices[indexPath.row].juiceName
    return cell
  }
 
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return juices.count
  }
  
  private func retrieveJuicesFromManager(){
    JuicyManager.findAllByCategoryId(selectedCategory!,
      onSuccess: { (juices:[Juice]) -> () in
        self.juices = juices
        self.tableView.reloadData()
      },
      onError: { (error:String) -> () in
        print("Can't load")
    })
  }
}