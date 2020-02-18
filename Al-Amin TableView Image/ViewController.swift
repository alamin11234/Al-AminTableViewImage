//
//  ViewController.swift
//  Al-Amin TableView Image
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    

    @IBOutlet weak var tableview: UITableView!
    
    var imgArray = ["Bata","Apex","lotto"]
    var nameArray = ["A","B","c"]
    var priceArray = ["1000 tk","2000 tk","3000 tk"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")as!TableViewCell
        cell.cellimage.image = UIImage(named: imgArray[indexPath.row])
        cell.cellname.text = nameArray [indexPath.row]
        cell.celltag.text = priceArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

