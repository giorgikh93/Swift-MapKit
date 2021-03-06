//
//  LandmarkDetails.swift
//  SwiftUI-Tutorial
//
//  Created by giorgi on 20.05.22.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark:Landmark
    var body: some View {
      
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)

                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)

                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)

                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()

                    Text("About Turtle Rock")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()

                Spacer()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
    }
       
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: landmarks[1])
    }
}
