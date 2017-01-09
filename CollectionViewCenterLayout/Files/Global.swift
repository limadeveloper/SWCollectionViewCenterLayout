//
//  Global.swift
//  CollectionViewCenterLayout
//
//  Created by John Lima on 09/01/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import Foundation
import UIKit

class Global {
    
    /// Verify the current device
    ///
    /// - Returns: type01: minor iPhone SE size, type02: greater iPhone SE size, type03: iPad size
    class func getDeviceType() -> DeviceType {
        
        struct Device {
            static let iPhoneSE: CGFloat = 568
            static let iPhone7Plus: CGFloat = 736
        }
        
        let height = UIScreen.main.bounds.height
        
        if height <= Device.iPhoneSE {
            // minor iPhone SE size
            return .type01
        }else if height > Device.iPhoneSE && height <= Device.iPhone7Plus {
            // greater iPhone SE size
            return .type02
        }else {
            // iPad size
            return .type03
        }
    }
    
}
