//
//  SwiftUIView.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 7/3/23.
//

import SwiftUI

struct URLImage: View{
    let urlString: String
    
    @State var data: Data?
    
    var body: some View{
        if let data = data, let uiimage = UIImage(data: data){
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 70)
                .background(Color.gray)
        } else {
            Image(systemName: "video")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 70)
                .background(Color.gray)
                .onAppear{
                    fetchData()
                }
        }
        
    }
    private func fetchData() {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {data, _, _ in
            self.data = data
            
        }
        task.resume()
    }
}


struct SwiftUIView: View {
    
    @EnvironmentObject var modelData: ModelData
    @StateObject var viewModel = ViewModelStart()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(viewModel.courses, id: \.self){ course in
                    HStack{
                        if course.image != nil {
                            AsyncImage(url: URL(string: course.image!)) { phase in
                                if let image = phase.image{
                                    image.resizable()
                                        .scaledToFit()
                                        .frame(width: 190/1.5, height: 108/1.5)
                                        .clipped()
                                } else if phase.error != nil {
                                    Text(phase.error?.localizedDescription ?? "error")
                                        .foregroundColor(Color.pink)
                                        .frame(width: 190/1.5, height: 108/1.5)
                                } else{
                                    ProgressView()
                                        .frame(width: 190/1.5, height: 108/1.5)
                                }
                                
                                /*
                                 AsyncImage(url: URL(string: course.image!)) { image in image.resizable()
                                 //.scaledToFill()
                                 .frame(width: 190/1.5, height: 108/1.5)
                                 .clipped()
                                 } placeholder: {
                                 ProgressView()
                                 .frame(width: 100, height: 100)
                                 
                                 }
                                 */
                            }
                        }
                        else {
                            Color.gray.frame(width: 190/1.5, height: 108/1.5)
                        }
                        //URLImage(urlString: course.image ?? "", data: nil)
                        Text(course.name)
                            .bold()
                    }
                }
            }
            .navigationTitle("Courses")
            .onAppear{
                viewModel.fetch()
            }
        }
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

