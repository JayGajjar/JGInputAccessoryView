//
//  JGViewController.h
//  JGInputAccessoryView
//
//  Created by Jay on 04/11/14.
//  Copyright (c) 2014 ultrasonic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JGInputAccessory.h"

@interface JGViewController : UIViewController<JGInputAccessoryDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtField;
@end
