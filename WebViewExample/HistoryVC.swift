//
//  HistoryVC.swift
//  WebViewExample
//
//  Created by S@i on 2020-03-24.
//  Copyright © 2020 moxDroid. All rights reserved.
//

import UIKit
import WebKit
class HistoryVC: UITableViewController {
    
 var hisData :WKBackForwardList?;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func numberOfSections(in tableView: UITableView) -> Int {
           // #warning Incomplete implementation, return the number of sections
           return 1;
       }

       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // #warning Incomplete implementation, return the number of rows
           return hisData!.backList.count;
       }

       
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "Hiscell", for: indexPath)
           
           cell.textLabel?.text = hisData!.backList[indexPath.row].title;

           // Configure the cell...

           return cell
       }
}
