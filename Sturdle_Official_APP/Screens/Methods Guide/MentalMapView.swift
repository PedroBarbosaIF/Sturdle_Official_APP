//
//  MentalMapView.swift
//  Sturdle_Official_APP
//
//  Created by found on 27/02/25.
//

import SwiftUI

struct MentalMapView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("A Smart (and Fun) Way to Study")
                .bold()
                .font(.system(size: 25))
                .foregroundColor(.black)
            
            Text("Have you ever imagined transforming that mountain of content into something visual, organized and that makes sense to your brain? Welcome to the universe of mind maps! They are not just cute drawings, but a real *secret weapon* to study efficiently.")
                .font(Font.custom("SF Pro Display", size: 17))
                .foregroundColor(.black)
                .frame(width: 400, alignment: .topLeading)
            Spacer()
                .frame(width: 10, height: 10)
            
            Text("The mind map works like this: you start with a central idea (the main theme) right in the middle of the page. Imagine this as the root of a tree. From there, you create branches that represent the main topics. These branches, in turn, branch into subtopics, details, and examples. And that's it, your tree of knowledge is growing!")
                .font(Font.custom("SF Pro Display", size: 17))
                .foregroundColor(.black)
                .frame(width: 399, alignment: .topLeading)
            
            HStack{
                Text("But why does it work so well? Simple: the mind map combines words, colors, images and associations, which helps the brain to record information in a more natural way. ")
                    .font(Font.custom("SF Pro Display", size: 17))
                    .foregroundColor(.black)
                    .frame(width: 204, alignment: .topLeading)
                
                Image("mentalMap")
            }
            
            Text("Unlike reading an endless list of topics or monotonous summaries, you see the content in a visual and connected way. And between you and me, it's much easier to remember something that looks like a drawing than a block of text, right?  Remember: the mind map doesn't have to be perfect. It is a personalized tool, made by you, for you. So, use your creativity, but without overdoing the mess.")
                .font(Font.custom("SF Pro Display", size: 17))
                .foregroundColor(.black)
                .frame(width: 396, alignment: .topLeading)
        }
    }
}

#Preview {
    MentalMapView()
}
