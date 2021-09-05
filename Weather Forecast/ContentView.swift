//
//  ContentView.swift
//  Weather Forecast
//
//  Created by sherry on 02/09/2021.
//

import SwiftUI

struct ContentView: View {
  
    @State var showView: Bool = false
  @ObservedObject  var forecastViewModel: ForecastViewModel
    init() {
        self.forecastViewModel = ForecastViewModel()
    }
    var body: some View {
        ZStack {
            BackSplash()
            
            
            VStack {
                TopView(showField: self.showView, forecastViewModel: self.forecastViewModel)
            }
        
               
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
