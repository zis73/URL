//
//  ViewController.swift
//  URL
//
//  Created by Student on 06/11/2018.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let url = URL(string: "https://api.nasa.gov/planetary/apod?date=2005-2-22&api_key=DEMO_KEY")!

    override func viewDidLoad() {
        super.viewDidLoad()

        let task = URLSession.shared.dataTask(with: url, completionHandler: { data, _, _ in
            guard let data = data else { return }
            print(#function, data)
            guard let text = String(data: data, encoding: .utf8) else { return }
            print(#function, text)
        })
        task.resume()
    }


}

