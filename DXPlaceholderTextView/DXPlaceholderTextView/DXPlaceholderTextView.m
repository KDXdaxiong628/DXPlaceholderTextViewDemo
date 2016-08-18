//
//  DXPlaceholderTextView.m
//  PlaceholderTextView
//
//  Created by kongdexiong on 15/11/16.
//  Copyright © 2015年 gitBurning. All rights reserved.
//

#import "DXPlaceholderTextView.h"

@implementation DXPlaceholderTextView

- (id) initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        //通知
        //当UITextView的文字改变的时候，UITextView会自己发出一个UITextViewTextDidChangeNotification通知，object最好为self（自己），如过是Nil的话，当这个页面有2个UITextView的时候，就会出现错乱
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(DidChange:) name:UITextViewTextDidChangeNotification object:self];

    }
    return self;
}



-(void)DidChange:(NSNotification*)noti{
    //重绘（重新调用- (void)drawRect:(CGRect)rect这个方法）
    [self setNeedsDisplay];
    
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    if (self.hasText) return;
    
    //文字属性
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = self.font;//等于自己的字体大小
    attrs[NSForegroundColorAttributeName] = self.placeholderColor;
    
    //画文字
   // [self.placeholder drawAtPoint:CGPointMake(5, 8) withAttributes:attrs];
    CGRect rectSet = CGRectMake(5, 8, rect.size.width - 10, rect.size.height - 16);
    [self.placeholder drawInRect:rectSet withAttributes:attrs];
}


@end
