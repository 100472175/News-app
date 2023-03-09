//
//  SwiftUIView.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 7/3/23.
//

import SwiftUI

struct SwiftUIView6: View {
    var body: some View {
        HStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                .italic()
            .foregroundColor(.red)
            
            Spacer()
        }.padding()
    }
}

struct SwiftUIView6_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
