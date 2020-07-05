//
//  ContentView.swift
//  CoronaStats
//
//  Created by sj on 6/30/20.
//  Copyright © 2020 sj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        TabView{
            RecentView()
            .tabItem{
                Tab(imageName: "chart.bar", text: "Recent")
            }
            .tag(0)
            
            MapContainerView()
                .edgesIgnoringSafeArea(.vertical
            )
            .tabItem{
                Tab(imageName: "map", text: "Map")
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//This is for the main UI and the bottom part that has the images
private struct Tab: View{
    
    let imageName: String
    let text: String
    
    var body: some View{
        VStack{
            Image(systemName: imageName)
            Text(text)
        }
    }
}
