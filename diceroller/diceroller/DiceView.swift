//
//  DiceView.swift
//  diceroller
//
//  Created by Student on 4/26/25.
//

import SwiftUI

struct DiceView: View {
    // This is a variable
    @State var numberOfPips: Int = 1
    
    var body: some View {
        
        // Stacks things inside vertically
        VStack{
            // show an image
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth:100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
                
            Button("Roll"){
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            .padding()
            .background(Color.purple)
            .foregroundStyle(.white)
            .cornerRadius(20)
        }
    }
}

#Preview {
    DiceView()
}
