//
//  Constants.swift
//  PixelCity
//
//  Created by 김진선 on 2017. 10. 14..
//  Copyright © 2017년 김진선. All rights reserved.
//

import Foundation

let apiKey = "983f07cd9c1dc41b255e707c54d0871c"

func flickrUrl(forApiKey key:String, withAnnotation annotation:DroppablePin, andNumberOfPhotos number:Int) -> String {
    
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    
}

