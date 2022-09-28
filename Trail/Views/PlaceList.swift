//
//  PlaceList.swift
//  Trail
//
//  Created by Nortiz M1 on 2022/09/27.
//

import SwiftUI

struct PlaceList: View {
	
	var body: some View {
		NavigationStack {
			ScrollView {
				ForEach(places) { place in
					NavigationLink(destination: PlaceDetailView(place: place)) {
						PlaceCardView(place: place)
					}
				}
				.navigationTitle("장소")
			}
		}
	}
}

struct PlaceList_Previews: PreviewProvider {
	static var previews: some View {
		PlaceList()
	}
}
