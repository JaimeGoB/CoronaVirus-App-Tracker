//
//  MapContainerView.swift
//  CoronaStats
//
//  Created by sj on 7/2/20.
//  Copyright © 2020 sj. All rights reserved.
//

import SwiftUI

struct MapContainerView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    
    
    var body: some View {
        
        MapView(countryData: $covidFetch.allCountries)
        
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
