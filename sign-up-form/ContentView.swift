//
//  ContentView.swift
//  sign-up-form
//
//  Created by Динмуханбет Айжарыков on 13.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { _ in
            VStack {
                Image(systemName: "lock.open.display").resizable().frame(width: 70, height: 70)
                
                ZStack {
                    Text("Hello World")
                }
                HStack(spacing: 15) {
                    Rectangle().fill(Color.gray).frame(height: 1)
                    Image(systemName: "dot.scope.display")
                    Rectangle().fill(Color.gray).frame(height: 1)
                }.padding(.horizontal, 30).padding(.top, 30)
                
                HStack (spacing: 15) {
                    Button(action: {
                        //
                    }) {
                        Image(systemName: "globe.central.south.asia").renderingMode(.original).frame(width: 50, height: 50).clipShape(Circle())
                    }
                    Button(action: {
                        //
                    }) {
                        Image(systemName: "sun.max.circle").renderingMode(.original).frame(width: 50, height: 50).clipShape(Circle())
                    }
                    Button(action: {
                        //
                    }) {
                        Image(systemName: "sun.max.trianglebadge.exclamationmark").renderingMode(.original).frame(width: 50, height: 50).clipShape(Circle())
                    }
                }.padding(.top, 30)
            }.padding(.vertical)
        }.background(Color.white).edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
