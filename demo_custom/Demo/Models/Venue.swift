//
//  Venue.swift
//  Demo
//
//  Created by Sergey Duhovich on 23.9.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

class Venue: NSObject, NSCoding, Codable {
  
  // sourcery:rawKey=venueId
  var id: Int?
  var isFavorite: Bool?
  var address: Address?
  var gallery: [ImageResource]?
  var email: String?
  var rating: Double?
  var numberOfReviews: Int?
  var employees: [Employee]?
  var cuisines: String?
  
  
  // sourcery:inline:Venue.CodingKeys
  enum CodingKeys: String, CodingKey {
    case id = "venueId"
    case isFavorite
    case address
    case gallery
    case email
    case rating
    case numberOfReviews
    case employees
    case cuisines
  }
  // sourcery:end
  
  // MARK: - Initializers
  override init() {}
  
  // MARK: - Codable
  // sourcery:inline:Venue.CodableInit
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      id = try container.decodeIfPresent(Int.self, forKey: .id)
      isFavorite = try container.decodeIfPresent(Bool.self, forKey: .isFavorite)
      address = try container.decodeIfPresent(Address.self, forKey: .address)
      gallery = try container.decodeIfPresent([ImageResource].self, forKey: .gallery)
      email = try container.decodeIfPresent(String.self, forKey: .email)
      rating = try container.decodeIfPresent(Double.self, forKey: .rating)
      numberOfReviews = try container.decodeIfPresent(Int.self, forKey: .numberOfReviews)
      employees = try container.decodeIfPresent([Employee].self, forKey: .employees)
      cuisines = try container.decodeIfPresent(String.self, forKey: .cuisines)
  }
  // sourcery:end
  
  // sourcery:inline:Venue.CodableEncode
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(id, forKey: .id)
      try container.encode(isFavorite, forKey: .isFavorite)
      try container.encode(address, forKey: .address)
      try container.encode(gallery, forKey: .gallery)
      try container.encode(email, forKey: .email)
      try container.encode(rating, forKey: .rating)
      try container.encode(numberOfReviews, forKey: .numberOfReviews)
      try container.encode(employees, forKey: .employees)
      try container.encode(cuisines, forKey: .cuisines)
  }
  // sourcery:end
  
  // MARK: - NSCoding
  // sourcery:inline:Venue.NSCodingInit
  required init?(coder aDecoder: NSCoder) {
    //guard statements for non optional types

    //non optional types

    //optional types
      id = aDecoder.decodeObject(forKey: CodingKeys.id.rawValue) as? Int
      isFavorite = aDecoder.decodeObject(forKey: CodingKeys.isFavorite.rawValue) as? Bool
      address = aDecoder.decodeObject(forKey: CodingKeys.address.rawValue) as? Address
      gallery = aDecoder.decodeObject(forKey: CodingKeys.gallery.rawValue) as? [ImageResource]
      email = aDecoder.decodeObject(forKey: CodingKeys.email.rawValue) as? String
      rating = aDecoder.decodeObject(forKey: CodingKeys.rating.rawValue) as? Double
      numberOfReviews = aDecoder.decodeObject(forKey: CodingKeys.numberOfReviews.rawValue) as? Int
      employees = aDecoder.decodeObject(forKey: CodingKeys.employees.rawValue) as? [Employee]
      cuisines = aDecoder.decodeObject(forKey: CodingKeys.cuisines.rawValue) as? String
  }
  // sourcery:end
  
  // sourcery:inline:Venue.NSCodingEncode
  func encode(with aCoder: NSCoder) {
      aCoder.encode(id, forKey: CodingKeys.id.rawValue)
      aCoder.encode(isFavorite, forKey: CodingKeys.isFavorite.rawValue)
      aCoder.encode(address, forKey: CodingKeys.address.rawValue)
      aCoder.encode(gallery, forKey: CodingKeys.gallery.rawValue)
      aCoder.encode(email, forKey: CodingKeys.email.rawValue)
      aCoder.encode(rating, forKey: CodingKeys.rating.rawValue)
      aCoder.encode(numberOfReviews, forKey: CodingKeys.numberOfReviews.rawValue)
      aCoder.encode(employees, forKey: CodingKeys.employees.rawValue)
      aCoder.encode(cuisines, forKey: CodingKeys.cuisines.rawValue)
  }
  // sourcery:end
  
  // sourcery:inline:Venue.IsEqual
  override func isEqual(_ object: Any?) -> Bool {
    guard let rhs = object as? Venue else { return false }
        if self.id != rhs.id { return false }
        if self.isFavorite != rhs.isFavorite { return false }
        if self.address != rhs.address { return false }
        if self.gallery != rhs.gallery { return false }
        if self.email != rhs.email { return false }
        if self.rating != rhs.rating { return false }
        if self.numberOfReviews != rhs.numberOfReviews { return false }
        if self.employees != rhs.employees { return false }
        if self.cuisines != rhs.cuisines { return false }
    return true
  }
  // sourcery:end
}
