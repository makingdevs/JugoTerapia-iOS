//
//  JuiceViewController.swift
//  JugoTerapia
//
//  Created by José Juan Reyes Zuniga on 30/11/15.
//  Copyright © 2015 MakingDevs. All rights reserved.
//

import UIKit

class JuiceViewController: UIViewController {
  
  @IBOutlet weak var juiceNameLabel: UILabel!
  @IBOutlet weak var juiceIngredientesLabel: UILabel!
  @IBOutlet weak var juiceRecipeLabel: UILabel!
  var juice:Juice!
  
  override func viewWillAppear(animated: Bool) {
    juiceNameLabel.text = juice.juiceName
    juiceIngredientesLabel.text = juice.ingredients
    juiceRecipeLabel.text = juice.recipe
  }
  
}
