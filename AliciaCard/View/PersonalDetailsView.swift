//
//  PersonalDetailsView.swift
//  AliciaCard
//
//  Created by Alicia Windsor on 28/03/2022.
//

import SwiftUI

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

struct PersonalDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack{
      Color("#9b82c2").edgesIgnoringSafeArea(.all)
      PersonalDetailsView(name: "Someone Else", role: "Tester", picture: "")
    }
  }
}
