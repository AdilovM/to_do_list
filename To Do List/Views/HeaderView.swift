//
//  HeaderView.swift
//  To Do List
//
//  Created by Miras Adilov on 8/10/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
//                   .offset(y:-50)
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y:-150)
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title:"Title", subtitle: "Subtitle", angle: 15,background:  .blue)
    }
}
