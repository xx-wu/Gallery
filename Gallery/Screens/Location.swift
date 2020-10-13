//
//  Home.swift
//  Gallery
//
//  Created by xx-wu on 2020/10/8.
//

import SwiftUI

struct Location: View {
	var body: some View {
		NavigationView {
			ScrollView(showsIndicators: false) {
				VStack {
					NavigationLink(destination: Photo()) {
						VStack{
							Image("1")
								.resizable()
								.frame(width: 400.0, height: 300.0)
								.aspectRatio(contentMode: .fill)
							
						}
					}
					Text("Paris")
					
					Image("2")
						.resizable()
						.frame(width: 400.0, height: 300.0)
						.aspectRatio(contentMode: .fill)
					Text("Paris")
					Image("1")
						.resizable()
						.frame(width: 400.0, height: 300.0)
						.aspectRatio(contentMode: .fill)
					Text("Paris")
					Image("2")
						.resizable()
						.frame(width: 400.0, height: 300.0)
						.aspectRatio(contentMode: .fill)
					Text("Paris")
				}
			}
			.navigationBarItems(
				leading:
					Button(action: {
						
					}) {
						Image(systemName: "square.grid.2x2")
					},
				trailing:
					Button(action: {
						print("Edit button pressed...")
					}) {
						Text("Edit")
					}
			)
			.navigationBarTitle("Location")
		}
	}
}

struct Location_Previews: PreviewProvider {
	static var previews: some View {
		Location()
			.preferredColorScheme(.dark)
	}
}
