//
//  ViewController.m
//  MissionBriefingObj-c
//
//  Created by Shane Nelson on 4/24/17.
//  Copyright © 2017 Shane Nelson. All rights reserved.
//

#import "ViewController.h" 

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *agentUserTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@property (weak, nonatomic) IBOutlet UITextView *briefingTextView;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self.agentUserTextField setText:@""];
  self.greetingLabel.text = @"";
  self.briefingTextView.text = @"";
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
 
}

- (IBAction)authenticateAgent:(UIButton *)sender
{
 
  if ([self.agentUserTextField isFirstResponder])
  {
    [self.agentUserTextField resignFirstResponder];
  }
  
  if (![self.agentUserTextField.text isEqualToString:@""] && ![self.passwordTextField.text isEqualToString:@""])
  {
  
    NSString *agentName = self.agentUserTextField.text;
    
    NSString *lastName = [agentName componentsSeparatedByString:@" "][1];
    self.greetingLabel.text = [NSString stringWithFormat:@"Good Evening, Agent %@", lastName];
    
    self.briefingTextView.text = [NSString stringWithFormat: @"This mission will be an arduous one, fraught with peril. You will cover much strange and unfamiliar territory. Should you choose to accept this mission, Agent %@, you will certainly be disavowed, but you will be doing your country a great service. This message will self destruct in 5 seconds.", lastName];
    
    UIColor *authenticatedBackgroundColor = [UIColor colorWithRed:0.585f green:0.78f blue:0.188f alpha:1.0f];
    
    self.view.backgroundColor = authenticatedBackgroundColor;
  }
  else
  {
    
    UIColor *accessDeniedBackgroundColor = [UIColor colorWithRed:0.78f green:0.188f blue:0.188f alpha:1.0f];
    
    self.view.backgroundColor = accessDeniedBackgroundColor;
  }
}

@end
