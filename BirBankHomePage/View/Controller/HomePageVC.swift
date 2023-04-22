//
//  HomePageVC.swift
//  BirBankHomePage
//
//  Created by Fikrat on 21.04.23.
//

import UIKit

class HomePageVC: UIViewController {
    
    var data = ["test", "test1", "test2"]

    @IBOutlet weak var tableView: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "\(CardListTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "CardListTableViewCell")
        
        tableView.reloadData()
    }
}

extension HomePageVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardListTableViewCell", for: indexPath) as! CardListTableViewCell
        return cell
    }
    
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        110.0
//    }
    
    
}
