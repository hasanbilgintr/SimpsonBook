//
//  ViewController.swift
//  230923_SimpsonBook
//
//  Created by hasan bilgin on 23.09.2023.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    //Simpson modelinde bir arraylist yarattık
    var mySimpson = [Simpson]()
    //Simpson modelinde bir dizi
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource=self
        tableView.delegate=self
        
        let colosseum=Simpson(name: "Colosseum", date: "1500", image: UIImage(named: "colosseum")!)
        let greatwall=Simpson(name: "Great Wall", date: "1700", image: UIImage(named: "greatwall")!)
        let kremlin=Simpson(name: "Kremlin", date: "1600", image: UIImage(named: "kremlin")!)
        let stonehenge=Simpson(name: "Stonehenge", date: "1800", image: UIImage(named: "stonehenge")!)
        let tajmahal=Simpson(name: "Taj Mahal", date: "1500", image: UIImage(named: "tajmahal")!)
        
        mySimpson.append(colosseum)
        mySimpson.append(greatwall)
        mySimpson.append(kremlin)
        mySimpson.append(stonehenge)
        mySimpson.append(tajmahal)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpson[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         chosenSimpson=mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC=segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }

}

