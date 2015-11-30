//
//  Juice.swift
//  JugoTerapia
//
//  Created by José Juan Reyes Zuniga on 29/11/15.
//  Copyright © 2015 MakingDevs. All rights reserved.
//

import Foundation

struct Juice {
  let id: Int
  let juiceName: String
  let ingredients: String
  let recipe: String
  
  init(id:Int, juiceName: String, ingredients: String, recipe: String){
    self.id = id
    self.juiceName = juiceName
    self.ingredients = ingredients
    self.recipe = recipe
  }
}