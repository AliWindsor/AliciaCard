//
//  ContactDetailsView.swift
//  AliciaCard
//
//  Created by Alicia Windsor on 28/03/2022.
//

import SwiftUI

//reusable component
struct ContactDetailsView: View {
  var info : String
  var icon_name : String
  
  var body: some View {
  
    Capsule()
      .fill(.white)
      .frame(height: 40.0)
      .overlay(
        HStack {
          Image(systemName: icon_name)
            .foregroundColor(Color("#9b82c2"))
    
          Text(info)
            .font(Font.custom("Raleway", size: 20))
            .bold()
    
        })
      .padding(.horizontal, 40)
    
    Spacer()
      .frame(height: 20.0)
    //
  }
}

struct ContactDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack{
      Color("#9b82c2").edgesIgnoringSafeArea(.all)
      ContactDetailsView(info: "0 000 000 000", icon_name: "phone.fill")
    }
  }
}
