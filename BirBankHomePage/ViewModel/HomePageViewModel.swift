//
//  HomePageViewModel.swift
//  BirBankHomePage
//
//  Created by Fikrat on 23.04.23.
//

import Foundation

class HomePageViewModel {
    
    var myModel = [Section]()
    
    var callback: (()->())?

    func jsonSetup() {
        if let jsonFile = Bundle.main.url(forResource: "Data", withExtension: "json"), let data = try? Data(contentsOf: jsonFile) {
            do {
                myModel = try JSONDecoder().decode([Section].self, from: data)
//                self.callback?()
            }catch{
                print(error.localizedDescription)
            }
        }
    }
}
