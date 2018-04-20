//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Nikolaos Agas on 20/04/2018.
//  Copyright © 2018 Nikolaos Agas. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player = Player()
        nextBtn.isEnabled = false
    }

   
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
    
    func selectLeague(leagueType: String){
    
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    @IBOutlet weak var onMensTapped: BorderButton!
    
    @IBOutlet weak var onWomensTapped: BorderButton!
    
    
    
    @IBOutlet weak var onWomensTApped: BorderButton!
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coeed")
    }
    @IBAction func onMensTapped(_ sender: Any) {
            selectLeague(leagueType: "Mens")
    }
    
    @IBAction func womentstapppdsf(_ sender: Any) {
            selectLeague(leagueType: "women")
    }
    
}
