//
//  Extensions.swift
//  CollectionViewCenterLayout
//
//  Created by John Lima on 09/01/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import Foundation
import UIKit

extension CGFloat {
    
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    
    static func randomColor() -> UIColor {
        return UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    }
}
