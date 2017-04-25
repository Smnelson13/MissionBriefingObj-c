//
//  ViewController.m
//  MissionBriefingObj-c
//
//  Created by Shane Nelson on 4/24/17.
//  Copyright © 2017 Shane Nelson. All rights reserved.
//

#import "ViewController.h" 

@interface ViewController <UITextFieldDelegate> ()
@property (weak, nonatomic) IBOutlet UITextField *agentUserTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@property (weak, nonatomic) IBOutlet UITextView *briefingTextView;

@end

@implementation ViewController


- (void)viewDidLoad
{
  [super viewDidLoad];
 
  _greetingLabel.text = @"";
  _briefingTextView = @"";

}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)authenticateAgent:(id)sender
{
  
}


-textFieldShouldReturn:(UITextField *)textField

do
{
  var
  rc = NO
  if
  {
    
  }
  do
  {
    if
    {
      textField == agentUserTextField
    }
    do
    {
      passwordTextField.becomeFirstResponder()()
    }
    if
    {
      textField == passwordTextField
    }
    do
    {
      rc = YES
      signInAgent()
    }
  }
  return rc
}






@end
