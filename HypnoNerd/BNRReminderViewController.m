//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Glenn on 1/3/15.
//  Copyright (c) 2015 Glenn. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController()
@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@end

@implementation BNRReminderViewController
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.tabBarItem.title = @"Reminder";
        self.tabBarItem.image = [UIImage imageNamed:@"Time.png"];
    }
    
    return self;
}

- (IBAction)addReminder:(id)sender {
    UILocalNotification *note = [[UILocalNotification alloc] init];
    
    note.fireDate  = self.datePicker.date;
    note.alertBody = @"Hypnotize me!";
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
    
    
    NSLog(@"Setting a reminder for %@", note.fireDate);
}

- (void)viewDidLoad {
    NSLog(@"loaded BNRReminderViewController");
}
@end
