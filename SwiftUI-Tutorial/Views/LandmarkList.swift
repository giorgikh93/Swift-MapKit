//
//  LandmarkList.swift
//  SwiftUI-Tutorial
//
//  Created by giorgi on 20.05.22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetails(landmark:landmark)
                        
                }label:{
                    LandmarkRow(landmark: landmark)
                        .navigationTitle("Landmarks")
                }
              
              
            }

        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
