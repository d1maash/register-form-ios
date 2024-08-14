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
                        Image(systemName: "eye.slash.fill").foregroundColor(Color.white)
                        TextField("Password", text: self.$pass)
                    }
                    Divider()
                        .background(Color.white.opacity(0.5))
                }.padding(.horizontal).padding(.top, 30)
                HStack {
                    Spacer(minLength: 0)
                    Button(action: {
                        //
                    }) {
                        Text("Forget Password?").foregroundStyle(Color.white.opacity(0.6))
                    }
                }.padding(.horizontal).padding(.top, 30)
                
            }.padding().padding(.bottom, 65).background(Color.blue).clipShape(CShape()).contentShape(CShape()).shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5).onTapGesture {
                self.index = 0
            }
            .cornerRadius(35).padding(.horizontal, 25)
            
            Button(action: {
                //
            }) {
                Text("Log In").foregroundColor(.white).fontWeight(.bold).padding(.vertical).padding(.horizontal, 50).background(Color.primary).clipShape(Capsule()).shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
            }
        }.offset(y: 35)
            .opacity(self.index == 0 ? 1 : 0)
    }
}



struct SignUp: View {
    @State var email = ""
    @State var pass = ""
    @State var Repass = ""
    @Binding var index: Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    Spacer(minLength: 0)
                    VStack(spacing: 10) {
                        Text("SignUp").foregroundColor(self.index == 1 ? .white : .gray).font(.title).fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 1 ? Color.blue : Color.clear).frame(width: 100, height: 5)
                    }
                }
                .padding(.top, 30)
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill").foregroundColor(Color.green)
                        SecureField("Password", text: self.$pass)
                    }
                    Divider()
                    
                        .background(Color.white.opacity(0.5))
                }.padding(.horizontal)
                    .padding(.top, 30)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(Color.green)
                        SecureField("Password", text: self.$Repass)
                    }
                    Divider().background(Color.white.opacity(0.5))
                }.padding(.horizontal)
                    .padding(.top, 30)
            }
            .padding().padding(.bottom, 65)
            background(Color.green).clipShape(CShape1())
                .contentShape(CShape1())
                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
                .onTapGesture {
                    self.index = 1
                    
                }
                .cornerRadius(35)
            Button(action: {
                //
            }) {
                Text("SignUp").foregroundColor(.white).fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .clipShape(Capsule())
                    .shadow(color: .white.opacity(0.1), radius: 5, x: 0, y: -5)
            }
        }
    }
}

#Preview {
    ContentView()
}
