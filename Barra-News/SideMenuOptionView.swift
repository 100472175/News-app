//
//  SideMenuOprionView.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 7/3/23.
//

import SwiftUI

struct SideMenuOptionView: View {
    //@EnvironmentObject var viewModel: SideMenuViewModel
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing:16) {
            Image(systemName: viewModel.imageName)
                .frame(width: 24, height: 24)
            Text(viewModel.title)
                . font (.system(size: 15, weight: .semibold))
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .profile)
    }
}
