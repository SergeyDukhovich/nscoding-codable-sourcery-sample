//
//  Brand.swift
//  Demo
//
//  Created by Sergey Dukhovich on 9/13/18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

struct Brand: AutoEquatable {
  let id: Int
  var title: String
  var logo: URL
  var created: Date?
}
