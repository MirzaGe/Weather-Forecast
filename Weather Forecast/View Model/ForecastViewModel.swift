//
//  ForecastViewModel.swift
//  Weather Forecast
//
//  Created by sherry on 05/09/2021.
//
import Combine
import SwiftUI

class ForecastViewModel: ObservableObject {
//bcuz once this class is called is going to broadcast the msg to all the views that r using this model for updated data to use
    
    var weatherService: Services!
    var cityName:String = "Karachi"
    /*for getting info */ @Published var weatherForecast = ForecastWeatherResponse() //object we r instantiating
    init() {
        self.weatherService = Services()
    }
    
    var currentCity: String {
        if let city = self.weatherForecast.city?.name  // has all the payload
        {
            return city
        }else {
            return ""
        }
    }
    
    var currentCountry: String {
        if let country = self.weatherForecast.city?.country{
            return country
        }else {
            return ""
        }
    }
    
    
    func searchCity() {
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        // for making string senticized
        {
            fetchWeatherForecast(by: city)
        }
    }
    
    func fetchWeatherForecast(by city: String) {
        self.weatherService.getWeatherData(city: cityName)
        {
            forecast in
            if let forecast = forecast {
                DispatchQueue.main.async {
                    self.weatherForecast = forecast
                }
            }
        }
    }
}

