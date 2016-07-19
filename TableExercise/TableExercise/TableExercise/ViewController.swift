//
//  ViewController.swift
//  TableExercise
//
//  Created by macmini2 on 7/18/16.
//  Copyright © 2016 ivandeltaplan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var animalNames = ["жаба", "крыса", "коза",
        "гныда", "выдра", "бобер",
        "олэнь", "гусь", "таракан",
        "карась"]

    var animalImages = ["saba","daba","faba","gaba","haba","jaba","kaba","laba","zaba","xaba"]
    
    var textLabels = ["sdfgdsfgsdfgsd","wertwertert","uioyuiouio","lhjkljhkl",
    "zxcvxcvxcv","hjkghjkghjk",",bnm,bnm,","2352345sfgsdfg","ghjkhjk69678","dfghdfghfgh"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // Return the number of rows in the section.
            return animalNames.count
            
            
            
            
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->
            UITableViewCell {
            let cellIdentifier = "Cell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath:
            indexPath) as! TextAnimal
            
                // Configure the cell...
           
            cell.animalName.text = animalNames [indexPath.row]
            cell.animalDescription.text = textLabels[indexPath.row]             
            cell.animalImageView.image = UIImage(named:
                animalImages[indexPath.row])
            return cell
    }
    
}

