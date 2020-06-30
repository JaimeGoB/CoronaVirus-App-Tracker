//
//  CountryDataRowView.swift
//  CoronaStats
//
//  Created by sj on 6/30/20.
//  Copyright © 2020 sj. All rights reserved.
//

import SwiftUI

struct CountryDataRowView: View {

    var countryData: CountryData

    var body: some View {

        HStack{
            Text(countryData.country)
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(2)
                .frame(width: 110, alignment: .leading)
            
            Spacer()
            
            Text(countryData.confirmed.formatNumber())
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
            
            Spacer()

            
            Text(countryData.deaths.formatNumber())
                .frame(width: 50, height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.red)
                .padding(.leading, 5)

            Spacer()

            Text(countryData.recovered.formatNumber())
                .frame(width: 50, height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.green)
        }
    }
}

//Default values in test country data are all 0's
struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
