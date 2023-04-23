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
        
        view.backgroundColor = .red
        tableView.register(UINib(nibName: "\(StoriesTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "StoriesTableViewCell")
        tableView.register(UINib(nibName: "\(CashbackTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "CashbackTableViewCell")
        tableView.register(UINib(nibName: "\(OperationsTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "OperationsTableViewCell")
        tableView.register(UINib(nibName: "\(CardListTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "CardListTableViewCell")
        tableView.register(UINib(nibName: "\(CreditTableViewCell.self)", bundle: nil), forCellReuseIdentifier:
                            "CreditTableViewCell")
        tableView.register(UINib(nibName: "\(AddProductTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "AddProductTableViewCell")
        
        
        
        
        tableView.reloadData()
    }
}

extension HomePageVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
            
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell", for: indexPath) as! StoriesTableViewCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CashbackTableViewCell", for: indexPath) as! CashbackTableViewCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "OperationsTableViewCell", for: indexPath) as! OperationsTableViewCell
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CardListTableViewCell", for: indexPath) as! CardListTableViewCell
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CreditTableViewCell", for: indexPath) as! CreditTableViewCell
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "AddProductTableViewCell", for: indexPath) as! AddProductTableViewCell
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
            
        case 0:
            return 120
        case 1:
            return 42
        case 2:
            return 56
        case 3:
            return 200
        case 4:
            return 200
        case 5:
            return 56
        default:
            return 0
        }
    }
}
