//
//  CountryDataRow.swift
//  CoronaStats
//
//  Created by sj on 6/30/20.
//  Copyright © 2020 sj. All rights reserved.
//

import SwiftUI

struct CountryDataRow: View {
    
    var countryData: CountryData
    
    HStack{
        Text("Country")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(width: 110, alignment: .leading)
            .padding(.leading, 15)
        
        Spacer()
        
        Text("Conf.")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.leading, 5)
        
        Spacer()

        
        Text("Death")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40 )
            .padding(.leading, 5)

        Spacer()

        Text("Recovered")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.trailing, 15)
        
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CountryDataRow_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRow(countryData: testCountryData)
    }
}
