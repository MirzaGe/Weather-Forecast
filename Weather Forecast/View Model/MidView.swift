//
//  MidView.swift
//  Weather Forecast
//
//  Created by sherry on 05/09/2021.
//

import SwiftUI

struct MidView: View {
    @ObservedObject var forecastViewModel:
    ForecastViewModel
    var body: some View {
        
        VStack {
            VStack {
                
                Text("\(self.forecastViewModel.currentCountry)")
                
            }
        }
        
    }
}

