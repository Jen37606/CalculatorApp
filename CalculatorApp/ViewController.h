//
//  ViewController.h
//  CalculatorApp
//
//  Created by Jennifer Johnson on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int firstNum;
    int secondNum;
    IBOutlet UISwitch *powerButton;
    IBOutlet UITextField *inputField;    
}

    
-(IBAction)onClick:(id)sender;
-(IBAction)clearButton:(id)sender;
-(IBAction)numberButtons:(id)sender;
-(IBAction)addButton:(id)sender;
-(IBAction)equalsButton:(id)sender;
-(IBAction)onSwitch:(id)sender;
-(IBAction)bgChange:(id)sender;

@end
