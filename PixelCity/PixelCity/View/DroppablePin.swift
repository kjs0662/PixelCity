//
//  DroppablePin.swift
//  PixelCity
//
//  Created by 김진선 on 2017. 10. 13..
//  Copyright © 2017년 김진선. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin : NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
