//
//  ContentView.swift
//  Memorize
//
//  Created by Pedro Henrique Calado on 05/10/21.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["✈️", "🩴", "🧶", "🧥", "👔", "🧐", "👩‍🦰", "🪰", "🐾", "🐰", "🐁", "🌹", "🌖", "🌎"]
    
    @State var emojiCount = 5
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                    
                }
                .padding(.horizontal)
                .foregroundColor(.red)
            }
            
            
            Spacer()
            
            HStack{
                add
                Spacer()
                Text("Shuffle")
                Spacer()
                remove
            }
            .font(.largeTitle)
            .padding(.horizontal)
            
        }
    }
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            } else {
                shape.fill()
            }
            
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}
































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            ContentView()
                .preferredColorScheme(.dark)
                .previewInterfaceOrientation(.portrait)
            ContentView()
                .preferredColorScheme(.light)
                .previewInterfaceOrientation(.portrait)
        } else {
            // Fallback on earlier versions
        }
    }
}
