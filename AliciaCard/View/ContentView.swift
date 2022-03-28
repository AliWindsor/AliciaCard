//
//  ContentView.swift
//  AliciaCard
//
//  Created by Alicia Windsor on 28/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      CardView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {

  var body: some View {
    ZStack {
      Color("#9b82c2")
        .edgesIgnoringSafeArea(.all)
      VStack{
        
        Image("Alicia_Picture")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 200.0, height: 200.0)
          .clipShape(Circle())
          .overlay(Circle()
            .stroke(.white, lineWidth: 5))
        
        Text("Alicia Windsor")
          .font(Font.custom("Raleway", size: 30))
          .bold()
          .foregroundColor(.white)
        
        Text("Graduate Mobile Developer")
          .opacity(0.5)
          .foregroundColor(.white)
      }

    }
    
  }
}
