//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 여나경 on 2022/06/15.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
//    var body: some View {
//        LandmarkList()
//    }
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                    
                }
                .font(.subheadline)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.headline)
                Text(landmark.description)
                    .font(.footnote)
            }
            .padding()
            
//            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
