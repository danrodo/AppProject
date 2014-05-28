//
//  CreateFolderViewController.m
//  AppProject
//
//  Created by Charles Bailey on 5/23/14.
//  Copyright (c) 2014 Dan Rodosky. All rights reserved.
//

#import "CreateFolderViewController.h"
#import <ACPButton/ACPButton.h>

@interface CreateFolderViewController () <UITextFieldDelegate>

@property (nonatomic, strong) ACPButton *saveButton;
@property (nonatomic, strong) ACPButton *cancelButton;

@end

@implementation CreateFolderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 300, 44)];
    tf.backgroundColor = [UIColor blueColor];
    tf.textColor = [UIColor whiteColor];
    [self.view addSubview:tf];
    tf.center = self.view.center;
    tf.delegate = self;
    
    ACPButton *sb = [ACPButton buttonWithType:UIButtonTypeCustom];
    [sb setTitle:@"Save" forState:UIControlStateNormal];
    [sb setStyleType:ACPButtonBlue];
    [self.view addSubview:sb];
    [sb sizeToFit];
    [sb addTarget:self action:@selector(sbButtonPushed) forControlEvents:UIControlEventTouchUpInside];
    
    self.saveButton = sb;
    
    
    ACPButton *cb = [ACPButton buttonWithType:UIButtonTypeCustom];
    [cb setTitle:@"Cancel" forState:UIControlStateNormal];
    [cb setStyleType: ACPButtonBlue];
    [self.view addSubview:cb];
    [cb sizeToFit];
    [cb addTarget:self action:@selector(cbButtonPushed) forControlEvents:UIControlEventTouchUpInside];
    
    self.cancelButton = cb;
    
    
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    [self.saveButton setFrame:CGRectMake(220, 50, 60, 30)];
    [self.cancelButton setFrame:CGRectMake(40, 50, 60, 30)];
    
}

- (void)sbButtonPushed
{
    
}

- (void)cbButtonPushed
{
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self dismissViewControllerAnimated:YES completion:^{
        
        [self.delegate didGetText:textField.text];
        
    }];
    
    return YES;
}

@end
