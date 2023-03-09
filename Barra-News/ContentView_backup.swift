//
//  ContentView.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 7/3/23.
//

import SwiftUI

struct ContentView_backup: View {
    
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
                    .navigationTitle("Home")
            }
            /*
             .onAppear{
                isShowing = false
            }
             */
        }
    }
}

struct ContentView_backup_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView_backup: View {
    @Environment(\.colorScheme) var colorScheme
    //Todo hacer un modo oscuro, con if colorScheme
    var body: some View {
        ZStack {
            
            Color(colorScheme == .light ? .white : .black)

                
            VStack(alignment: .leading) {
                Text("Hello, world!")
                    .padding(.vertical)
                Text(colorScheme == .dark ? "In dark mode" : "In light mode")
                    .padding(.vertical)
                Spacer()
            }
            
        }
    }
}
