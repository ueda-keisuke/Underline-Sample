//
//  ViewController.swift
//  Underline-Sample
//
//  Created by keta on 2015/09/19.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    let familyNames = UIFont.familyNames()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return UIFont.fontNamesForFamilyName(familyNames[section]).count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        let fontname = UIFont.fontNamesForFamilyName(familyNames[indexPath.section])[indexPath.row]
        
        var html = "<style type=\"text/css\">underline {text-decoration: none; border-bottom: 1px solid black; padding-bottom: 0px;} p { font: 100% \"\(fontname)\"; } body{ -webkit-tap-highlight-color: rgba(0, 0, 0, 0)\n -webkit-touch-callout: none \n -webkit-user-select: none;}</style>"
        
        html += "<p>"
        html += "<u>Egg and Chicken</u>, <right><underline>Egg and Chicken</underline></right>"
        html += "</p>"
        
        let webview = UIWebView(frame: cell.contentView.frame)
        webview.loadHTMLString(html, baseURL: nil)
        
        for subview in webview.subviews
        {
            if subview is UIScrollView
            {
                let theView = subview as! UIScrollView
                theView.scrollEnabled = false
                theView.bounces = false
            }
        }
        
        cell.contentView.addSubview(webview)
        
        return cell
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return familyNames.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return familyNames[section]
    }
    
}

