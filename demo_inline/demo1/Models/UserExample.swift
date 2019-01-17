//
//  UserExample.swift
//  Demo1
//
//  Created by Sergey Duhovich on 5.1.19.
//  Copyright © 2019 Dukhovich. All rights reserved.
//

import Foundation

class UserExample: NSObject, NSCoding {
  var id: String?
  var name: String?
  var lastName: String?
  var email: String?
  var avatar: URL?
  var phone: String?
  var birthDay: TimeInterval?
  
  private enum CodingKeys: String {
    case id
    case name
    case lastName
    case email
    case avatar
    case phone
    case birthDay
  }
  
  init(id: String? = nil,
       name: String? = nil,
       lastName: String? = nil,
       email: String? = nil,
       avatar: URL? = nil,
       phone: String? = nil,
       birthDay: TimeInterval? = nil) {
    self.id = id
    self.name = name
    self.lastName = lastName
    self.email = email
    self.avatar = avatar
    self.phone = phone
    self.birthDay = birthDay
  }
  
  //MARK: - NSCoding
  
  func encode(with aCoder: NSCoder) {
    aCoder.encode(id, forKey: CodingKeys.id.rawValue)
    aCoder.encode(name, forKey: CodingKeys.name.rawValue)
    aCoder.encode(lastName, forKey: CodingKeys.lastName.rawValue)
    aCoder.encode(email, forKey: CodingKeys.email.rawValue)
    aCoder.encode(avatar, forKey: CodingKeys.avatar.rawValue)
    aCoder.encode(phone, forKey: CodingKeys.phone.rawValue)
    aCoder.encode(birthDay, forKey: CodingKeys.birthDay.rawValue)
  }
  
  required init?(coder aDecoder: NSCoder) {
    id = aDecoder.decodeObject(forKey: CodingKeys.id.rawValue) as? String
    name = aDecoder.decodeObject(forKey: CodingKeys.name.rawValue) as? String
    lastName = aDecoder.decodeObject(forKey: CodingKeys.lastName.rawValue) as? String
    email = aDecoder.decodeObject(forKey: CodingKeys.email.rawValue) as? String
    avatar = aDecoder.decodeObject(forKey: CodingKeys.avatar.rawValue) as? URL
    phone = aDecoder.decodeObject(forKey: CodingKeys.phone.rawValue) as? String
    birthDay = aDecoder.decodeObject(forKey: CodingKeys.birthDay.rawValue) as? TimeInterval
  }
}
