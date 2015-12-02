//
//  JuiceCategoryManager.swift
//  JugoTerapia
//
//  Created by José Juan Reyes Zuniga on 01/12/15.
//  Copyright © 2015 MakingDevs. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class JuiceCategoryManager {
  
  static func findAll(onSuccess onSuccess: (categories: [JuicyCategory]) -> (), onError:(error: String) ->()){
    Alamofire.request(.GET, "http://jugoterapia.josdem.io/jugoterapia-server/beverage/categories").responseJSON { response in
      switch response.result {
      case .Success:
        var categories = [JuicyCategory]()
        if let value = response.result.value {
          let json = JSON(value)
          for(_, subJson) in json {
            let categoryId = subJson["id"].intValue
            let categoryName = subJson["name"].stringValue
            let juiceCategory = JuicyCategory(id: categoryId, categoryName: categoryName)
            categories.append(juiceCategory)
          }
        }
        onSuccess(categories: categories)
      case .Failure(let error):
        onError(error: error.description)
      }
    }
  }
}