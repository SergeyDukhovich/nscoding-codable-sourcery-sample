//
//  GodObject.swift
//  Demo
//
//  Created by Sergey Duhovich on 23.9.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

class GodObject: NSObject, NSCoding, Codable {
  var boolVar: Bool = true
  var intOp: Int?
  var intVar: Int = 1
  var stringOp: String?
  var stringVar: String = "default"
  var doubleOp: Double?
  var doubleVar: Double = 0.777
  var floatOp: Float?
  var floatVar: Float = 0.777
  var userOp: User?
  var userVar: User = User()
  var dateOp: Date?
  var dateVar: Date = Date.init(timeIntervalSince1970: 12346789)
  var enumOp: IngredientType?
  var enumVar: IngredientType = .nuts
  var intsOp: [Int]?
  var intsVar: [Int] = [1, 2, 3, 4, 5]
  var itemsOp: [Item]?
  var itemsVar: [Item] = [Item()]
  var enumsOp: [IngredientType]?
  var enumsVar: [IngredientType] = [.cereal, .fish, .fruit]
  var enumsIntVar: [ErrorAPIType] = [.methodNotFound]
  var intDictOp: [Int: Int]?
  var intDictVar: [Int: Int] = [12: 13]
  var intStringDictOp: [Int: String]?
//  var userDictOp: [User: User]?
//  var userStringDictOp: [User: String]?
  var intEnumDictOp: [Int: IngredientType]?
//  var userEnumDictOp: [User: IngredientType]?
  var apiErrorOp: ErrorAPIType?
  var apiErrorVar: ErrorAPIType = .methodNotFound
  //var stranger: [[User: [IngredientType: [[Int: String]]]]]?

//  var arayEnumVar: [[[IngredientType]]] = []
  
  // sourcery:skipCodable
  //var strangerSkip: [AnyObject]?
  
  // sourcery:inline:GodObject.CodingKeys
  enum CodingKeys: String, CodingKey {
    case boolVar
    case intOp
    case intVar
    case stringOp
    case stringVar
    case doubleOp
    case doubleVar
    case floatOp
    case floatVar
    case userOp
    case userVar
    case dateOp
    case dateVar
    case enumOp
    case enumVar
    case intsOp
    case intsVar
    case itemsOp
    case itemsVar
    case enumsOp
    case enumsVar
    case enumsIntVar
    case intDictOp
    case intDictVar
    case intStringDictOp
    case intEnumDictOp
    case apiErrorOp
    case apiErrorVar
  }
  // sourcery:end
  
  // MARK: - Initializers
  override init() {}
  
  // MARK: - Codable
  // sourcery:inline:GodObject.CodableInit
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      boolVar = try container.decode(Bool.self, forKey: .boolVar)
      intOp = try container.decodeIfPresent(Int.self, forKey: .intOp)
      intVar = try container.decode(Int.self, forKey: .intVar)
      stringOp = try container.decodeIfPresent(String.self, forKey: .stringOp)
      stringVar = try container.decode(String.self, forKey: .stringVar)
      doubleOp = try container.decodeIfPresent(Double.self, forKey: .doubleOp)
      doubleVar = try container.decode(Double.self, forKey: .doubleVar)
      floatOp = try container.decodeIfPresent(Float.self, forKey: .floatOp)
      floatVar = try container.decode(Float.self, forKey: .floatVar)
      userOp = try container.decodeIfPresent(User.self, forKey: .userOp)
      userVar = try container.decode(User.self, forKey: .userVar)
      dateOp = try container.decodeIfPresent(Date.self, forKey: .dateOp)
      dateVar = try container.decode(Date.self, forKey: .dateVar)
      enumOp = try container.decodeIfPresent(IngredientType.self, forKey: .enumOp)
      enumVar = try container.decode(IngredientType.self, forKey: .enumVar)
      intsOp = try container.decodeIfPresent([Int].self, forKey: .intsOp)
      intsVar = try container.decode([Int].self, forKey: .intsVar)
      itemsOp = try container.decodeIfPresent([Item].self, forKey: .itemsOp)
      itemsVar = try container.decode([Item].self, forKey: .itemsVar)
      enumsOp = try container.decodeIfPresent([IngredientType].self, forKey: .enumsOp)
      enumsVar = try container.decode([IngredientType].self, forKey: .enumsVar)
      enumsIntVar = try container.decode([ErrorAPIType].self, forKey: .enumsIntVar)
      intDictOp = try container.decodeIfPresent([Int: Int].self, forKey: .intDictOp)
      intDictVar = try container.decode([Int: Int].self, forKey: .intDictVar)
      intStringDictOp = try container.decodeIfPresent([Int: String].self, forKey: .intStringDictOp)
      intEnumDictOp = try container.decodeIfPresent([Int: IngredientType].self, forKey: .intEnumDictOp)
      apiErrorOp = try container.decodeIfPresent(ErrorAPIType.self, forKey: .apiErrorOp)
      apiErrorVar = try container.decode(ErrorAPIType.self, forKey: .apiErrorVar)
  }
  // sourcery:end
  
  // sourcery:inline:GodObject.CodableEncode
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(boolVar, forKey: .boolVar)
      try container.encode(intOp, forKey: .intOp)
      try container.encode(intVar, forKey: .intVar)
      try container.encode(stringOp, forKey: .stringOp)
      try container.encode(stringVar, forKey: .stringVar)
      try container.encode(doubleOp, forKey: .doubleOp)
      try container.encode(doubleVar, forKey: .doubleVar)
      try container.encode(floatOp, forKey: .floatOp)
      try container.encode(floatVar, forKey: .floatVar)
      try container.encode(userOp, forKey: .userOp)
      try container.encode(userVar, forKey: .userVar)
      try container.encode(dateOp, forKey: .dateOp)
      try container.encode(dateVar, forKey: .dateVar)
      try container.encode(enumOp, forKey: .enumOp)
      try container.encode(enumVar, forKey: .enumVar)
      try container.encode(intsOp, forKey: .intsOp)
      try container.encode(intsVar, forKey: .intsVar)
      try container.encode(itemsOp, forKey: .itemsOp)
      try container.encode(itemsVar, forKey: .itemsVar)
      try container.encode(enumsOp, forKey: .enumsOp)
      try container.encode(enumsVar, forKey: .enumsVar)
      try container.encode(enumsIntVar, forKey: .enumsIntVar)
      try container.encode(intDictOp, forKey: .intDictOp)
      try container.encode(intDictVar, forKey: .intDictVar)
      try container.encode(intStringDictOp, forKey: .intStringDictOp)
      try container.encode(intEnumDictOp, forKey: .intEnumDictOp)
      try container.encode(apiErrorOp, forKey: .apiErrorOp)
      try container.encode(apiErrorVar, forKey: .apiErrorVar)
  }
  // sourcery:end
  
  // MARK: - NSCoding
  // sourcery:inline:GodObject.NSCodingInit
  required init?(coder aDecoder: NSCoder) {
    //guard statements for non optional types
        guard let stringVar = aDecoder.decodeObject(forKey: CodingKeys.stringVar.rawValue) as? String else { return nil }
        guard let userVar = aDecoder.decodeObject(forKey: CodingKeys.userVar.rawValue) as? User else { return nil }
        guard let dateVar = aDecoder.decodeObject(forKey: CodingKeys.dateVar.rawValue) as? Date else { return nil }
        guard let enumVar = aDecoder.decodeObject(forKey: CodingKeys.enumVar.rawValue) as? String else { return nil }
        guard let intsVar = aDecoder.decodeObject(forKey: CodingKeys.intsVar.rawValue) as? [Int] else { return nil }
        guard let itemsVar = aDecoder.decodeObject(forKey: CodingKeys.itemsVar.rawValue) as? [Item] else { return nil }
        guard let enumsVar = aDecoder.decodeObject(forKey: CodingKeys.enumsVar.rawValue) as? [String] else { return nil }
        guard let enumsIntVar = aDecoder.decodeObject(forKey: CodingKeys.enumsIntVar.rawValue) as? [Int] else { return nil }
        guard let intDictVar = aDecoder.decodeObject(forKey: CodingKeys.intDictVar.rawValue) as? [Int: Int] else { return nil }

    //non optional types
      boolVar = aDecoder.decodeBool(forKey: CodingKeys.boolVar.rawValue)
      intVar = aDecoder.decodeInteger(forKey: CodingKeys.intVar.rawValue)
      self.stringVar = stringVar
      doubleVar = aDecoder.decodeDouble(forKey: CodingKeys.doubleVar.rawValue)
      floatVar = aDecoder.decodeFloat(forKey: CodingKeys.floatVar.rawValue)
      self.userVar = userVar
      self.dateVar = dateVar
      self.enumVar = IngredientType(enumVar) ?? .nuts
      self.intsVar = intsVar
      self.itemsVar = itemsVar
      self.enumsVar = enumsVar.compactMap(IngredientType.init)
      self.enumsIntVar = enumsIntVar.compactMap(ErrorAPIType.init)
      self.intDictVar = intDictVar
      self.apiErrorVar = ErrorAPIType(aDecoder.decodeInteger(forKey: CodingKeys.apiErrorVar.rawValue)) ?? .methodNotFound

    //optional types
      intOp = aDecoder.decodeObject(forKey: CodingKeys.intOp.rawValue) as? Int
      stringOp = aDecoder.decodeObject(forKey: CodingKeys.stringOp.rawValue) as? String
      doubleOp = aDecoder.decodeObject(forKey: CodingKeys.doubleOp.rawValue) as? Double
      floatOp = aDecoder.decodeObject(forKey: CodingKeys.floatOp.rawValue) as? Float
      userOp = aDecoder.decodeObject(forKey: CodingKeys.userOp.rawValue) as? User
      dateOp = aDecoder.decodeObject(forKey: CodingKeys.dateOp.rawValue) as? Date
      enumOp = IngredientType(aDecoder.decodeObject(forKey: CodingKeys.enumOp.rawValue) as? String)
      intsOp = aDecoder.decodeObject(forKey: CodingKeys.intsOp.rawValue) as? [Int]
      itemsOp = aDecoder.decodeObject(forKey: CodingKeys.itemsOp.rawValue) as? [Item]
      enumsOp = (aDecoder.decodeObject(forKey: CodingKeys.enumsOp.rawValue) as? [String])?.compactMap(IngredientType.init)
      intDictOp = aDecoder.decodeObject(forKey: CodingKeys.intDictOp.rawValue) as? [Int: Int]
      intStringDictOp = aDecoder.decodeObject(forKey: CodingKeys.intStringDictOp.rawValue) as? [Int: String]
      // Nested arrays or dictionaries with enums can't be handled a.t.m. intEnumDictOp
      apiErrorOp = ErrorAPIType(aDecoder.decodeObject(forKey: CodingKeys.apiErrorOp.rawValue) as? Int)
  }
  // sourcery:end
  
  // sourcery:inline:GodObject.NSCodingEncode
  func encode(with aCoder: NSCoder) {
      aCoder.encode(boolVar, forKey: CodingKeys.boolVar.rawValue)
      aCoder.encode(intOp, forKey: CodingKeys.intOp.rawValue)
      aCoder.encode(intVar, forKey: CodingKeys.intVar.rawValue)
      aCoder.encode(stringOp, forKey: CodingKeys.stringOp.rawValue)
      aCoder.encode(stringVar, forKey: CodingKeys.stringVar.rawValue)
      aCoder.encode(doubleOp, forKey: CodingKeys.doubleOp.rawValue)
      aCoder.encode(doubleVar, forKey: CodingKeys.doubleVar.rawValue)
      aCoder.encode(floatOp, forKey: CodingKeys.floatOp.rawValue)
      aCoder.encode(floatVar, forKey: CodingKeys.floatVar.rawValue)
      aCoder.encode(userOp, forKey: CodingKeys.userOp.rawValue)
      aCoder.encode(userVar, forKey: CodingKeys.userVar.rawValue)
      aCoder.encode(dateOp, forKey: CodingKeys.dateOp.rawValue)
      aCoder.encode(dateVar, forKey: CodingKeys.dateVar.rawValue)
      aCoder.encode(enumOp?.rawValue, forKey: CodingKeys.enumOp.rawValue)
      aCoder.encode(enumVar.rawValue, forKey: CodingKeys.enumVar.rawValue)
      aCoder.encode(intsOp, forKey: CodingKeys.intsOp.rawValue)
      aCoder.encode(intsVar, forKey: CodingKeys.intsVar.rawValue)
      aCoder.encode(itemsOp, forKey: CodingKeys.itemsOp.rawValue)
      aCoder.encode(itemsVar, forKey: CodingKeys.itemsVar.rawValue)
      aCoder.encode(enumsOp?.map { $0.rawValue }, forKey: CodingKeys.enumsOp.rawValue)
      aCoder.encode(enumsVar.map { $0.rawValue }, forKey: CodingKeys.enumsVar.rawValue)
      aCoder.encode(enumsIntVar.map { $0.rawValue }, forKey: CodingKeys.enumsIntVar.rawValue)
      aCoder.encode(intDictOp, forKey: CodingKeys.intDictOp.rawValue)
      aCoder.encode(intDictVar, forKey: CodingKeys.intDictVar.rawValue)
      aCoder.encode(intStringDictOp, forKey: CodingKeys.intStringDictOp.rawValue)
      // Nested arrays or dictionaries with enums can't be handled a.t.m. intEnumDictOp
      aCoder.encode(apiErrorOp?.rawValue, forKey: CodingKeys.apiErrorOp.rawValue)
      aCoder.encode(apiErrorVar.rawValue, forKey: CodingKeys.apiErrorVar.rawValue)
  }
  // sourcery:end
  
  // sourcery:inline:GodObject.IsEqual
  override func isEqual(_ object: Any?) -> Bool {
    guard let rhs = object as? GodObject else { return false }
        if self.boolVar != rhs.boolVar { return false }
        if self.intOp != rhs.intOp { return false }
        if self.intVar != rhs.intVar { return false }
        if self.stringOp != rhs.stringOp { return false }
        if self.stringVar != rhs.stringVar { return false }
        if self.doubleOp != rhs.doubleOp { return false }
        if self.doubleVar != rhs.doubleVar { return false }
        if self.floatOp != rhs.floatOp { return false }
        if self.floatVar != rhs.floatVar { return false }
        if self.userOp != rhs.userOp { return false }
        if self.userVar != rhs.userVar { return false }
        if self.dateOp != rhs.dateOp { return false }
        if self.dateVar != rhs.dateVar { return false }
        if self.enumOp != rhs.enumOp { return false }
        if self.enumVar != rhs.enumVar { return false }
        if self.intsOp != rhs.intsOp { return false }
        if self.intsVar != rhs.intsVar { return false }
        if self.itemsOp != rhs.itemsOp { return false }
        if self.itemsVar != rhs.itemsVar { return false }
        if self.enumsOp != rhs.enumsOp { return false }
        if self.enumsVar != rhs.enumsVar { return false }
        if self.enumsIntVar != rhs.enumsIntVar { return false }
        if self.intDictOp != rhs.intDictOp { return false }
        if self.intDictVar != rhs.intDictVar { return false }
        if self.intStringDictOp != rhs.intStringDictOp { return false }
        if self.intEnumDictOp != rhs.intEnumDictOp { return false }
        if self.apiErrorOp != rhs.apiErrorOp { return false }
        if self.apiErrorVar != rhs.apiErrorVar { return false }
    return true
  }
  // sourcery:end
}
