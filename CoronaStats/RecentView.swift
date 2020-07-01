//
//  RecentView.swift
//  CoronaStats
//
//  Created by sj on 6/30/20.
//  Copyright © 2020 sj. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    @State var searchText = ""
    
    var body: some View {
        
        NavigationView{
            
            VStack{
            
                TotalDataView(totalData:  covidFetch.totalData)
                
                ListHeaderView()
                
                List{
                    
                    ForEach(covidFetch.allCountries.filter{
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country){CountryData in
                        
                        CountryDataRowView(countryData: CountryData)
                    }
                }
            }//ed of vstack
        }//end of navigation
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
