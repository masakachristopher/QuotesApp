//
//  QuoteModel.swift
//  QuotesApp
//
//  Created by Christopher Masaka on 10/07/2022.
//

import Foundation

struct QuoteModel : Decodable, Identifiable {
    var id = UUID()
    var anime : String
    var character: String
    var quote: String
    
    private enum CodeingKeys: String, CodingKey{
        case anime, character, quote
    }
    
    static var SampleQuotes: [QuoteModel] = Bundle.main.decode(file: "quotes.json")
    static var SampleQuote = SampleQuotes.first!
    
}
