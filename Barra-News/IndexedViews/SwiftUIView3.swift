//
//  SwiftUIView.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 7/3/23.
//

import SwiftUI

struct SwiftUIView3: View {
    var body: some View {
        HStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .italic()
            .foregroundColor(.red)
            
            Spacer()
        }.padding()
    }
}

struct SwiftUIView3_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
