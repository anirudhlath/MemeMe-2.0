//
//  SentMemesTableViewController.swift
//  MemeMe
//
//  Created by Anirudh Lath on 2/11/19.
//  Copyright © 2019 Anirudh Lath. All rights reserved.
//

import UIKit

class SentMemesTableViewController: UITableViewController {
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SentMemesTableCell")!
        let meme = memes[(indexPath as NSIndexPath).row]
        cell.imageView?.image = meme.memedImage
        cell.textLabel?.text = meme.topEntry + "|" + meme.bottomEntry
        cell.textLabel?.textColor = UIColor.white
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailsViewController") as! MemeDetailsViewController
        controller.meme = memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(controller, animated: true)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
