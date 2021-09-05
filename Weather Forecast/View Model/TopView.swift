//
//  TopView.swift
//  Weather Forecast
//
//  Created by sherry on 05/09/2021.
//

import SwiftUI

struct TopView: View {
    
    let UIWidth = UIScreen.main.bounds.width
    let UIHeight = UIScreen.main.bounds.height
    
    
    @State var showField: Bool = false
    @ObservedObject var forecastViewModel: ForecastViewModel
    
    var body: some View {
        
        ZStack {
            ZStack(alignment: .leading){
                TextField("Enter City Name",text:self.$forecastViewModel.cityName, onCommit:  {
                    self.forecastViewModel.searchCity()
                })
            }.padding(.all,10)
            .frame(width: UIWidth - 50, height: 50)
            .background(Color("lightBlue"))
            .cornerRadius(30)
            .foregroundColor(.white)
            .offset(x: self.showField ? 0 : (-UIWidth / 2 - 180))
            .animation(.spring())

        }
    }
}
