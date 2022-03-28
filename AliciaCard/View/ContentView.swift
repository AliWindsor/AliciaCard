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
      Color("#9b82c2").edgesIgnoringSafeArea(.all)

    }
    
  }
}
