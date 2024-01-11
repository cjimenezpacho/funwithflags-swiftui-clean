//
//  MapView.swift
//  FunWithFlags
//
//  Created by Carlos on 11/1/24.
//

import MapKit
import SwiftUI

struct MapView: View {
    private let lat: Float
    private let lon: Float

    init(lat: Float, lon: Float) {
        self.lat = lat
        self.lon = lon
    }

    var body: some View {
        Map(initialPosition: .region(region))
    }

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: CLLocationDegrees(self.lat),
                                           longitude: CLLocationDegrees(self.lon)),
            span: MKCoordinateSpan(latitudeDelta: 3, longitudeDelta: 3)
        )
    }
}

#Preview {
    MapView(lat: -10.5, lon: 105)
}
