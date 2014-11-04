//
//  JGViewController.m
//  JGInputAccessoryView
//
//  Created by Jay on 04/11/14.
//  Copyright (c) 2014 ultrasonic. All rights reserved.
//

#import "JGViewController.h"

@interface JGViewController (){
    UITextField *editingTF;
}

@end

@implementation JGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *options1 = @{JGIACancelButton:@NO};
    NSDictionary *options2 = @{JGIACancelButton:@YES};
    JGInputAccessory *inputAccesory = [[JGInputAccessory alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50) AndOptions:options1];
    inputAccesory.delegate = self;
    _txtField.inputAccessoryView = inputAccesory;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITextField Delegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    editingTF = textField;
}



#pragma mark - JGInputAccessory Delegates
-(void)userAction:(NSUInteger)identifer{
    switch (identifer) {
        case 1:
        {
            //done button
            [editingTF resignFirstResponder];
        }
            break;
        case 2:
        {
            //cancel button
            
        }
            break;
        default:
            break;
    }
}
@end
