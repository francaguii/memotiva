//
//  ViewController.swift
//  FoundationsApp
//
//  Created by GUILHERME BARRETO FRANCA on 10/1/18.
//  Copyright © 2018 Elza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var storyTableView: UITableView!
    
    let story1 = Story(heroImageReceived: #imageLiteral(resourceName: "example"), titleReceived: "Lorem Ipsum", descriptionReceived: "Lorem Ipsum", textReceived: "Lorem Ipsum")
    let story2 = Story(heroImageReceived: #imageLiteral(resourceName: "example"), titleReceived: "Lorem Ipsum", descriptionReceived: "Lorem Ipsum", textReceived: "Lorem Ipsum")
    let story3 = Story(heroImageReceived: #imageLiteral(resourceName: "example"), titleReceived: "Lorem Ipsum", descriptionReceived: "Lorem Ipsum", textReceived: "Lorem Ipsum")
    
    var stories: [Story] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stories.append(story1)
        stories.append(story2)
        stories.append(story3)
        
        storyTableView.delegate = self
        storyTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = storyTableView.dequeueReusableCell(withIdentifier: "storyCell", for: indexPath) as! StoryTableViewCell
        
        let index = indexPath.row
        
        cell.storyImage.image = stories[index].heroImage
        cell.storyHeadline.text = stories[index].title
        cell.storyBrief.text = stories[index].description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }

}

