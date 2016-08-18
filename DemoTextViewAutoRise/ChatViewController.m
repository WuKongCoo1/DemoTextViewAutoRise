//
//  ChatViewController.m
//  DemoTextViewAutoRise
//
//  Created by 吴珂 on 16/8/18.
//  Copyright © 2016年 吴珂. All rights reserved.
//

#import "ChatViewController.h"
#import "UITextView+AutoRise.h"

@interface ChatViewController ()
@property (weak, nonatomic) IBOutlet UIView *bottomBackgroundView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomBackgroundViewHeightConstraint;//背景高度约束
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    __weak typeof(self)weakSelf = self;
    
    CGFloat defaultHeight = _bottomBackgroundViewHeightConstraint.constant - 8 * 2;//默认高度
    
    
    [_textView addAutoRiseHandlerWithdefaultHeight:defaultHeight maxHeight:100.f handler:^(CGFloat expectHeight) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        strongSelf.bottomBackgroundViewHeightConstraint.constant = expectHeight + 8 * 2;
        [strongSelf.bottomBackgroundView layoutIfNeeded];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
