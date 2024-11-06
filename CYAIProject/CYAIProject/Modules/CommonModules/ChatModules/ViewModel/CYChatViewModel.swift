//
//  CYChatViewModel.swift
//  CYAIProject
//
//  Created by 舞极灵瞳 on 2024/9/10.
//

import Foundation
import Combine

class CYChatViewModel: ObservableObject {
    @Published var data: String = ""
    
    
       var cancellable: AnyCancellable?
       
       func fetchData() {
           let url = URL(string: "https://api.example.com/data")!
           cancellable = URLSession.shared.dataTaskPublisher(for: url)
               .map { $0.data }
               .decode(type: String.self, decoder: JSONDecoder())
               .replaceError(with: "Error")
               .receive(on: DispatchQueue.main)
               .assign(to: \.data, on: self)
       }
}
