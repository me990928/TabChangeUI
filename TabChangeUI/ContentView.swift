//
//  ContentView.swift
//  TabChangeUI
//
//  Created by Yuya Hirose on 2023/07/05.
//

import SwiftUI

struct ContentView: View {
    
    @State var xOffset:CGFloat = 0
    
    var body: some View {
        
        GeometryReader { geoVal in
            VStack(spacing: 0) {
                    HStack{
                        Spacer().frame(width: geoVal.size.width / 5)
                        VStack(){
                            Button {
                                print("ELEMON")
                                xOffset = geoVal.size.width / 5.5
                            } label: {
                                Text("ELEMON").font(.title2)
                            }
                        }
                        Spacer()
                        VStack(){
//                            Spacer().frame(height: 40)
                            Button {
                                print("Health")
                                xOffset = geoVal.size.width / 1.71
                            } label: {
                                Text("Health").font(.title2)
                            }
                        }
                        Spacer().frame(width: geoVal.size.width / 5)
                    }.foregroundColor(.white)
                        .background(.mint)
                        .frame(width: geoVal.size.width)
//                        .ignoresSafeArea()
                HStack{
//                    Spacer().frame(width: xOffset).animation(.default, value: xOffset)
                    Text("").frame(width: 100, height: 3).background(.pink).offset(x: xOffset).animation(.default, value: xOffset)
                    Spacer()
                }.onAppear(){
                    xOffset = geoVal.size.width / 5.5
                }
            }.background(.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
