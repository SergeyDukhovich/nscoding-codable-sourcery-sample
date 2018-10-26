//
//  ErrorAPIType.swift
//  Demo
//
//  Created by Sergey Duhovich on 5.10.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

enum ErrorAPIType: Int, Codable {
  case methodNotFound = 404
  case invalidInputParameters = 9999
  case stranger = 418
}
