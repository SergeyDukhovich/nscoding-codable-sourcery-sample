//
//  Recipe.swift
//  Demo
//
//  Created by Sergey Duhovich on 23.9.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

class Recipe: NSObject, NSCoding, Codable {
  var ingredients: [Ingredient]?
  
  
  // sourcery:inline:Recipe.CodingKeys
  enum CodingKeys: String, CodingKey {
    case ingredients
  }
  // sourcery:end
  
  // MARK: - Initializers
  override init() {}
  
  // MARK: - Codable
  // sourcery:inline:Recipe.CodableInit
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      ingredients = try container.decodeIfPresent([Ingredient].self, forKey: .ingredients)
  }
  // sourcery:end
  
  // sourcery:inline:Recipe.CodableEncode
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(ingredients, forKey: .ingredients)
  }
  // sourcery:end
  
  // MARK: - NSCoding
  // sourcery:inline:Recipe.NSCodingInit
  required init?(coder aDecoder: NSCoder) {
    //guard statements for non optional types

    //non optional types

    //optional types
      ingredients = aDecoder.decodeObject(forKey: CodingKeys.ingredients.rawValue) as? [Ingredient]
  }
  // sourcery:end
  
  // sourcery:inline:Recipe.NSCodingEncode
  func encode(with aCoder: NSCoder) {
      aCoder.encode(ingredients, forKey: CodingKeys.ingredients.rawValue)
  }
  // sourcery:end
  
  // sourcery:inline:Recipe.IsEqual
  override func isEqual(_ object: Any?) -> Bool {
    guard let rhs = object as? Recipe else { return false }
        if self.ingredients != rhs.ingredients { return false }
    return true
  }
  // sourcery:end
}
