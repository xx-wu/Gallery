//
//  Photo.swift
//  Gallery
//
//  Created by xx-wu on 2020/10/8.
//

import SwiftUI

struct Photo: View {
    var body: some View {
		VStack{
			Image("1")
				.resizable()
				.scaledToFit()
			Spacer()
		}
    }
}

struct Photo_Previews: PreviewProvider {
    static var previews: some View {
        Photo()
    }
}
