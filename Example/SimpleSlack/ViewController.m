//
//  ViewController.m
//  SimpleSlack
//
//  Created by Geoffroy Lesage on 8/31/16.
//  Copyright © 2016 Geoffroy Lesage. All rights reserved.
//

#import "ViewController.h"
#import <SimpleSlack/SimpleSlack.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    SimpleSlack *ss = [[SimpleSlack alloc] initWithWebHook:@"https://hooks.slack.com/services/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"];
    [ss post:@"test"];
}

@end
