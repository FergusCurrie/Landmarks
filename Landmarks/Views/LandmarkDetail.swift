//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by fergus on 21/05/23.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name).font(.title).foregroundColor(.yellow)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
