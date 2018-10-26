//
//  EmployeeStatus.swift
//  Demo
//
//  Created by Sergey Duhovich on 11.9.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

enum EmployeeStatus: String, Codable, AutoCases {
  case draft
  case pending
  case current
  case dismissed
}
