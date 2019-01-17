//
//  UserMeta.swift
//  Demo1
//
//  Created by Sergey Duhovich on 5.1.19.
//  Copyright © 2019 Dukhovich. All rights reserved.
//

import Foundation
//sourcery:className=User
struct UserMeta: NSCodingMetaProtocol {
  var id: Int?
  var name: String?
  var lastName: String?
  var email: String?
  var avatar: URL?
  var phone: String?
  var birthDay: TimeInterval?
}

//sourcery:className=Post
struct PostMeta: NSCodingMetaProtocol {
  var postId: Int?
  var text: String?
}
