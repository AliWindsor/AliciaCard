//
//  ContentView.swift
//  AliciaCard
//
//  Created by Alicia Windsor on 28/03/2022.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
      ZStack {
        Color("#9b82c2")
          .edgesIgnoringSafeArea(.all)
        
        VStack {
          PersonalDetailsView(name: "Alicia Windsor", role: "Graduate Mobile Developer", picture: "Alicia_Picture")
          
          Divider()
          
          Spacer()
            .frame(height: 20.0)
          
          ContactDetailsView(info: "+44 123 456 789", icon_name: "phone")
          ContactDetailsView(info: "alicia@email.com", icon_name: "envelope")
          
        }
      }
      //
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
