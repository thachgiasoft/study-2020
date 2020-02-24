//
//  MapView.swift
//  Tapioca milk tea
//
//  Created by sh0 on 2020/02/24.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var location: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.01,
                                    longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: location,
                                        span: span)
        view.setRegion(region, animated: true)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(location: dataStore.shops[0].locationCoordinate)
    }
}
