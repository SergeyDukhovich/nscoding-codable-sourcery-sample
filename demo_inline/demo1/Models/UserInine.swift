//
//  UserInine.swift
//  Demo1
//
//  Created by Sergey Duhovich on 5.1.19.
//  Copyright © 2019 Dukhovich. All rights reserved.
//

import Foundation

class UserInline: NSObject, NSCoding, NSCodingInlineProtocol {
  var id: Int?
  var firstName: String?
  var lastName: String?
  var email: String?
  var avatar: String?
  var phone: String?

  // sourcery:inline:UserInline.CodingKeys
  // Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery  DO NOT EDIT
  private enum CodingKeys: String {
    case id
    case firstName
    case lastName
    case email
    case avatar
    case phone
  }
  // sourcery:end
  
  // sourcery:inline:UserInline.Init
// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery  DO NOT EDIT
  init(
    id: Int?,
    firstName: String?,
    lastName: String?,
    email: String?,
    avatar: String?,
    phone: String?
    ) {
    self.id = id
    self.firstName = firstName
    self.lastName = lastName
    self.email = email
    self.avatar = avatar
    self.phone = phone
  }
  // sourcery:end
  
  // sourcery:inline:UserInline.Encode
// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery  DO NOT EDIT
  func encode(with aCoder: NSCoder) {
    aCoder.encode(id, forKey: CodingKeys.id.rawValue)
    aCoder.encode(firstName, forKey: CodingKeys.firstName.rawValue)
    aCoder.encode(lastName, forKey: CodingKeys.lastName.rawValue)
    aCoder.encode(email, forKey: CodingKeys.email.rawValue)
    aCoder.encode(avatar, forKey: CodingKeys.avatar.rawValue)
    aCoder.encode(phone, forKey: CodingKeys.phone.rawValue)
  }
  // sourcery:end
  
  // sourcery:inline:UserInline.Decode
// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery  DO NOT EDIT
  required init?(coder aDecoder: NSCoder) {
    id = aDecoder.decodeObject(forKey: CodingKeys.id.rawValue) as? Int
    firstName = aDecoder.decodeObject(forKey: CodingKeys.firstName.rawValue) as? String
    lastName = aDecoder.decodeObject(forKey: CodingKeys.lastName.rawValue) as? String
    email = aDecoder.decodeObject(forKey: CodingKeys.email.rawValue) as? String
    avatar = aDecoder.decodeObject(forKey: CodingKeys.avatar.rawValue) as? String
    phone = aDecoder.decodeObject(forKey: CodingKeys.phone.rawValue) as? String
  }
  // sourcery:end
  
}
