//
//  BNRQuizViewController.m
//  Quiz2
//
//  Created by Lou Oriondo on 11/3/14.
//  Copyright (c) 2014 ACM. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@end

@implementation BNRQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        _questions = @[@"From what is cognac made?",
                       @"What is 7 + 7?",
                       @"What is the capital of Vermont?"];
        _answers = @[@"Grapes!",
                     @"14",
                     @"Montpelier"];
    }
    return self;
}

- (IBAction)showQuestion:(id)sender{
    //Step to next question
    self.currentQuestionIndex++;
    //Check if last question
    if(self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    //Get string in question array from current index
    NSString *question = self.questions[self.currentQuestionIndex];
    //Display String in question label
    self.questionLabel.text = question;
    //display ??? on answer label
    self.answerLabel.text = @"???";
    
}

- (IBAction)showAnswer:(id)sender{
    //Answer to the current question?
    //Display it on answer label
    self.answerLabel.text = self.answers[self.currentQuestionIndex];
}

@end
