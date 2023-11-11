//
//  SplashVIew.swift
//  MeLembreDasCompras
//
//  Created by Ilton Ferpec on 10/11/23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
         VStack {
              imageView()
              textView()
         }
    }
}

extension SplashView {
     func imageView() -> some View {
          Image("logo")
               .resizable()
               .scaledToFit()
               .frame(maxWidth: .infinity, maxHeight: .infinity)
               .padding(20)
     }
}

extension SplashView {
     func textView() -> some View {
          Text("Nunca foi tão fácil organizar suas compras!")
               .font(Font.system(size: 16).bold())
               .foregroundColor(.blue)
               .padding(40)
               .multilineTextAlignment(.center)
     }
}

#Preview {
    SplashView()
}
