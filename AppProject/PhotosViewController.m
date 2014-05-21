//
//  PhotosViewController.m
//  AppProject
//
//  Created by Daniel Rodosky on 5/21/14.
//  Copyright (c) 2014 Dan Rodosky. All rights reserved.
//

#import "PhotosViewController.h"

@interface PhotosViewController ()

@end

@implementation PhotosViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.library = [[ALAssetsLibrary alloc] init];
}

- (void)viewDidUnload
{
    self.library = nil;
    [super viewDidUnload];
}

- (IBAction)takePhoto
{
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.editing = YES;
    imagePickerController.delegate = (id)self;
    
    [self presentViewController:imagePickerController animated:YES completion:nil];
    
}



@end
