//
//  Address.swift
//  Demo
//
//  Created by Sergey Duhovich on 23.9.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

class Address: NSObject, NSCoding, Codable {
  // sourcery:rawKey=addressId
  var id: Int?
  var city: String?
  var country: String?
  var latitude: Double?
  var longitude: Double?
  var publicArea: Bool?
  var zipcode: String?
  
  // sourcery:inline:Address.CodingKeys
  enum CodingKeys: String, CodingKey {
    case id = "addressId"
    case city
    case country
    case latitude
    case longitude
    case publicArea
    case zipcode
  }
  // sourcery:end
  
  // MARK: - Initializers
  override init() {}
  
  // MARK: - Codable
  // sourcery:inline:Address.CodableInit
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      id = try container.decodeIfPresent(Int.self, forKey: .id)
      city = try container.decodeIfPresent(String.self, forKey: .city)
      country = try container.decodeIfPresent(String.self, forKey: .country)
      latitude = try container.decodeIfPresent(Double.self, forKey: .latitude)
      longitude = try container.decodeIfPresent(Double.self, forKey: .longitude)
      publicArea = try container.decodeIfPresent(Bool.self, forKey: .publicArea)
      zipcode = try container.decodeIfPresent(String.self, forKey: .zipcode)
  }
  // sourcery:end
  
  // sourcery:inline:Address.CodableEncode
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(id, forKey: .id)
      try container.encode(city, forKey: .city)
      try container.encode(country, forKey: .country)
      try container.encode(latitude, forKey: .latitude)
      try container.encode(longitude, forKey: .longitude)
      try container.encode(publicArea, forKey: .publicArea)
      try container.encode(zipcode, forKey: .zipcode)
  }
  // sourcery:end
  
  // MARK: - NSCoding
  // sourcery:inline:Address.NSCodingInit
  required init?(coder aDecoder: NSCoder) {
    //guard statements for non optional types

    //non optional types

    //optional types
      id = aDecoder.decodeObject(forKey: CodingKeys.id.rawValue) as? Int
      city = aDecoder.decodeObject(forKey: CodingKeys.city.rawValue) as? String
      country = aDecoder.decodeObject(forKey: CodingKeys.country.rawValue) as? String
      latitude = aDecoder.decodeObject(forKey: CodingKeys.latitude.rawValue) as? Double
      longitude = aDecoder.decodeObject(forKey: CodingKeys.longitude.rawValue) as? Double
      publicArea = aDecoder.decodeObject(forKey: CodingKeys.publicArea.rawValue) as? Bool
      zipcode = aDecoder.decodeObject(forKey: CodingKeys.zipcode.rawValue) as? String
  }
  // sourcery:end
  
  // sourcery:inline:Address.NSCodingEncode
  func encode(with aCoder: NSCoder) {
      aCoder.encode(id, forKey: CodingKeys.id.rawValue)
      aCoder.encode(city, forKey: CodingKeys.city.rawValue)
      aCoder.encode(country, forKey: CodingKeys.country.rawValue)
      aCoder.encode(latitude, forKey: CodingKeys.latitude.rawValue)
      aCoder.encode(longitude, forKey: CodingKeys.longitude.rawValue)
      aCoder.encode(publicArea, forKey: CodingKeys.publicArea.rawValue)
      aCoder.encode(zipcode, forKey: CodingKeys.zipcode.rawValue)
  }
  // sourcery:end
  
  // sourcery:inline:Address.IsEqual
  override func isEqual(_ object: Any?) -> Bool {
    guard let rhs = object as? Address else { return false }
        if self.id != rhs.id { return false }
        if self.city != rhs.city { return false }
        if self.country != rhs.country { return false }
        if self.latitude != rhs.latitude { return false }
        if self.longitude != rhs.longitude { return false }
        if self.publicArea != rhs.publicArea { return false }
        if self.zipcode != rhs.zipcode { return false }
    return true
  }
  // sourcery:end
}
