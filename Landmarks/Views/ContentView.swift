//
//  ContentView.swift
//  Landmarks
//
//  Created by 여나경 on 2022/06/14.
//

import SwiftUI

struct ContentView: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Welcome, Aiden!")
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                    
                }
                .font(.subheadline)
                
                Divider()
                
                Text("Hahahahahahaha")
                    .font(.headline)
                Text("This is my first but not the last SwiftUI project")
                    .font(.footnote)
            }
            .padding()
            
            Spacer()
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarks[0])
    }
}
