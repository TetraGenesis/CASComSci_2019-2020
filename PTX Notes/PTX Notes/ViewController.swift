import UIKit

class ViewController: UIViewController {
    
    var note:Note?
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = note?.text
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        note?.text = textView.text
          
    }


}


