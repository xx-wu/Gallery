//
//  ContentView.swift
//  Gallery
//
//  Created by xx-wu on 2020/10/8.
//

import SwiftUI

struct ContentView: View {
	@State private var currentTab = 0
//	var Menu:[String] = ["Home", "Location", "Likes"]
	
	var body: some View {
		VStack {
			TabView(selection: $currentTab) {
				Home()
					.tabItem {
						Image(systemName: "house")
						Text("Home")
					}
					.tag(0)
				Location()
					.tabItem {
						Image(systemName: "location")
						Text("Location")
					}
					.tag(1)
				Likes()
					.tabItem {
						Image(systemName: "heart")
						Text("Likes")
					}
					.tag(2)
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.preferredColorScheme(.dark)
	}
}
