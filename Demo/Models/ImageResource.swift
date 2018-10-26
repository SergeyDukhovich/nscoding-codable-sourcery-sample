//
//  ImageResource.swift
//  Demo
//
//  Created by Sergey Duhovich on 23.9.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

class ImageResource: NSObject, NSCoding, Codable {
  var loResolution: String?
  var noResolution: String?
  var hiResolution: String?
  
  // sourcery:inline:ImageResource.CodingKeys
  enum CodingKeys: String, CodingKey {
    case loResolution
    case noResolution
    case hiResolution
  }
  // sourcery:end
  
  // MARK: - Initializers
  override init() {}
  
  // MARK: - Codable
  // sourcery:inline:ImageResource.CodableInit
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      loResolution = try container.decodeIfPresent(String.self, forKey: .loResolution)
      noResolution = try container.decodeIfPresent(String.self, forKey: .noResolution)
      hiResolution = try container.decodeIfPresent(String.self, forKey: .hiResolution)
  }
  // sourcery:end
  
  // sourcery:inline:ImageResource.CodableEncode
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(loResolution, forKey: .loResolution)
      try container.encode(noResolution, forKey: .noResolution)
      try container.encode(hiResolution, forKey: .hiResolution)
  }
  // sourcery:end
  
  // MARK: - NSCoding
  // sourcery:inline:ImageResource.NSCodingInit
  required init?(coder aDecoder: NSCoder) {
    //guard statements for non optional types

    //non optional types

    //optional types
      loResolution = aDecoder.decodeObject(forKey: CodingKeys.loResolution.rawValue) as? String
      noResolution = aDecoder.decodeObject(forKey: CodingKeys.noResolution.rawValue) as? String
      hiResolution = aDecoder.decodeObject(forKey: CodingKeys.hiResolution.rawValue) as? String
  }
  // sourcery:end
  
  // sourcery:inline:ImageResource.NSCodingEncode
  func encode(with aCoder: NSCoder) {
      aCoder.encode(loResolution, forKey: CodingKeys.loResolution.rawValue)
      aCoder.encode(noResolution, forKey: CodingKeys.noResolution.rawValue)
      aCoder.encode(hiResolution, forKey: CodingKeys.hiResolution.rawValue)
  }
  // sourcery:end
  
  // sourcery:inline:ImageResource.IsEqual
  override func isEqual(_ object: Any?) -> Bool {
    guard let rhs = object as? ImageResource else { return false }
        if self.loResolution != rhs.loResolution { return false }
        if self.noResolution != rhs.noResolution { return false }
        if self.hiResolution != rhs.hiResolution { return false }
    return true
  }
  // sourcery:end
}
