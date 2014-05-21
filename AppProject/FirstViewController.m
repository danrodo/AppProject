//
//  FirstViewController.m
//  AppProject
//
//  Created by Daniel Rodosky on 5/19/14.
//  Copyright (c) 2014 Dan Rodosky. All rights reserved.
//

#import "FirstViewController.h"
#import "CameraViewController.h"
#import "TableViewController.h"
#import "PhotosViewController.h"
#import <ACPButton/ACPButton.h>

@interface FirstViewController () <UIActionSheetDelegate>



@property (nonatomic, strong) ACPButton *cameraButton;
@property (nonatomic, strong) ACPButton *foldersButton;

@end

@implementation FirstViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor clearColor];
    
    ACPButton *cb = [ACPButton buttonWithType:UIButtonTypeCustom];
    [cb setTitle:@"Create Folder" forState:UIControlStateNormal];
    [cb setStyleType:ACPButtonBlue];
    
    [self.view addSubview:cb];
    [cb sizeToFit];
    [cb addTarget:self action:@selector(cbButtonPushed) forControlEvents:UIControlEventTouchUpInside];
    
    self.cameraButton = cb;
    
    ACPButton *fb = [UIButton buttonWithType:UIButtonTypeSystem];
    [fb setTitle:@"Folders" forState:UIControlStateNormal];
    [self.view addSubview:fb];
    [fb sizeToFit];
    [fb addTarget:self action:@selector(fbButtonPushed) forControlEvents:UIControlEventTouchUpInside];
    
    self.foldersButton = fb;
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    [self.cameraButton setFrame:CGRectMake(100, 150, 120, 60)];
    [self.foldersButton setFrame:CGRectMake(100, 300, 120, 60)];
}

- (void)cbButtonPushed
{
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:@"cancel" destructiveButtonTitle:nil otherButtonTitles:@"Take Photo", @"Choose Fron Library", nil];
    [actionSheet showInView:self.view];
    
    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"%d", buttonIndex);
    if(buttonIndex == 0){
        [self.navigationController pushViewController:[[CameraViewController alloc] init] animated:YES];
    }
    if(buttonIndex == 1){
        [self.navigationController pushViewController:[[PhotosViewController alloc] init] animated:YES];
    }
}

- (void)fbButtonPushed
{
    [self.navigationController pushViewController:[[TableViewController alloc] init]  animated:YES];
}

@end
