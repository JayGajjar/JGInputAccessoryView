//
//  JGInputAccessory.h
//  AhmedabadProperty
//
//  Created by Jay on 28/10/14.
//  Copyright (c) 2014 Jay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ILTranslucentView.h"

//options
extern NSString * const JGIACancelButton;


@protocol JGInputAccessoryDelegate <NSObject>
@required
-(void)userAction:(NSUInteger)identifer;//1=donebutton, 2=cancelbutton

@end // end of delegate protocol


@interface JGInputAccessory : ILTranslucentView

@property (nonatomic, weak) id<JGInputAccessoryDelegate> delegate;
@property (nonatomic,retain) UIButton *doneButton, *cancelButton;

-(id)initWithFrame:(CGRect)frame AndOptions:(NSDictionary *)options;
@end
