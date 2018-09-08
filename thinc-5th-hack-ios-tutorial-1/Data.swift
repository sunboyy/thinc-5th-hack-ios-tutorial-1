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
    Member(name: "Namneung", image: #imageLiteral(resourceName: "namneung")),
    Member(name: "Namsai", image: #imageLiteral(resourceName: "namsai")),
    Member(name: "Nink", image: #imageLiteral(resourceName: "nink")),
    Member(name: "Noey", image: #imageLiteral(resourceName: "noey")),
    Member(name: "Orn", image: #imageLiteral(resourceName: "orn")),
    Member(name: "Piam", image: #imageLiteral(resourceName: "piam")),
    Member(name: "Pun", image: #imageLiteral(resourceName: "pun")),
    Member(name: "Pupe", image: #imageLiteral(resourceName: "pupe")),
    Member(name: "Satchan", image: #imageLiteral(resourceName: "satchan")),
    Member(name: "Tarwaan", image: #imageLiteral(resourceName: "tarwaan")),
    
    Member(name: "Aom", image: #imageLiteral(resourceName: "aom")),
    Member(name: "Bamboo", image: #imageLiteral(resourceName: "bamboo")),
    Member(name: "Cake", image: #imageLiteral(resourceName: "cake")),
    Member(name: "Deenee", image: #imageLiteral(resourceName: "deenee")),
    Member(name: "Faii", image: #imageLiteral(resourceName: "faii")),
    Member(name: "Fifa", image: #imageLiteral(resourceName: "fifa")),
    Member(name: "Fond", image: #imageLiteral(resourceName: "fond")),
    Member(name: "Gygee", image: #imageLiteral(resourceName: "gygee")),
    Member(name: "Juné", image: #imageLiteral(resourceName: "june")),
    Member(name: "Khamin", image: #imageLiteral(resourceName: "khamin")),
    Member(name: "Kheng", image: #imageLiteral(resourceName: "kheng")),
    Member(name: "Maira", image: #imageLiteral(resourceName: "maira")),
    Member(name: "Mewnich", image: #imageLiteral(resourceName: "mewnich")),
    Member(name: "Minmin", image: #imageLiteral(resourceName: "minmin")),
    Member(name: "Myyu", image: #imageLiteral(resourceName: "myyu")),
    Member(name: "Natherine", image: #imageLiteral(resourceName: "natherine")),
    Member(name: "New", image: #imageLiteral(resourceName: "new")),
    Member(name: "Niky", image: #imageLiteral(resourceName: "niky")),
    Member(name: "Nine", image: #imageLiteral(resourceName: "nine")),
    Member(name: "Oom", image: #imageLiteral(resourceName: "oom")),
    Member(name: "Pakwan", image: #imageLiteral(resourceName: "pakwan")),
    Member(name: "Panda", image: #imageLiteral(resourceName: "panda")),
    Member(name: "Phukkhom", image: #imageLiteral(resourceName: "phukkhom")),
    Member(name: "Ratah", image: #imageLiteral(resourceName: "ratah")),
    Member(name: "Stang", image: #imageLiteral(resourceName: "stang")),
    Member(name: "View", image: #imageLiteral(resourceName: "view")),
    Member(name: "Wee", image: #imageLiteral(resourceName: "wee")),
]
