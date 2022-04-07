//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Burak Karagül on 10.01.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var tableView: UITableView!
    
    var landmarkNames=[String]()
    var chosenLandMark=""

    override func viewDidLoad() {
        super.viewDidLoad()
         
        tableView.delegate=self
        tableView.dataSource=self
        landmarkNames.append("Colosseum")
        landmarkNames.append("GreatWall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("TajMahal")
        
        navigationItem.title="Landmark Book"
        
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            landmarkNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text=landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandMark=landmarkNames[indexPath.row]
        performSegue(withIdentifier: "toImageView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toImageView"{
            let destinationVC=segue.destination as! ImageViewController
            destinationVC.imagetxt=chosenLandMark
        }
    }
    


}

