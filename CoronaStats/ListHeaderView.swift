//
//  ListHeaderView.swift
//  CoronaStats
//
//  Created by sj on 6/30/20.
//  Copyright © 2020 sj. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    
    var body: some View {
        
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
        //Background color of header
        .background(Color.gray)
    
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}
