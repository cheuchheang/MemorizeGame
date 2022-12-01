//
//  ContentView.swift
//  memorizeGame
//
//  Created by Macintosh on 27/11/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State   var emojiCount = 5
    var emojis = ["😄","⚽️","🚗","🐵","🚌","🚔","🛵","🚑",]
    var body: some View {
        VStack {
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    
                    ForEach(emojis[0..<emojiCount],id: \.self) {item in
                        CardView(content: item).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(Color.red)
            Spacer()
          
        }
        
    }
}


struct CardView: View {
    var id = UUID()
    
    var content: String = "😂"
    @State  var isFaceUp: Bool = true
    
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape
                    .fill(Color.white)
                
                shape
                    .strokeBorder(lineWidth: 5)
                
                Text(content)
                    .font(.largeTitle)
            }else {
                shape
                    .fill(Color.red)
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
        
    }
    
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
.previewInterfaceOrientation(.portraitUpsideDown)
        
    }
}
