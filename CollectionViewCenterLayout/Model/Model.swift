//
//  Model.swift
//  CollectionViewCenterLayout
//
//  Created by John Lima on 09/01/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import Foundation
import UIKit

class Model {

    var title: Texts?
    var image: UIImage?
    
    init() {}
    
    init(title: Texts, image: UIImage) {
        self.title = title
        self.image = image
    }
}

extension Model {
    
    static func getData() -> [Model] {
        return [
            Model(title: .text01, image: Images.image01),
            Model(title: .text02, image: Images.image02),
            Model(title: .text03, image: Images.image03),
            Model(title: .text04, image: Images.image04),
            Model(title: .text05, image: Images.image05),
            Model(title: .text06, image: Images.image06)
        ]
    }
}
