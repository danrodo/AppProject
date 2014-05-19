//
//  FirstViewController.m
//  AppProject
//
//  Created by Daniel Rodosky on 5/19/14.
//  Copyright (c) 2014 Dan Rodosky. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong) UIButton *cameraButton;
@property (nonatomic, strong) UIButton *foldersButton;

@end

@implementation FirstViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    UIButton *cb = [UIButton buttonWithType:UIButtonTypeSystem];
    [cb setTitle:@"Create Folder" forState:UIControlStateNormal];
    [self.view addSubview:cb];
    [cb sizeToFit];
    
    self.cameraButton = cb;
    
    UIButton *fb = [UIButton buttonWithType:UIButtonTypeSystem];
    [fb setTitle:@"Folders" forState:UIControlStateNormal];
    [self.view addSubview:fb];
    [fb sizeToFit];
    
    self.foldersButton = fb;
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    [self.cameraButton setFrame:CGRectMake(100, 150, 120, 60)];
    [self.foldersButton setFrame:CGRectMake(100, 300, 120, 60)];
}

@end
