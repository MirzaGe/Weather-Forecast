//
//  ContentView.swift
//  Weather Forecast
//
//  Created by sherry on 02/09/2021.
//

import SwiftUI

struct ContentView: View {
    
  @ObservedObject  var forecastViewModel: ForecastViewModel
    init() {
        self.forecastViewModel = ForecastViewModel()
    }
    var body: some View {
        ZStack {
            BackSplash()
            
            TextField("Enter City Name",text:self.$forecastViewModel.cityName, onCommit: {
                self.forecastViewModel.searchCity()
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
