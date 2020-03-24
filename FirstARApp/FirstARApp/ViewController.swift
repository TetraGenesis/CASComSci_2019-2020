//
//  ViewController.swift
//  FirstARApp
//
//  Created by Ezra Barber on 3/9/20.
//  Copyright © 2020 Ezra Barber. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {
    @IBOutlet weak var sceneView: ARSCNView!
    
    override func viewDidLoad() {
         super.viewDidLoad()
        sceneView.delegate = self
        let scene = SCNScene(named: "arresources.scnassets/blank.scn")
        sceneView.scene = scene!
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let imageTracker = ARImageTrackingConfiguration()
        sceneView.session.run(_: imageTracker)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }


}

