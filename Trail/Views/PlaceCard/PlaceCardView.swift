//
//  PlaceCardView.swift
//  Trail
//
//  Created by Nortiz M1 on 2022/09/26.
//

import SwiftUI

struct PlaceCardView: View {
	
	var place: Place
	
	var body: some View {
		ZStack {
			PlaceCardBackground(place: place)
			
			VStack{
				PlaceCardTitle(place: place)
					.padding(.horizontal, 8.0)
				PlaceCardImage(place: place)
					.padding(.horizontal, 5)
					.padding(.bottom, -8)
			}
		}
		.padding(.horizontal)
		.padding(.vertical, 5)
	}
}

struct PlaceCardView_Previews: PreviewProvider {
	static var previews: some View {
		PlaceCardView(place: places[0])
			.previewLayout(.sizeThatFits)
		PlaceCardView(place: places[1])
			.previewLayout(.sizeThatFits)
	}
}
