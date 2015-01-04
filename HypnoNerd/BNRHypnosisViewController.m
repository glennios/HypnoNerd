//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Glenn on 1/2/15.
//  Copyright (c) 2015 Glenn. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    if (self) {
        self.tabBarItem.title = @"Reminder";
        self.tabBarItem.image = [UIImage imageNamed:@"Time.png"];
    }
    
    return self;
}

// - when a view controller is created (this class here), its self.view is nil, which causes loadView to be called.
// - init hypnosisView
// - set hypnosisView as the view of this controller
- (void)loadView {
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    self.view = backgroundView;
}
@end
