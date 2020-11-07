//
//  Request.swift
//  Gallery
//
//  Created by xx-wu on 2020/10/11.
//

import Foundation

class Request {
	let Base:String = "http://localhost:81"
	let Path:String
	let Method:String
	let Params:String?
	
	init(URL:String, Method:String, Params:String) {
		self.Path = URL
		self.Method = Method
		self.Params = Params
	}

	func DO(completion:@escaping (Data?) -> Void) {
		
		guard let path = URL(string: self.Path) else { return }
		
		var UrlRequest = URLRequest(url: path)
		UrlRequest.httpMethod = self.Method
		
		if self.Params != "" {
			UrlRequest.httpBody = Params?.data(using: String.Encoding.utf8)
		}

		let task = URLSession.shared.dataTask(with: UrlRequest) { (data, response, error) in
			guard let data = data else { return }
			print(String(data: data, encoding: .utf8)!)
			
			completion(data)
		}

		task.resume()
	}
	
}
