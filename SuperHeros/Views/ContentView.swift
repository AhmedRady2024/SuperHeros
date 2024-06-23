//
//  ContentView.swift
//  SuperHeros
//  Created by Ahmed Rady on 12/06/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView(.vertical){
            
            ForEach(SuperHeroData){
                item in
                SuperHeroView(SuperH: item)
            }//foreach
        }//scrollview
        .ignoresSafeArea()
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
