//
//  SideMenuView.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 7/3/23.
//

import SwiftUI

struct SideMenuView: View {
    
    let diffViews: [AnyView] = [AnyView(SwiftUIView()),
                                AnyView(SwiftUIView2()),
                                AnyView(SwiftUIView3()),
                                AnyView(SwiftUIView4()),
                                AnyView(SwiftUIView5()),
                                AnyView(SwiftUIView6()),]
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                // Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 240)
                
                
                
                // Cell items
                ForEach(SideMenuViewModel.allCases, id: \.self) {option in
                    NavigationLink(
                        destination: diffViews[option.order],
                        label: {
                            SideMenuOptionView(viewModel: option)
                        }                    )
                    
                }
                
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
