import UIKit

class ViewController: UIViewController {
    
    // TODO Fill code outlet
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var memberImg: UIImageView!
    var random: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO Fill code initial randomization
        randomPressed(self)
        
    }
    
    // TODO Fill code random action
    @IBAction func randomPressed(_ sender: Any) {
        let member = self.randomMember()
        self.nameLbl.text = member.name
        self.memberImg.image = member.image
        for _ in 0...10{
            
        }
    }
    
    func randomMember() -> Member {
        random = Int(arc4random_uniform(UInt32(bnk48Members.count)))
       
        return bnk48Members[random]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let data = bnk48Members[random].name
        if let destinationViewController = segue.destination as? ProfileViewController {
            destinationViewController.data = data
        }
    }
}

