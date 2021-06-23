//
//  ContentView.swift
//  GeometryReader
//
//  Created by Thongchai Subsaidee on 23/6/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Image("smaile")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .aspectRatio(contentMode: .fit)
            }
            
            VStack {
                GeometryReader { geo in
                    Image("smaile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                }
            }
            .background(Color.green)
            
            VStack {
                GeometryReader { geo in
                    Image("smaile")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                        .position(x: geo.size.width / 2, y: geo.size.height / 2)
                }
            }
            .background(Color.red)
            
            VStack {
                GeometryReader { geo in
                    Image("smaile")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                        .position(x: geo.frame(in: .local).midX, y: geo.frame(in: .local).midY)
                }
            }
            .background(Color.gray)
            
            VStack {
                GeometryReader { geo in
                    VStack {
                        Spacer()
                        Text("test ..........")
                            .background(Color.red)
                    }
                    .frame(width: geo.size.width, height: nil, alignment: .topLeading)
                }
            }
            .background(Color.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
