//
//  Item.swift
//  Demo
//
//  Created by Sergey Duhovich on 23.9.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

class Item: NSObject, NSCoding, Codable {
  
  // sourcery:rawKey=itemId
  var id: Int?
  var venueId: Int?
  var logo: ImageResource?
  var title: String?
  // sourcery:rawKey=description
  var details: String?
  var price: Float?
  var recipe: Recipe?
  
  
  // sourcery:inline:Item.CodingKeys
  enum CodingKeys: String, CodingKey {
    case id = "itemId"
    case venueId
    case logo
    case title
    case details = "description"
    case price
    case recipe
  }
  // sourcery:end
  
  // MARK: - Initializers
  override init() {}
  
  // MARK: - Codable
  // sourcery:inline:Item.CodableInit
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      id = try container.decodeIfPresent(Int.self, forKey: .id)
      venueId = try container.decodeIfPresent(Int.self, forKey: .venueId)
      logo = try container.decodeIfPresent(ImageResource.self, forKey: .logo)
      title = try container.decodeIfPresent(String.self, forKey: .title)
      details = try container.decodeIfPresent(String.self, forKey: .details)
      price = try container.decodeIfPresent(Float.self, forKey: .price)
      recipe = try container.decodeIfPresent(Recipe.self, forKey: .recipe)
  }
  // sourcery:end
  
  // sourcery:inline:Item.CodableEncode
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(id, forKey: .id)
      try container.encode(venueId, forKey: .venueId)
      try container.encode(logo, forKey: .logo)
      try container.encode(title, forKey: .title)
      try container.encode(details, forKey: .details)
      try container.encode(price, forKey: .price)
      try container.encode(recipe, forKey: .recipe)
  }
  // sourcery:end
  
  // MARK: - NSCoding
  // sourcery:inline:Item.NSCodingInit
  required init?(coder aDecoder: NSCoder) {
    //guard statements for non optional types

    //non optional types

    //optional types
      id = aDecoder.decodeObject(forKey: CodingKeys.id.rawValue) as? Int
      venueId = aDecoder.decodeObject(forKey: CodingKeys.venueId.rawValue) as? Int
      logo = aDecoder.decodeObject(forKey: CodingKeys.logo.rawValue) as? ImageResource
      title = aDecoder.decodeObject(forKey: CodingKeys.title.rawValue) as? String
      details = aDecoder.decodeObject(forKey: CodingKeys.details.rawValue) as? String
      price = aDecoder.decodeObject(forKey: CodingKeys.price.rawValue) as? Float
      recipe = aDecoder.decodeObject(forKey: CodingKeys.recipe.rawValue) as? Recipe
  }
  // sourcery:end
  
  // sourcery:inline:Item.NSCodingEncode
  func encode(with aCoder: NSCoder) {
      aCoder.encode(id, forKey: CodingKeys.id.rawValue)
      aCoder.encode(venueId, forKey: CodingKeys.venueId.rawValue)
      aCoder.encode(logo, forKey: CodingKeys.logo.rawValue)
      aCoder.encode(title, forKey: CodingKeys.title.rawValue)
      aCoder.encode(details, forKey: CodingKeys.details.rawValue)
      aCoder.encode(price, forKey: CodingKeys.price.rawValue)
      aCoder.encode(recipe, forKey: CodingKeys.recipe.rawValue)
  }
  // sourcery:end
  
  // sourcery:inline:Item.IsEqual
  override func isEqual(_ object: Any?) -> Bool {
    guard let rhs = object as? Item else { return false }
        if self.id != rhs.id { return false }
        if self.venueId != rhs.venueId { return false }
        if self.logo != rhs.logo { return false }
        if self.title != rhs.title { return false }
        if self.details != rhs.details { return false }
        if self.price != rhs.price { return false }
        if self.recipe != rhs.recipe { return false }
    return true
  }
  // sourcery:end
}
