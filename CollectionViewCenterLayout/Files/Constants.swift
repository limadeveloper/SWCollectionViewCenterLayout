//
//  Constants.swift
//  CollectionViewCenterLayout
//
//  Created by John Lima on 09/01/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import Foundation
import UIKit

enum Texts: String {
    case text01 = "Star Wars"
    case text02 = "Darth Vader"
    case text03 = "Light Saber"
    case text04 = "Cylon 1"
    case text05 = "Cylon 2"
    case text06 = "R2 D2"
}

struct Images {
    static let image01 = #imageLiteral(resourceName: "StarWars")
    static let image02 = #imageLiteral(resourceName: "Vader")
    static let image03 = #imageLiteral(resourceName: "LightSaber")
    static let image04 = #imageLiteral(resourceName: "Cylon1")
    static let image05 = #imageLiteral(resourceName: "Cylon2")
    static let image06 = #imageLiteral(resourceName: "R2-D2")
}

enum DeviceType: Int {
    case type01 = 1
    case type02 = 2
    case type03 = 3
}
