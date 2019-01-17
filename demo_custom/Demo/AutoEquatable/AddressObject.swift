//
//  Address.swift
//  Demo
//
//  Created by Sergey Dukhovich on 9/10/18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

class AddressObject: NSObject, AutoEquatable {
  let id: Int
  let lat: Double
  let lon: Double
  
  var address: String?
  var city: String?
  var zipcode: String?
  
  init(id: Int, lat: Double, lon: Double) {
    self.id = id
    self.lat = lat
    self.lon = lon
  }
}
