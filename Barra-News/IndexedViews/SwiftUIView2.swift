//
//  SwiftUIView.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 7/3/23.
//

import SwiftUI

struct SwiftUIView2: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        HStack {
            Text(modelData.initInfo[1].title)
                .font(.largeTitle)
                .bold()
            .foregroundColor(.blue)
            Spacer()
        }
        .padding()
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
