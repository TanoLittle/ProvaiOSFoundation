//
//  VehicleView.swift
//  PrimoEsempio
//
//  Created by gaetanooliva on 14/02/23.
//

import SwiftUI

struct VehicleView: View {
    var vehicle: Vehicle
    var body: some View {
        Image(systemName: vehicle.image)
            .resizable()
            .frame(width: 40, height: 40)
        
    }
}

struct VehicleView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleView(vehicle: Vehicle(name:"", image:""))
    }
}
