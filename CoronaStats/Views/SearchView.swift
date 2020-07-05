//
//  SearchView.swift
//  CoronaStats
//
//  Created by sj on 7/1/20.
//  Copyright © 2020 sj. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack{
            TextField("Country...", text: $searchText)
            .padding()
        }
    .frame(height: 50)
    .background(Color("cardBackgroundGray"))
    }
}
