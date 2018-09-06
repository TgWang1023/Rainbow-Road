//
//  ViewController.swift
//  Rainbow Road
//
//  Created by Tiange Wang on 9/5/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Rainbow", for: indexPath)
        switch indexPath.row {
        case 0:
            cell.backgroundColor = UIColor.red
        case 1:
            cell.backgroundColor = UIColor.orange
        case 2:
            cell.backgroundColor = UIColor.yellow
        case 3:
            cell.backgroundColor = UIColor.green
        case 4:
            cell.backgroundColor = UIColor.blue
        case 5:
            cell.backgroundColor = UIColor.purple
        default:
            cell.backgroundColor = UIColor.white
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
