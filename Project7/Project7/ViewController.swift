//
//  ViewController.swift
//  Project7
//
//  Created by Sunitha Balasubramanian on 25/06/20.
//  Copyright © 2020 Sunitha Balasubramanian. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
var petitions = [Petition]()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Credits", style: .plain, target: self, action: #selector(creditAction))
        let urlString:String
        if navigationController?.tabBarItem.tag  == 0{   urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        }
        else{
            urlString = "https://www.hackingwithswift.com/samples/petitions-2.json"
        }
        if let url = URL(string: urlString){
            if let data = try? Data(contentsOf: url){
                parse(json: data)
                return
            }
        }
        showError()
    }
    @objc func creditAction(){
        let ac = UIAlertController(title: "Data Infromation ", message: "This was a internet", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac,animated: true)
    }
    func showError(){
        let ac = UIAlertController(title: "loading Error", message: "There was a problem", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "ok", style: .default))
        present(ac,animated: true)
    }
    func parse(json: Data){
        let decoder = JSONDecoder()
        if let jsonpetitions = try?decoder.decode(Petitions.self, from: json){
            petitions = jsonpetitions.results
            tableView.reloadData()
            
        }
        
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let petit = petitions[indexPath.row]
        
        cell.textLabel?.text = petit.title
        cell.detailTextLabel?.text = petit.body
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.detailItem = petitions[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

