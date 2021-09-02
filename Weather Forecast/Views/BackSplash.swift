//
//  BackSplash.swift
//  Weather Forecast
//
//  Created by sherry on 02/09/2021.
//

import SwiftUI

struct BackSplash: View {
    var body: some View {
    Rectangle()
        .fill(LinearGradient(gradient: Gradient(colors: [Color("lightPink"),Color("lightBlue")]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}

struct BackSplash_Previews: PreviewProvider {
    static var previews: some View {
        BackSplash()
    }
}
