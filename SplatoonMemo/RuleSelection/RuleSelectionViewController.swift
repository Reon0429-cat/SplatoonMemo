//
//  RuleSelectionViewController.swift
//  SplatoonMemo
//
//  Created by 大西玲音 on 2022/04/09.
//

import UIKit

class RuleSelectionViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private let splaRules = SplaRule.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "ルール"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.black
        ]
        navigationController?.navigationBar.largeTitleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font : UIFont.boldSystemFont(ofSize: 35)
        ]
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerCustomCell(RuleSelectionTableViewCell.self)
        
    }
    
}

extension RuleSelectionViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension RuleSelectionViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return splaRules.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCustomCell(with: RuleSelectionTableViewCell.self)
        let splaRule = splaRules[indexPath.row]
        cell.configure(model: splaRule)
        return cell
    }
    
}
