import UIKit

class ViewController: UIViewController {
    let sentenceStart = [
        "Mon chien a avalé",
        "un avion a fait un crash",
        "Ma voiture a crée",
        "Mes baskets sont",
        "mon chat a fait",
        "Je me suis réveiller",
        "jʼétais en arrêt maladie",
        "Jʼai perdue",
        "il y avait BOOBA dans",
        "Je me suis perdue dans",
        "Mon téléphone capte",
    ]
    let sentenceEnd = [
        "mon navigo",
        "chez moi",
        "une tempête",
        "invisibles",
        "une crise cardiaque",
        "dans le future",
        "pour mon oisseau",
        "ma vie",
        "mon métro",
        "mon lit",
        "la LTE",
    ]
    
    @IBOutlet weak var generatedLabel: UILabel!
    @IBOutlet weak var ButtonUI: UIButton!
    
    @IBAction func onButtonPress(_ sender: Any) {
        // Get random element from sentence start
        let sentenceStartRandomIndex = Int(arc4random_uniform(UInt32(sentenceStart.count)))
        let randomStartSentence = sentenceStart[sentenceStartRandomIndex]

        // Get random element from sentence end
        let sentenceEndRandomIndex = Int(arc4random_uniform(UInt32(sentenceEnd.count)))
        let randomEndSentence = sentenceEnd[sentenceEndRandomIndex]

        // Build sentence and push into the generatedLabel
        let finalSentence = randomStartSentence + " " + randomEndSentence
        generatedLabel.text = finalSentence
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ButtonUI.backgroundColor = .clear
        ButtonUI.layer.cornerRadius = 5
        ButtonUI.layer.borderWidth = 1
    }
}
