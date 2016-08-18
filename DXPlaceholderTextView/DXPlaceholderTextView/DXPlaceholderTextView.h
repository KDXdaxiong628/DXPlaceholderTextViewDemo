//
//  DXPlaceholderTextView.h
//  PlaceholderTextView
//
//  Created by kongdexiong on 15/11/16.
//  Copyright © 2015年 gitBurning. All rights reserved.
//  增强版的UITextView

#import <UIKit/UIKit.h>

@interface DXPlaceholderTextView : UITextView
@property (nonatomic, copy) NSString *placeholder;
@property (nonatomic, strong) UIColor *placeholderColor;
@end
