//
//  ViewController.swift
//  Demo
//
//  Created by Manan Uppal on 29/04/21.
//

import UIKit


class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    private let tableview: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableview)
        tableview.dataSource = self
        tableview.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableview.frame = view.bounds
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Alphabets"
        }
        if section == 1{
            return "Numbers"
        }
        else{
            return "not Mentioned"
        }
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "abcdef: \(indexPath.section) \(indexPath.row)"
        if indexPath.section == 1 {
            cell.textLabel?.text = "12345"
        }
        else{
            cell.textLabel?.text = "abcdef"
        }
        
        
        return cell
    }

}

