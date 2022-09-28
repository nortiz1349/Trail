//
//  PlaceCardTitle.swift
//  Trail
//
//  Created by Nortiz M1 on 2022/09/27.
//

import SwiftUI

struct PlaceCardTitle: View {
	
	var place: Place
    
	var body: some View {
		HStack {
			VStack {
				HStack {
					Text(place.city)
						.font(.caption)
						.fontWeight(.medium)
						.foregroundColor(.secondary)
					Spacer()
				}
				HStack {
					Text(place.name)
						.font(.title)
						.fontWeight(.heavy)
						.foregroundColor(.primary)
					Spacer()
				}
				HStack {
					Image(systemName: "map")
						.font(.caption2)
						.foregroundColor(.primary)
						.padding(.trailing, -4)
					Text("\(place.trailCount) 개 경로 · \(place.category)")
						.font(.caption)
						.fontWeight(.regular)
						.foregroundColor(.primary)
					Spacer()
				}
			}
//			Spacer()
//			if place.isFavorite {
//				Image(systemName: "bookmark.fill")
//					.foregroundColor(.yellow)
//			} else {
//				Image(systemName: "bookmark")
//					.foregroundColor(.yellow)
//			}
		}
    }
}

struct PlaceCardTitle_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCardTitle(place: places[0])
			.previewLayout(.sizeThatFits)
    }
}
