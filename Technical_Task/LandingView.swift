//
//  LandingView.swift
//  Technical_Task
//
//  Created by Abdulmajit Kubatbekov on 05.03.23.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
            ZStack {
                Image("backgr")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                Text("DELIVEREE")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 228, height: 38)
                    .font(.system(size: 35))
                    .offset(x: 0, y: -40)
                Spacer(minLength: 31)
                Text("Your favourite local resturants\n"
                     + "delivered to your doorstep.")
                    .foregroundColor(.white)
                    .frame(width: 375, height: 53)
                    .font(.custom(
                        "Poppins", size: 15))
                    .offset(x: 0, y: 20)

            }
        }
}
