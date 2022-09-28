//
//  PlaceCardImage.swift
//  Trail
//
//  Created by Nortiz M1 on 2022/09/27.
//

import SwiftUI

struct PlaceCardImage: View {
	
	var place: Place
	
    var body: some View {
		place.image
			.resizable()
			.scaledToFill()
			.frame(width: UIScreen.main.bounds.size.width - 40, height: 140, alignment: .center)
			.clipped()
			.cornerRadius(10)
    }
}

struct PlaceCardImage_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCardImage(place: places[0])
			.previewLayout(.sizeThatFits)
    }
}
