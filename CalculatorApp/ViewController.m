//
//  ViewController.m
//  CalculatorApp
//
//  Created by Jennifer Johnson on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


//Clear button to clear input
-(IBAction)clearButton:(id)sender
{
    firstNum = 0;
    secondNum = 0;
    inputField.text = @"";
}

//Power Button
-(IBAction)onSwitch:(id)sender
{
    UISwitch *thisSwitch = (UISwitch*)sender;
    if(thisSwitch != nil) // if it is off
    {
        NSLog(@"Test");
        inputField.text = @"";
    }
}


//numberButtons function

-(IBAction)numberButtons:(id)sender
{
    UIButton *thisButton = (UIButton*)sender;
    if(thisButton != nil)
    {
        if (powerButton.on != false)
        {
            NSMutableString *currentInput = [[NSMutableString alloc] initWithString:inputField.text];
            [currentInput appendString:thisButton.titleLabel.text];
            inputField.text = currentInput;
        }
    }
}
//Add Button
-(IBAction)addButton:(id)sender
{
    firstNum = [inputField.text intValue];
    inputField.text = @"";
}

//Equals Button
-(IBAction)equalsButton:(id)sender
{
    secondNum = [inputField.text intValue];
    int addNums = firstNum + secondNum;
    NSString *addNumstoString = [NSString stringWithFormat:@"%d", addNums];
    inputField.text = addNumstoString;
}

// Info Button to go to SecondViewController
-(IBAction)onClick:(id)sender
{
    SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if(viewController != nil)
    {
        [self presentModalViewController:viewController animated:TRUE];
    }
}

//background colors
-(IBAction)bgChange:(id)sender
{
    UISegmentedControl *thisControl = (UISegmentedControl*)sender;
    if (thisControl != nil)
    {
        if (thisControl.selectedSegmentIndex == 0) {
            self.view.backgroundColor = [UIColor whiteColor];
        } else if (thisControl.selectedSegmentIndex == 1) {
            self.view.backgroundColor = [UIColor blueColor];
        } else if (thisControl.selectedSegmentIndex == 2) {
            self.view.backgroundColor = [UIColor purpleColor];
        }
    }
}

@end
