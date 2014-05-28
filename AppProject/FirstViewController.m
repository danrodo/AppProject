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
#import "CreateFolderViewController.h"
#import <ACPButton/ACPButton.h>

@interface FirstViewController () <UIActionSheetDelegate, CFDelegate>

@property (nonatomic, strong) UITextField *albumName;
@property (nonatomic, strong) ACPButton *cameraButton;
@property (nonatomic, strong) ACPButton *foldersButton;
@property (nonatomic, strong) NSMutableArray *foldersArray;

@end

@implementation FirstViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.foldersArray = [NSMutableArray array];
    
    self.view.backgroundColor = [UIColor clearColor];
    
    ACPButton *cb = [ACPButton buttonWithType:UIButtonTypeCustom];
    [cb setTitle:@"Create Folder" forState:UIControlStateNormal];
    [cb setStyleType:ACPButtonBlue];
    
    [self.view addSubview:cb];
    [cb sizeToFit];
    [cb addTarget:self action:@selector(cbButtonPushed) forControlEvents:UIControlEventTouchUpInside];
    
    self.cameraButton = cb;
    
    ACPButton *fb = [ACPButton buttonWithType:UIButtonTypeSystem];
    [fb setTitle:@"Folders" forState:UIControlStateNormal];
    [fb setStyleType:ACPButtonBlue];
    
    [self.view addSubview:fb];
    [fb sizeToFit];
    [fb addTarget:self action:@selector(fbButtonPushed) forControlEvents:UIControlEventTouchUpInside];
    
    self.foldersButton = fb;
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    [self.cameraButton setFrame:CGRectMake(0 , 0, 120, 60)];
    self.cameraButton.center = CGPointMake(self.view.center.x, 150);
    
    [self.foldersButton setFrame:CGRectMake(0, 200, 120, 60)];
    self.foldersButton.center = CGPointMake(self.view.center.x, 250);
}

- (void)cbButtonPushed
{
    
//    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:@"cancel" destructiveButtonTitle:nil otherButtonTitles:@"Take Photo", @"Choose Fron Library", nil];
//    [actionSheet showInView:self.view];
    
    CreateFolderViewController *cVC = [[CreateFolderViewController alloc] init];
    cVC.delegate = self;
    [self presentViewController:cVC animated:YES completion:nil];
    
}

- (void)didGetText:(NSString *)text
{
    [self.foldersArray addObject:text];
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
    TableViewController *tableVC = [[TableViewController alloc] init];
    tableVC.albums = self.foldersArray;
    [self.navigationController pushViewController:tableVC  animated:YES];
}

@end
