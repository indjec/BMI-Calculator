 
import UIKit

class ResultViewController: UIViewController {
    
    var bmi: BMI?
    

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(bmi?.value ?? 0.0)
        adviceLabel.text = bmi?.advice ?? "No advice"
        view.backgroundColor = bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
