//
//  Ingredient.swift
//  Demo
//
//  Created by Sergey Duhovich on 23.9.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

class Ingredient: NSObject, NSCoding, Codable {
  var id: Int?
  var type: IngredientType?
  var title: String?
  
  
  // sourcery:inline:Ingredient.CodingKeys
  enum CodingKeys: String, CodingKey {
    case id
    case type
    case title
  }
  // sourcery:end
  
  // MARK: - Initializers
  override init() {}
  
  // MARK: - Codable
  // sourcery:inline:Ingredient.CodableInit
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      id = try container.decodeIfPresent(Int.self, forKey: .id)
      type = try container.decodeIfPresent(IngredientType.self, forKey: .type)
      title = try container.decodeIfPresent(String.self, forKey: .title)
  }
  // sourcery:end
  
  // sourcery:inline:Ingredient.CodableEncode
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(id, forKey: .id)
      try container.encode(type, forKey: .type)
      try container.encode(title, forKey: .title)
  }
  // sourcery:end
  
  // MARK: - NSCoding
  // sourcery:inline:Ingredient.NSCodingInit
  required init?(coder aDecoder: NSCoder) {
    //guard statements for non optional types

    //non optional types

    //optional types
      id = aDecoder.decodeObject(forKey: CodingKeys.id.rawValue) as? Int
      type = IngredientType(aDecoder.decodeObject(forKey: CodingKeys.type.rawValue) as? String)
      title = aDecoder.decodeObject(forKey: CodingKeys.title.rawValue) as? String
  }
  // sourcery:end
  
  // sourcery:inline:Ingredient.NSCodingEncode
  func encode(with aCoder: NSCoder) {
      aCoder.encode(id, forKey: CodingKeys.id.rawValue)
      aCoder.encode(type?.rawValue, forKey: CodingKeys.type.rawValue)
      aCoder.encode(title, forKey: CodingKeys.title.rawValue)
  }
  // sourcery:end
  
  // sourcery:inline:Ingredient.IsEqual
  override func isEqual(_ object: Any?) -> Bool {
    guard let rhs = object as? Ingredient else { return false }
        if self.id != rhs.id { return false }
        if self.type != rhs.type { return false }
        if self.title != rhs.title { return false }
    return true
  }
  // sourcery:end
}
