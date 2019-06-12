import Foundation

class QuestionBank{
    var list = [Question]()
    
    init() {
        list.append(Question(image: "image1", questionText: "What car is this?", choiceA: "Toyota Avalon", choiceB: "Toyota Corolla", choiceC: "Toyota Camry", choiceD: "Lexus ES", answer: 3))
        list.append(Question(image: "image2", questionText: "How many borders does Kazakhstan have.", choiceA: "7", choiceB: "5", choiceC: "6", choiceD: "4", answer: 2))
        list.append(Question(image: "image3", questionText: " How many times has the name of the capital changed?", choiceA: "5", choiceB: "4", choiceC: "3", choiceD: "6", answer: 1))
        list.append(Question(image: "image4", questionText: "The most grossed movie of all time?", choiceA: "Avengers: Endgame", choiceB: "Titanic", choiceC: "Avatar", choiceD: "Star Wars: Episode VII", answer: 3))
        list.append(Question(image: "image5", questionText: "The richest man in the world?", choiceA: "Mark Zuckerberg", choiceB: "Jeff Bezos", choiceC: "Warren Buffett", choiceD: "Bill Gates", answer: 2))
        list.append(Question(image: "image6", questionText: "The most expensive company?", choiceA: "Amazon Inc.", choiceB: "Microsoft", choiceC: "Apple inc.", choiceD: "Alphabet Inc.", answer: 1))
        list.append(Question(image: "image7", questionText: "Year of foundation of KBTU?", choiceA: "2001", choiceB: "2002", choiceC: "1999", choiceD: "2004", answer: 1))
        list.append(Question(image: "image8", questionText: "When was the first iphone released?", choiceA: "2011", choiceB: "2008", choiceC: "2009", choiceD: "2007", answer: 4))
    }
}
