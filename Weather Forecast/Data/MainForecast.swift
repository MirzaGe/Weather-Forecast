//
//  MainForecast.swift
//  Weather Forecast
//
//  Created by sherry on 03/09/2021.
//

import Foundation
import SwiftUI

var ForecastWeatherResponse: Decodable {
    var city: City? //we havent created so ? /* Bcuz it has its own properties & fields*/
    var cod: String?
    var message: Double?
    var cnt: Int?
    var list: [MainForecastParams]
}

struct MainForecastParams: Decodable {
    var dt: Int
    var temp: Temp?// temp is feild & also hav some objs which contains other fields
    
    
    
}
