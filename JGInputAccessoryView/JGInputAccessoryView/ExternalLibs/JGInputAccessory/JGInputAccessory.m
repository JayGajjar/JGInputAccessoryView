//
//  JGInputAccessory.m
//  AhmedabadProperty
//
//  Created by Jay on 28/10/14.
//  Copyright (c) 2014 Jay. All rights reserved.
//

#import "JGInputAccessory.h"

NSString * const JGIACancelButton=@"JGIACancelButton";

@implementation JGInputAccessory

-(id)initWithFrame:(CGRect)frame AndOptions:(NSDictionary *)options{
    self = [super initWithFrame:frame];
    if (self) {
        
        // Initialization code
        self.doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.doneButton setFrame:CGRectMake(self.frame.size.width - 70 , 10, 60, 30)];
        [self.doneButton addTarget:self action:@selector(doneButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.doneButton setTitle:@"Done" forState:UIControlStateNormal];
        [self.doneButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.doneButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [self.doneButton.layer setCornerRadius:5];
        [self.doneButton.layer setBorderColor:[[UIColor blackColor] CGColor]];
        [self.doneButton.layer setBorderWidth:1];
        [self addSubview:self.doneButton];
        
        if ([[options objectForKey:JGIACancelButton] boolValue]) {
            self.cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
            [self.cancelButton setFrame:CGRectMake(10 , 10, 60, 30)];
            [self.cancelButton addTarget:self action:@selector(cancelButtonAction:) forControlEvents:UIControlEventTouchUpInside];
            [self.cancelButton setTitle:@"Cancel" forState:UIControlStateNormal];
            [self.cancelButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [self.cancelButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
            [self.cancelButton.layer setCornerRadius:5];
            [self.cancelButton.layer setBorderColor:[[UIColor blackColor] CGColor]];
            [self.cancelButton.layer setBorderWidth:1];
            [self addSubview:self.cancelButton];
        }
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //default settings
        self.translucentAlpha = 1;
        self.translucentStyle = UIBarStyleDefault;
        self.translucentTintColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        
    }
    return self;
}

-(IBAction)doneButtonAction:(id)sender{
    if (self.delegate && [self.delegate respondsToSelector:@selector(userAction:)]) {
        [self.delegate userAction:1];
    }
}

-(IBAction)cancelButtonAction:(id)sender{
    if (self.delegate && [self.delegate respondsToSelector:@selector(userAction:)]) {
        [self.delegate userAction:2];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
