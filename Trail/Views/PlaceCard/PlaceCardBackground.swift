//
//  PlaceCardBackground.swift
//  Trail
//
//  Created by Nortiz M1 on 2022/09/27.
//

import SwiftUI

struct PlaceCardBackground: View {
	
	var place: Place

    var body: some View {
		place.image
			.resizable()
			.scaledToFill()
			.frame(width: UIScreen.main.bounds.size.width - 30, height: 230, alignment: .center)
			.clipped()
			.blur(radius: 20, opaque: true)
			.opacity(0.5)
			.cornerRadius(10)
			.shadow(radius: 10)
    }
}

struct PlaceCardBackground_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCardBackground(place: places[0])
			.previewLayout(.sizeThatFits)
    }
}
