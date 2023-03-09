//
//  SideMenuHeaderView.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 7/3/23.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            }

            
            VStack(alignment: .leading){
                Image("koala-1")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Eduardo Alarcón")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@edu_k15")
                    .font(.system(size: 14))
                    .padding(.bottom, 16)
                
                HStack (spacing: 12) {
                    HStack(spacing: 4){
                        Text("1,254").bold()
                        Text("Following")
                    }
                    HStack(spacing: 4) {
                        Text("607").bold()
                        Text("Followers")
                    }
                    Spacer()
                    
                }
                
                Spacer()
            }.padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
