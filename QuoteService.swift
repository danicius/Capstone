//
//  QuoteService.swift
//  Capstone
//
//  Created by Danielle Alvarez on 4/23/24.
//

import Foundation


class QuoteService {
    struct Quote: Codable {
        var content: String
        var author: String
    }

    func fetchQuoteUsingCodable(completion: @escaping (Quote?) -> Void) {
        let urlString = "https://api.quotable.io/quotes/random?tags=inspirational,famous-quotes"
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("No data in response: \(error?.localizedDescription ?? "Unknown error")")
                completion(nil)
                return
            }

            do {
                let decodedQuote = try JSONDecoder().decode(Quote.self, from: data)
                completion(decodedQuote)
            } catch {
                print("Decoding error: \(error)")
                completion(nil)
            }
        }.resume()
    }
}
