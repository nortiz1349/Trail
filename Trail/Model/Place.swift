//
//  Mountain.swift
//  Trail
//
//  Created by Nortiz M1 on 2022/09/26.
//

import Foundation
import SwiftUI
import CoreLocation

struct Place: Hashable, Codable, Identifiable {
	var id: Int
	
	/// 장소 이름 (산, 파크)
	var name: String
	
	/// 행정구역
	var city: String
	
	/// 트레일 갯수
	var trailCount: Int
	
	/// 장소 설명
	var description: String
	
	/// 카테고리
	var category: String
	
	var isFavorite: Bool

	private var imageName: String
	/// 이미지 이름
	var image: Image {
		Image(imageName)
	}
	
	private var coordinates: Coordinates
	/// 장소 위,경도
	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(
			latitude: coordinates.latitude,
			longitude: coordinates.longitude
		)
	}
	
	struct Coordinates: Hashable, Codable {
		var latitude: Double
		var longitude: Double
	}
}
