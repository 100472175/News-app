//
//  ModelBase.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 8/3/23.
//

import Foundation
import Combine

final class ModelData:ObservableObject{
    
    @Published var initInfo: [Category] = load("info.json")
    
    // Aquí es donde irá el resto de jsons, cuando los tengasmos y los podamos decodificar.
    // Recordar que se tienen que hacer una estructura para cada tipo, como Categoy en Category.swift
    
}



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
