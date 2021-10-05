//
//  ContentView.swift
//  Memorize
//
//  Created by Pedro Henrique Calado on 05/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // pode emitir toda essa parte inicial da zstack no ()
//        ZStack(alignment: .top, content: {
//            RoundedRectangle(cornerRadius: 25.0)
//                .stroke(lineWidth: 3)
//            Text("Hello, cs193p!")
//        })
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .stroke(lineWidth: 3)
            Text("Hello, cs193p!")
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        } else {
            // Fallback on earlier versions
        }
    }
}
