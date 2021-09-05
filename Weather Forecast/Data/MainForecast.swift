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
    var list: [MainForecastParams]?
}

struct MainForecastParams: Decodable {
    var dt: Int?
    var temp: Temp? // temp is feild & also hav some objs which contains other fields
    var pressure: Double?
    var humidity: Int?
    var weather: [Weather]?
    var speed: Double?
    var deg: Int?
    var clouds:Int?
}

struct Temp:Decodable {
    var day: Double?
    var min: Double?
    var max: Double?
    var night: Double?
    var eve: Double?
    var morn: Double?
}

struct City: Decodable {
    var id: Int?
    var name: String?
    var coord: Coord?
    var country: String?
    var population: Int?
}

struct Coord: Decodable {
    var lon: Double?
    var lat: Double?
}

struct Weather {
    var id: Int?
    var main: String?
    var description: String?
    var icon: String?
}
