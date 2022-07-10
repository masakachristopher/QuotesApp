//
//  Extensions.swift
//  QuotesApp
//
//  Created by Christopher Masaka on 10/07/2022.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Could not find \(file) in the bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Could not load \(file) from the bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else{
            fatalError("Could not decode \(file) from the bundle.")
        }
        
        return loadedData
    }
}
