//
//  ContentView.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 7/3/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var modelData: ModelData
    
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20:10)
                    .offset(x: isShowing ? 300:0, y:isShowing ? 40:0)
                    .scaleEffect(isShowing ? 0.8:1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()){
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(colorScheme == .light ? .black : .white)
                    }))
                //.navigationTitle("Villanueva del Pardillo")
            }
            /*
             .onAppear{
             isShowing = false
             }
             */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    @Environment(\.colorScheme) var colorScheme
    //Todo hacer un modo oscuro, con if colorScheme
    var body: some View {
        //ZStack {
        //Color(colorScheme == .light ? .white : .black)
        NavigationView(){
            List{
                Image("pueblo_inicio")
                    .resizable()
                    .padding()
                    .scaledToFit()
                Text("Hello, world!")
                    .padding(.vertical)
                Text(colorScheme == .dark ? "In dark mode" : "In light mode")
                    .padding(.vertical)
                
                Text("Sign In")
                    .font(.system(size: 45, weight: .bold, design: .default))
                    .foregroundColor(.red)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(
                        Rectangle().fill(Color.init(red: 0/255, green: 200/255, blue: 10/255)))
                Spacer()
            }
            .navigationTitle("Villanueva del Pardillo")
        }
        .padding()
        
    }
}
