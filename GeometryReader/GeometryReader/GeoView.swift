//
//  GeoView.swift
//  GeometryReader
//
//  Created by Thongchai Subsaidee on 23/6/2564 BE.
//


import SwiftUI

struct GeoView: View {
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 3)
            
            GeometryReader { geo in
                
                VStack {
                    Color.red
                        .overlay(
                            Rectangle()
                                .frame(width: geo.size.width * 0.75, height: geo.size.height / 3 * 0.75)
                        )
                    
                    Color.yellow
                        .overlay(
                            Circle()
                                .frame(width: geo.size.width * 0.75, height: geo.size.height / 3 * 0.75)
                        )
                    
                    Color.green
                        .overlay(
                            Rectangle()
                                .frame(width: geo.size.width * 0.75, height: geo.size.height / 3 * 0.75)
                        )
                }
                .frame(width: .infinity, height: .infinity)
            }
        }
        .foregroundColor(Color.orange)
    }
}

struct GeoView_Previews: PreviewProvider {
    static var previews: some View {
        GeoView()
    }
}
