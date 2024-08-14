//
//  ContentView.swift
//  sign-up-form
//
//  Created by Динмуханбет Айжарыков on 13.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    
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
            }.padding(.vertical, 200)
        }.background(Color.black.edgesIgnoringSafeArea(.all)).preferredColorScheme(.dark
        )
    }
}


struct CShape: Shape {
    func path(in rect: CGRect) -> Path {
        return Path {
            path in path.move(to: CGPoint(x: rect.width, y: 100))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: 0))
        }
    }
}


struct CShape1: Shape {
    func path(in rect: CGRect) -> Path {
        return Path {
            path in path.move(to: CGPoint(x: 0, y: 100))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
    }
}


struct Login: View {
    @State var email = ""
    @State var pass = ""
    @Binding var index: Int
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    VStack(spacing: 10) {
                        Text("Login").foregroundColor(self.index == 0 ? .white : .gray).font(.title).fontWeight(.bold)
                        Capsule()
                            .fill(self.index == 0 ? Color.blue : Color.clear).frame(width: 100, height: 5)
                    }
                    Spacer()
                }.padding(.top, 30)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "envelop.fill").foregroundColor(Color.white)
                        TextField("Email Address", text: self.$email)
                    }
                    Divider()
                        .background(Color.white.opacity(0.5))
                }.padding(.horizontal).padding(.top, 40)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "envelop.fill").foregroundColor(Color.white)
                        TextField("Email Address", text: self.$email)
                    }
                    Divider()
                        .background(Color.white.opacity(0.5))
                }.padding(.horizontal).padding(.top, 40)
            }
        }
    }
}

#Preview {
    ContentView()
}
