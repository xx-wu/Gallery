//
//  Home.swift
//  Gallery
//
//  Created by xx-wu on 2020/10/8.
//

import SwiftUI

struct Home: View {
	let imageWidth = UIScreen.main.bounds.width * 0.95
//	let req = List()
	
	var body: some View {
		NavigationView {
			ScrollView(showsIndicators: false) {
				VStack {
					NavigationLink(destination: Photo()) {
						VStack{
							Image("1")
								.resizable()
								.frame(width: imageWidth, height: 300.0)
								.aspectRatio(contentMode: .fill)
						}
					}
					HStack{
						Text("Paris")
							.font(.title2)
							.padding(.leading)
						Spacer()
					}
					HStack{
						Text("Life is a characteristic that distinguishes physical entities that have biological processes, such as signaling and self-sustaining processes...")
							.lineLimit(2)
							.foregroundColor(Color.secondary)
							.padding(.leading)
						Spacer()
					}
					
					Image("2")
						.resizable()
						.frame(width: imageWidth, height: 300.0)
						.aspectRatio(contentMode: .fill)
					Text("Paris")
					Image("1")
						.resizable()
						.frame(width: imageWidth, height: 300.0)
						.aspectRatio(contentMode: .fill)
					Text("Paris")
					Image("2")
						.resizable()
						.frame(width: imageWidth, height: 300.0)
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
			.navigationBarTitle("Home")
		}
	}
}

func List() -> String {
	let req = Request(URL: "http://www.google.com", Method: "GET", Params: "")
//	req.DO()
	print("request...")
	print(req)
	
	return "..."
}

struct Home_Previews: PreviewProvider {
	static var previews: some View {
		Home()
			.preferredColorScheme(.dark)
	}
}
