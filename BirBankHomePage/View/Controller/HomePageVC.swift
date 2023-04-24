//
//  HomePageVC.swift
//  BirBankHomePage
//
//  Created by Fikrat on 21.04.23.
//

import UIKit

class HomePageVC: UIViewController {
    
    var viewModel = HomePageViewModel()
    
    var callBack: (()->())?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = .redr
        tableView.register(UINib(nibName: "\(StoriesTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "StoriesTableViewCell")
        tableView.register(UINib(nibName: "\(CashbackTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "CashbackTableViewCell")
        tableView.register(UINib(nibName: "\(OperationsTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "OperationsTableViewCell")
        tableView.register(UINib(nibName: "\(CardListTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "CardListTableViewCell")
        tableView.register(UINib(nibName: "\(CreditTableViewCell.self)", bundle: nil), forCellReuseIdentifier:"CreditTableViewCell")
        tableView.register(UINib(nibName: "\(AddProductTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "AddProductTableViewCell")
        tableView.register(UINib(nibName: "\(CardTitleTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "CardTitleTableViewCell")
        tableView.register(UINib(nibName: "\(CreditTitleTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "CreditTitleTableViewCell")

        viewModel.jsonSetup()
        viewModel.callback = {
            self.tableView.reloadData()
        }
        
        self.tableView.reloadData()

    }
}

extension HomePageVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
            
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell", for: indexPath) as! StoriesTableViewCell
            
            cell.callback = {
                let alert = UIAlertController(
                    title: "", message: "\(cell.data[indexPath.row]) sira",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(
                title: "Baglamaq",
                style: .default,
                handler: nil
            ))
                self.present(alert, animated: true)}
            
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CashbackTableViewCell", for: indexPath) as! CashbackTableViewCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "OperationsTableViewCell", for: indexPath) as! OperationsTableViewCell
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CardTitleTableViewCell", for: indexPath) as! CardTitleTableViewCell
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CardListTableViewCell", for: indexPath) as! CardListTableViewCell
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CreditTitleTableViewCell", for: indexPath) as! CreditTitleTableViewCell
            return cell
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CreditTableViewCell", for: indexPath) as! CreditTableViewCell
            return cell
        case 7:
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
            return 48
        case 2:
            return 80
        case 3:
            return 24
        case 4:
            return 120
        case 5:
            return 24
        case 6:
            return 120
        case  7:
            return 64
        default:
            return 0
        }
    }
}
