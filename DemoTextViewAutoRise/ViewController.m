//
//  ViewController.m
//  DemoTextViewAutoRise
//
//  Created by 吴珂 on 16/8/18.
//  Copyright © 2016年 吴珂. All rights reserved.
//

#import "ViewController.h"
#import "UITextView+AutoRise.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textViewHeightConstraint;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_textView addAutoRiseHandlerWithdefaultHeight:_textViewHeightConstraint.constant maxHeight:100 handler:^(CGFloat expectHeight) {
        _textViewHeightConstraint.constant = expectHeight;
        [_textView layoutIfNeeded];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
