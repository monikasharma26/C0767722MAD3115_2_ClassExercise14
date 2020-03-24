//
//  ViewController.swift
//  WebViewExample
//
//  Created by moxDroid on 2020-03-24.
//  Copyright © 2020 moxDroid. All rights reserved.
//

import UIKit
//Need to use
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebKitView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadLambtonUrl()
    }
    
    
    func loadLambtonUrl()
    {
        let url = URL(string: "https://www.lambtoncollege.ca/")
        let urlReq = URLRequest(url: url!)
        myWebKitView.load(urlReq)
    }
    @IBAction func btnNavigation(_ sender: UIBarButtonItem)
    {
        switch sender.tag {
        case 0://Home Button is pressed
            loadLambtonUrl()
        case 1://Prev Button is pressed
            if myWebKitView.canGoBack
            {
                print("Go back")
                myWebKitView.goBack()
            }else
            {
                print("Can't Go back")
            }
        case 2:
            if myWebKitView.canGoForward
            {
                myWebKitView.goForward()
            }
        case 3:
            myWebKitView.reload()
        default:
            print("No Navigation action found...")
        }
    }
    
    @IBAction func HistBtnClicked(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil);
        let hisVc = storyBoard.instantiateViewController(withIdentifier: "HistoryVC") as! HistoryVC;
        
        hisVc.hisData = myWebKitView.backForwardList;
        
        navigationController?.show(hisVc, sender: self);
    }
}

