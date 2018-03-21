import UIKit

class Member {
    private static var idCount: Int = 0
    let id: Int
    let name: String
    let image: UIImage
    init(name: String, image: UIImage) {
        id = Member.idCount
        Member.idCount += 1
        self.name = name
        self.image = image
    }
   
}




let bnk48Members = [
    Member(name: "Can", image: #imageLiteral(resourceName: "can")),
    Member(name: "Cherprang", image: #imageLiteral(resourceName: "cherprang")),
    Member(name: "Izurina", image: #imageLiteral(resourceName: "izurina")),
    Member(name: "Jaa", image: #imageLiteral(resourceName: "jaa")),
    Member(name: "Jane", image: #imageLiteral(resourceName: "jane")),
    Member(name: "Jennis", image: #imageLiteral(resourceName: "jennis")),
    Member(name: "Jib", image: #imageLiteral(resourceName: "jib")),
    Member(name: "Kaew", image: #imageLiteral(resourceName: "kaew")),
    Member(name: "Kaimook", image: #imageLiteral(resourceName: "kaimook")),
    Member(name: "Kate", image: #imageLiteral(resourceName: "kate")),
    Member(name: "Korn", image: #imageLiteral(resourceName: "korn")),
    Member(name: "Maysa", image: #imageLiteral(resourceName: "maysa")),
    Member(name: "Mind", image: #imageLiteral(resourceName: "mind")),
    Member(name: "Miori", image: #imageLiteral(resourceName: "miori")),
    Member(name: "Mobile", image: #imageLiteral(resourceName: "mobile")),
    Member(name: "Music", image: #imageLiteral(resourceName: "music")),
    Member(name: "Namnueng", image: #imageLiteral(resourceName: "namnueng")),
    Member(name: "Namsai", image: #imageLiteral(resourceName: "namsai")),
    Member(name: "Nink", image: #imageLiteral(resourceName: "nink")),
    Member(name: "Noey", image: #imageLiteral(resourceName: "noey")),
    Member(name: "Orn", image: #imageLiteral(resourceName: "orn")),
    Member(name: "Piam", image: #imageLiteral(resourceName: "piam")),
    Member(name: "Pun", image: #imageLiteral(resourceName: "pun")),
    Member(name: "Pupe", image: #imageLiteral(resourceName: "pupe")),
    Member(name: "Satchan", image: #imageLiteral(resourceName: "satchan")),
    Member(name: "Tarwaan", image: #imageLiteral(resourceName: "tarwaan")),
]
