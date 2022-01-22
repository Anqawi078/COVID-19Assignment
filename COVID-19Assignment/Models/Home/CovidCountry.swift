//
//  CovidCountry.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Foundation
import MapKit

class CovidCountry: NSObject, MKAnnotation {
  let title: String?
  let locationName: String?
  let discipline: String?
  let coordinate: CLLocationCoordinate2D
  let imageUrl : String?
  init(
    title: String?,
    locationName: String?,
    discipline: String?,
    coordinate: CLLocationCoordinate2D,
    imageUrl : String?
  ) {
    self.title = title
    self.locationName = locationName
    self.discipline = discipline
    self.coordinate = coordinate
    self.imageUrl = imageUrl
    
    super.init()
  }

  var subtitle: String? {
    return locationName
  }
    
    var imageURL: String? {
      return imageUrl
    }
}
