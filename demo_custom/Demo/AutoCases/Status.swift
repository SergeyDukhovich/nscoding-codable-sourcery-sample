//
//  Status.swift
//  Demo
//
//  Created by Sergey Duhovich on 11.9.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

enum Status: AutoCases {
  case deleted
  case disabled
  case enabled
  case pending
  case error(String)
}
