//
//  PhotosViewController.h
//  AppProject
//
//  Created by Daniel Rodosky on 5/21/14.
//  Copyright (c) 2014 Dan Rodosky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface PhotosViewController : UIViewController <UIImagePickerControllerDelegate>

@property (nonatomic, strong) ALAssetsLibrary *library;

@end
