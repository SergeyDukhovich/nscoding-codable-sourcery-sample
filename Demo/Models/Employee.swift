//
//  Employee.swift
//  Demo
//
//  Created by Sergey Duhovich on 23.9.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

class Employee: NSObject, NSCoding, Codable {
  var id: Int?
  var workingAt: [Venue]?
  var user: User?
  var salary: Double?
  
  // sourcery:inline:Employee.CodingKeys
  enum CodingKeys: String, CodingKey {
    case id
    case workingAt
    case user
    case salary
  }
  // sourcery:end
  
  // MARK: - Initializers
  override init() {}
  
  // MARK: - Codable
  // sourcery:inline:Employee.CodableInit
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      id = try container.decodeIfPresent(Int.self, forKey: .id)
      workingAt = try container.decodeIfPresent([Venue].self, forKey: .workingAt)
      user = try container.decodeIfPresent(User.self, forKey: .user)
      salary = try container.decodeIfPresent(Double.self, forKey: .salary)
  }
  // sourcery:end
  
  // sourcery:inline:Employee.CodableEncode
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(id, forKey: .id)
      try container.encode(workingAt, forKey: .workingAt)
      try container.encode(user, forKey: .user)
      try container.encode(salary, forKey: .salary)
  }
  // sourcery:end
  
  // MARK: - NSCoding
  // sourcery:inline:Employee.NSCodingInit
  required init?(coder aDecoder: NSCoder) {
    //guard statements for non optional types

    //non optional types

    //optional types
      id = aDecoder.decodeObject(forKey: CodingKeys.id.rawValue) as? Int
      workingAt = aDecoder.decodeObject(forKey: CodingKeys.workingAt.rawValue) as? [Venue]
      user = aDecoder.decodeObject(forKey: CodingKeys.user.rawValue) as? User
      salary = aDecoder.decodeObject(forKey: CodingKeys.salary.rawValue) as? Double
  }
  // sourcery:end
  
  // sourcery:inline:Employee.NSCodingEncode
  func encode(with aCoder: NSCoder) {
      aCoder.encode(id, forKey: CodingKeys.id.rawValue)
      aCoder.encode(workingAt, forKey: CodingKeys.workingAt.rawValue)
      aCoder.encode(user, forKey: CodingKeys.user.rawValue)
      aCoder.encode(salary, forKey: CodingKeys.salary.rawValue)
  }
  // sourcery:end
  
  // sourcery:inline:Employee.IsEqual
  override func isEqual(_ object: Any?) -> Bool {
    guard let rhs = object as? Employee else { return false }
        if self.id != rhs.id { return false }
        if self.workingAt != rhs.workingAt { return false }
        if self.user != rhs.user { return false }
        if self.salary != rhs.salary { return false }
    return true
  }
  // sourcery:end
}
