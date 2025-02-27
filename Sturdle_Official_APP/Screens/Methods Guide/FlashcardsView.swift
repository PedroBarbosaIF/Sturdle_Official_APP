//
//  FlashCards.swift
//  Sturdle_Official_APP
//
//  Created by found on 27/02/25.
//

import SwiftUI

struct FlashcardsView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("The active memory trick")
                .bold()
                .font(.system(size: 25))
                .foregroundColor(.black)
            
            Text("Have you ever studied a subject, thought you understood it, but when it comes to remembering it nothing? This happens because reading and rereading is not enough. The brain needs to be challenged, and that's where flashcards come into play. Flashcards are small cards with questions on the front and answers on the back. The objective is to test your own memory before looking at the answer, forcing the brain to search for information, which strengthens learning.")
              .font(Font.custom("Roboto", size: 17))
              .foregroundColor(.black)
              .frame(width: 400, height: 200, alignment: .topLeading)
            
            HStack{
                Text("How to use:\nWrite a question or concept on one side and the answer on the other. Try answering without looking at the answer. Separate the cards into three groups:")
                  .font(Font.custom("Roboto", size: 17))
                  .foregroundColor(.black)
                  .frame(width: 197, height: 160, alignment: .topLeading)
                
                Image("flashcards")
//                  .resizable()
//                  .aspectRatio(contentMode: .fill)
//                  .frame(width: 169, height: 169)
//                  .clipped()
            }
            Text("- Did you get it easily? Review less frequently. - Did it take you a while to remember? Review more often. - Did you make a mistake? Review several times until you get it right.")
              .font(Font.custom("Roboto", size: 17))
              .foregroundColor(.black)
              .frame(width: 394, alignment: .topLeading)
            Spacer()
                .frame(width: 10, height: 10)
            Text("This method is widely used for efficient memorization because it activates the retrieval effect, helping you remember better at the right time. It works especially well for studying languages, formulas, dates, and key concepts. The more you test your memory, the stronger it gets.")
              .font(Font.custom("Roboto", size: 17))
              .foregroundColor(.black)
              .frame(width: 394, alignment: .topLeading)
        }
    }
}

#Preview {
    FlashcardsView()
}
