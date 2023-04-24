//
//  HomePageViewModel.swift
//  BirBankHomePage
//
//  Created by Fikrat on 23.04.23.
//

import Foundation

class HomePageViewModel {
    
    var myModel: Section?
    
    var callback: (()->())?

//    func jsonSetup() {
//        if let jsonFile = Bundle.main.url(forResource: "Test", withExtension: "json"), let data = try? Data(contentsOf: jsonFile) {
//            do {
//                myModel = try JSONDecoder().decode([Section].self, from: data)
//                print("test")
////                self.callback?()
//            }catch{
//                print(error.localizedDescription)
//            }
//        }  else{
//
//        }
//    }
    
    func jsonSetup() {
        guard let jsonFile = Bundle.main.path(forResource: "Test", ofType: "json") else {return}
        let url = URL(fileURLWithPath: jsonFile)
            do {
                let jsonData = try Data(contentsOf: url)
                myModel = try JSONDecoder().decode(Section.self, from: jsonData)
//                print("test")
                if let myModel = myModel {
                    print(myModel)
                } else{
                    print("Failed to parse")
                }
                
            }catch{
                print("Error \(error)")
            }
        }
    }

