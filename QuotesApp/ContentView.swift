//
//  ContentView.swift
//  QuotesApp
//
//  Created by Christopher Masaka on 10/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear{
                print(QuoteModel.SampleQuotes)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
