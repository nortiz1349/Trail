//
//  PlaceDetailView.swift
//  Trail
//
//  Created by Nortiz M1 on 2022/09/26.
//

import SwiftUI

struct PlaceDetailView: View {
	
	var place: Place
	
	var body: some View {
	
		ScrollView(showsIndicators: false) {
			VStack {
				PlaceDetailHeader(place: place)
				
				MapView(coordinate: place.locationCoordinate)
					.frame(height: 200)
					.cornerRadius(10)
				
				HStack {
					Text("루트")
						.font(.headline)
						.fontWeight(.bold)
					Spacer()
				}
				
				Rectangle()
					.frame(height: 200)
					.cornerRadius(15)
					.foregroundColor(.gray)
				
				HStack {
					Text("컨디션")
						.font(.headline)
						.fontWeight(.bold)
					Spacer()
				}
				Rectangle()
					.frame(height: 200)
					.cornerRadius(15)
					.foregroundColor(.gray)
			}
			.padding()
		}
		.navigationTitle(place.name)
	}
}

struct PlaceDetailView_Previews: PreviewProvider {
	static var previews: some View {
		PlaceDetailView(place: places[0])
	}
}
