//
//  JuicyManager.swift
//  JugoTerapia
//
//  Created by José Juan Reyes Zuniga on 01/12/15.
//  Copyright © 2015 MakingDevs. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class JuicyManager {
  
  static func findAllByCategoryId(categoryId: Int, onSuccess:(juices:[Juice]) -> (), onError:(error:String) -> ()){
    
    let parameters = ["categoryId":categoryId]
    
    Alamofire.request(.POST, "http://jugoterapia.josdem.io/jugoterapia-server/beverage/beverages", parameters: parameters).responseJSON { response in
      switch response.result {
      case .Success:
        var juices = [Juice]()
        if let value = response.result.value {
          let json = JSON(value)
          for(_, subJson) in json {
            let juiceId = subJson["id"].intValue
            let juiceName = subJson["name"].stringValue
            let juiceIngredients = subJson["ingredients"].stringValue
            let juiceRecipe = subJson["recipe"].stringValue
            let juice = Juice(id: juiceId, juiceName: juiceName, ingredients: juiceIngredients, recipe: juiceRecipe)
            juices.append(juice)
          }
        }
        onSuccess(juices: juices)
      case .Failure(let error):
        onError(error: error.description)
      }
    }
  }
}