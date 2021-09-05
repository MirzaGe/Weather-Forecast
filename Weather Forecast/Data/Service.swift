//
//  Service.swift
//  Weather Forecast
//
//  Created by sherry on 05/09/2021.
//

import Foundation

class Services {
    let appID = "3e5c961e456dd3fff16c64f0dfc1bc0b"
    
    func getWeatherData(city: String, completion: @escaping
                            (ForecastWeatherResponse?)->()) { /* must change to this type inorder to get it all!
         
         
         my weather api from openWeathermap.org*/
        guard let url =  URL (string: "https://samples.openweathermap.org/data/2.5/forecast/daily?q=\(city)&appid=\(appID)")
        else {
            completion(nil)
            return
        }
        //invokink urlsesion
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let  data = data, error  == nil else {
                completion(nil)
                return
            }
            //print(data)
            let weatherResponse = try?
                JSONDecoder().decode(ForecastWeatherResponse.self, from: data)
             print("data:\(weatherResponse!)")
            if let weatherResponse = weatherResponse {
                //let weather = weatherResponse.list
                completion(weatherResponse)//just give the entire payload response
                //completion (weather![0]) to get just the list
            } else {
                completion(nil)
                
            }
            
        }.resume()
    }
}
