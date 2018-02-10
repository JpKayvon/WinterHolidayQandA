//
//  QuestionViewController.swift
//  WinterHolidayQandA
//
//  Created by MACUser on 2018/02/06.
//  Copyright © 2018 MACUser. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    //MARK: Outlets for UI
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleStackView1: UIStackView!
    @IBOutlet weak var stackView1Button1: UIButton!
    @IBOutlet weak var stackView1Button2: UIButton!
    @IBOutlet weak var stackView1Button3: UIButton!
    @IBOutlet weak var stackView1Button4: UIButton!
    
    @IBOutlet weak var singleStackView2: UIStackView!
    @IBOutlet weak var stackView2Button1: UIButton!
    @IBOutlet weak var stackView2Button2: UIButton!
    @IBOutlet weak var stackView2Button3: UIButton!
    @IBOutlet weak var stackView2Button4: UIButton!
    
    @IBOutlet weak var singleStackView3: UIStackView!
    @IBOutlet weak var stackView3Button1: UIButton!
    @IBOutlet weak var stackView3Button2: UIButton!
    @IBOutlet weak var stackView3Button3: UIButton!
    @IBOutlet weak var stackView3Button4: UIButton!
    
    @IBOutlet weak var singleStackView4: UIStackView!
    @IBOutlet weak var stackView4Button1: UIButton!
    @IBOutlet weak var stackView4Button2: UIButton!
    @IBOutlet weak var stackView4Button3: UIButton!
    @IBOutlet weak var stackView4Button4: UIButton!
    
    @IBOutlet weak var singleStackView5: UIStackView!
    @IBOutlet weak var stackView5Button1: UIButton!
    @IBOutlet weak var stackView5Button2: UIButton!
    @IBOutlet weak var stackView5Button3: UIButton!
    @IBOutlet weak var stackView5Button4: UIButton!
    
    
    @IBOutlet weak var rangedStackView1: UIStackView!
    @IBOutlet weak var rangedStackView1Label1: UILabel!
    @IBOutlet weak var rangedStackView1Label2: UILabel!
    @IBOutlet weak var rangedStackView1Slider: UISlider!
    
    
    @IBOutlet weak var rangedStackView2: UIStackView!
    @IBOutlet weak var rangedStackView2Label1: UILabel!
    @IBOutlet weak var rangedStackView2Label2: UILabel!
    @IBOutlet weak var rangedStackView2Slider: UISlider!
    
    @IBOutlet weak var rangedStackView3: UIStackView!
    @IBOutlet weak var rangedStackView3Label1: UILabel!
    @IBOutlet weak var rangedStackView3Label2: UILabel!
    @IBOutlet weak var rangedStackView3Slider: UISlider!
    
    @IBOutlet weak var rangedStackView4: UIStackView!
    @IBOutlet weak var rangedStackView4Label1: UILabel!
    @IBOutlet weak var rangedStackView4Label2: UILabel!
    @IBOutlet weak var rangedStackView4Slider: UISlider!
    
    @IBOutlet weak var rangedStackView5: UIStackView!
    @IBOutlet weak var rangedStackView5Label1: UILabel!
    @IBOutlet weak var rangedStackView5Label2: UILabel!
    @IBOutlet weak var rangedStackView5Slider: UISlider!
    
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    //MARK: Actions for objects
    
    @IBAction func stackView1AnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers

        switch sender {
        case stackView1Button1:
            answersChosen.append(currentAnswers[0])
        case stackView1Button2:
            answersChosen.append(currentAnswers[1])
        case stackView1Button3:
            answersChosen.append(currentAnswers[2])
        case stackView1Button4:
            answersChosen.append(currentAnswers[3])
        default: break
        }
        nextQuestion()
    }
    
    @IBAction func stackView2AnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case stackView2Button1:
            answersChosen.append(currentAnswers[0])
        case stackView2Button2:
            answersChosen.append(currentAnswers[1])
        case stackView2Button3:
            answersChosen.append(currentAnswers[2])
        case stackView2Button4:
            answersChosen.append(currentAnswers[3])
        default: break
        }
        nextQuestion()
    }
    
    @IBAction func stackView3AnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case stackView3Button1:
            answersChosen.append(currentAnswers[0])
        case stackView3Button2:
            answersChosen.append(currentAnswers[1])
        case stackView3Button3:
            answersChosen.append(currentAnswers[2])
        case stackView3Button4:
            answersChosen.append(currentAnswers[3])
        default: break
        }
        nextQuestion()
    }
    
    @IBAction func stackView4AnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case stackView4Button1:
            answersChosen.append(currentAnswers[0])
        case stackView4Button2:
            answersChosen.append(currentAnswers[1])
        case stackView4Button3:
            answersChosen.append(currentAnswers[2])
        case stackView4Button4:
            answersChosen.append(currentAnswers[3])
        default: break
        }
        nextQuestion()
    }
    
    @IBAction func stackView5AnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case stackView5Button1:
            answersChosen.append(currentAnswers[0])
        case stackView5Button2:
            answersChosen.append(currentAnswers[1])
        case stackView5Button3:
            answersChosen.append(currentAnswers[2])
        case stackView5Button4:
            answersChosen.append(currentAnswers[3])
        default: break
        }
        nextQuestion()
    }
    
    @IBAction func rangedStackView1AnswerButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedStackView1Slider.value*Float(currentAnswers.count - 1)))
        answersChosen.append(currentAnswers[index])
        
        nextQuestion()
    }
    
    @IBAction func rangedStackView2ButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedStackView2Slider.value*Float(currentAnswers.count - 1)))
        answersChosen.append(currentAnswers[index])
        
        nextQuestion()
    }
    
    @IBAction func rangedStackView3ButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedStackView3Slider.value*Float(currentAnswers.count - 1)))
        answersChosen.append(currentAnswers[index])
        
        nextQuestion()
    }
    
    @IBAction func rangedStackView4ButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedStackView4Slider.value*Float(currentAnswers.count - 1)))
        answersChosen.append(currentAnswers[index])
        
        nextQuestion()
    }
    
    @IBAction func rangedStackView5ButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedStackView5Slider.value*Float(currentAnswers.count - 1)))
        answersChosen.append(currentAnswers[index])
        
        nextQuestion()
    }
    
    
    
    //MARK: Index to keep track of questions
    var questionIndex = 0
    
    //MARK: Question array
    var questions: [Question] = [
        Question(number: .A, text: "How often did you eat fruit and vegetables?", type: .single,
                 answers: [
                    Answer(text: "Everyday", type: .healthy),
                    Answer(text: "Most days", type: .quiteHealthy),
                    Answer(text: "A few times a week", type: .quiteUnhealthy),
                    Answer(text: "Almost never", type: .unhealthy)
            ]),
        Question(number: .B, text: "How often did you eat fast food?", type: .single,
                 answers: [
                    Answer(text: "Never", type: .healthy),
                    Answer(text: "Not very often", type: .quiteHealthy),
                    Answer(text: "Quite often", type: .quiteUnhealthy),
                    Answer(text: "All the time", type: .unhealthy)
            ]),
        Question(number: .C, text: "Which did you drink most often?", type: .single,
                 answers: [
                    Answer(text: "Water", type: .healthy),
                    Answer(text: "Green tea", type: .quiteHealthy),
                    Answer(text: "Fruit juice", type: .quiteUnhealthy),
                    Answer(text: "Fizzy drinks", type: .unhealthy)
            ]),
        Question(number: .D, text: "How often did you eat candy, cakes or doughnuts?", type: .single,
                 answers: [
                    Answer(text: "Never", type: .healthy),
                    Answer(text: "Not very often", type: .quiteHealthy),
                    Answer(text: "Quite often", type: .quiteUnhealthy),
                    Answer(text: "All the time", type: .unhealthy)
            ]),
        Question(number: .E, text: "Which did you eat most often?", type: .single,
                 answers: [
                    Answer(text: "Fish or tofu", type: .healthy),
                    Answer(text: "Chicken", type: .quiteHealthy),
                    Answer(text: "Red meat", type: .quiteUnhealthy),
                    Answer(text: "Bread or dairy products", type: .unhealthy)
            ]),
        
        //Ranged questions
        Question(number: .F, text: "How often did you exercise?", type: .ranged,
                 answers: [
                    Answer(text: "Everyday", type: .healthy),
                    Answer(text: "Most days", type: .quiteHealthy),
                    Answer(text: "A few times a week", type: .quiteUnhealthy),
                    Answer(text: "Almost never", type: .unhealthy)
            ]),
        Question(number: .G, text: "Which did you do the most?", type: .ranged,
                 answers: [
                    Answer(text: "Sport", type: .healthy),
                    Answer(text: "Meeting friends / Shopping", type: .quiteHealthy),
                    Answer(text: "Studying / Sleeping", type: .quiteUnhealthy),
                    Answer(text: "Playing video games", type: .unhealthy)
            ]),
        Question(number: .H, text: "How much time did you sleep every night?", type: .ranged,
                 answers: [
                    Answer(text: "7-8 hours", type: .healthy),
                    Answer(text: "More than 8 hours", type: .quiteHealthy),
                    Answer(text: "6-7 hours", type: .quiteUnhealthy),
                    Answer(text: "Less than 6 hours", type: .unhealthy)
            ]),
        Question(number: .I, text: "How much time were you sick?", type: .ranged,
                 answers: [
                    Answer(text: "Not at all", type: .healthy),
                    Answer(text: "A few days", type: .quiteHealthy),
                    Answer(text: "A week", type: .quiteUnhealthy),
                    Answer(text: "Most of the time", type: .unhealthy)
            ]),
        Question(number: .J, text: "How much time did you feel relaxed?", type: .ranged,
                 answers: [
                    Answer(text: "All the time", type: .healthy),
                    Answer(text: "Most of the time", type: .quiteHealthy),
                    Answer(text: "Sometimes", type: .quiteUnhealthy),
                    Answer(text: "Almost never", type: .unhealthy)
            ]),
    ]
    
    
    //MARK: Actions to perform before presenting to the user.
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    //MARK: Segue to pass data to ResultsViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultsSegue" {
            //Downcasts the destination of UIViewController to the results controller, so that it can access its properties!!
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.responses = answersChosen
        }
    }
    
    //MARK: Method to update keep information to the interface
    func updateUI() {
        singleStackView1.isHidden = true
        singleStackView2.isHidden = true
        singleStackView3.isHidden = true
        singleStackView4.isHidden = true
        singleStackView5.isHidden = true
        rangedStackView1.isHidden = true
        rangedStackView2.isHidden = true
        rangedStackView3.isHidden = true
        rangedStackView4.isHidden = true
        rangedStackView5.isHidden = true
    
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.number {
        case .A:
            updateSingleStackView1(using: currentAnswers)
        case .B:
            updateSingleStackView2(using: currentAnswers)
        case .C:
            updateSingleStackView3(using: currentAnswers)
        case .D:
            updateSingleStackView4(using: currentAnswers)
        case .E:
            updateSingleStackView5(using: currentAnswers)

            
        case .F:
            updateRangedStackView1(using: currentAnswers)
        case .G:
            updateRangedStackView2(using: currentAnswers)
        case .H:
            updateRangedStackView3(using: currentAnswers)
        case .I:
            updateRangedStackView4(using: currentAnswers)
        case .J:
            updateRangedStackView5(using: currentAnswers)
        }
    }
    
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }
    
    var answersChosen: [Answer] = []
        
        func updateSingleStackView1(using answers: [Answer]) {
            singleStackView1.isHidden = false
            stackView1Button1.setTitle(answers[0].text, for: .normal)
            stackView1Button2.setTitle(answers[1].text, for: .normal)
            stackView1Button3.setTitle(answers[2].text, for: .normal)
            stackView1Button4.setTitle(answers[3].text, for: .normal)
        }
        func updateSingleStackView2(using answers: [Answer]) {
            singleStackView2.isHidden = false
            stackView2Button1.setTitle(answers[0].text, for: .normal)
            stackView2Button2.setTitle(answers[1].text, for: .normal)
            stackView2Button3.setTitle(answers[2].text, for: .normal)
            stackView2Button4.setTitle(answers[3].text, for: .normal)
        }
        func updateSingleStackView3(using answers: [Answer]) {
            singleStackView3.isHidden = false
            stackView3Button1.setTitle(answers[0].text, for: .normal)
            stackView3Button2.setTitle(answers[1].text, for: .normal)
            stackView3Button3.setTitle(answers[2].text, for: .normal)
            stackView3Button4.setTitle(answers[3].text, for: .normal)
        }
        func updateSingleStackView4(using answers: [Answer]) {
            singleStackView4.isHidden = false
            stackView4Button1.setTitle(answers[0].text, for: .normal)
            stackView4Button2.setTitle(answers[1].text, for: .normal)
            stackView4Button3.setTitle(answers[2].text, for: .normal)
            stackView4Button4.setTitle(answers[3].text, for: .normal)
        }
        func updateSingleStackView5(using answers: [Answer]) {
            singleStackView5.isHidden = false
            stackView5Button1.setTitle(answers[0].text, for: .normal)
            stackView5Button2.setTitle(answers[1].text, for: .normal)
            stackView5Button3.setTitle(answers[2].text, for: .normal)
            stackView5Button4.setTitle(answers[3].text, for: .normal)
        }
        func updateRangedStackView1(using answers: [Answer]) {
            rangedStackView1.isHidden = false
            view.backgroundColor = .lightGray
            rangedStackView1Label1.text = answers.first?.text
            rangedStackView1Label2.text = answers.last?.text
        }
        func updateRangedStackView2(using answers: [Answer]) {
            rangedStackView2.isHidden = false
            view.backgroundColor = .lightGray

            rangedStackView2Label1.text = answers.first?.text
            rangedStackView2Label2.text = answers.last?.text
        }
        func updateRangedStackView3(using answers: [Answer]) {
            rangedStackView3.isHidden = false
            view.backgroundColor = .lightGray

            rangedStackView3Label1.text = answers.first?.text
            rangedStackView3Label2.text = answers.last?.text
        }
        func updateRangedStackView4(using answers: [Answer]) {
            rangedStackView4.isHidden = false
            view.backgroundColor = .lightGray

            rangedStackView4Label1.text = answers.first?.text
            rangedStackView4Label2.text = answers.last?.text
        }
        func updateRangedStackView5(using answers: [Answer]) {
            rangedStackView5.isHidden = false
            view.backgroundColor = .lightGray

            rangedStackView5Label1.text = answers.first?.text
            rangedStackView5Label2.text = answers.last?.text
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
