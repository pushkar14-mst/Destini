
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain=StoryBrain();
    var stories=StoryBrain().stories
    let storyNumber=StoryBrain().currentStoryNumber
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text=stories[0].storyTitle;
        choice1Button.setTitle(stories[0].choice1, for: UIControl.State.normal)
        choice2Button.setTitle(stories[0].choice2, for: UIControl.State.normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let recievedResponse=sender.titleLabel!.text!;
        let nextQuestion=storyBrain.nextQuestion(recievedResponse:recievedResponse)

        storyLabel.text=stories[nextQuestion].storyTitle
        choice1Button.setTitle(stories[nextQuestion].choice1, for: UIControl.State.normal)
        choice2Button.setTitle(stories[nextQuestion].choice2, for: UIControl.State.normal)
        
    }
    
}

