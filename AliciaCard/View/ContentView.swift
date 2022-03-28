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
      
      VStack {
        PersonalDetailsView(name: "Alicia Windsor", role: "Graduate Mobile Developer", picture: "Alicia_Picture")
        
        Divider()
        
        Spacer()
          .frame(height: 20.0)
        
        ContactDetailsView(info: "+44 123 456 789")
        ContactDetailsView(info: "alicia@email.com")
        
      }
    }
    //
  }
}

struct PersonalDetailsView : View {
  
  var name: String
  var role: String
  var picture: String
  
  var body : some View {
    VStack{
      Image(picture)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 200.0, height: 200.0)
        .clipShape(Circle())
        .overlay(Circle()
          .stroke(.white, lineWidth: 5))
      
      Text(name)
        .font(Font.custom("Raleway", size: 30))
        .bold()
        .foregroundColor(.white)
      
      Text(role)
        .opacity(0.5)
        .foregroundColor(.white)
    }
    //
  }
}

//reusable component
struct ContactDetailsView: View {
  var info : String
  
  var body: some View {
    Capsule()
      .fill(.white)
      .frame(width: 300.0, height: 40.0)
      .overlay(
        Text(info)
          .font(Font.custom("Raleway", size: 20))
          .bold()
      )
    Spacer()
      .frame(height: 20.0)
    //
  }
}
