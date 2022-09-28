//
//  MapView.swift
//  Trail
//
//  Created by Nortiz M1 on 2022/09/27.
//

import SwiftUI
import MapKit

struct MapView: View {
	var coordinate: CLLocationCoordinate2D
	@State private var region = MKCoordinateRegion()
	
    var body: some View {
        Map(coordinateRegion: $region)
			.onAppear {
				setRegion(coordinate)
			}
    }
	
	private func setRegion(_ coordinate: CLLocationCoordinate2D) {
		region = MKCoordinateRegion(
			center: coordinate,
			span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
		)
	}
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 35.231474, longitude: 129.045044))
    }
}
