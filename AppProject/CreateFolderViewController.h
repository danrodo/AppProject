//
//  CreateFolderViewController.h
//  AppProject
//
//  Created by Daniel Rodosky on 5/24/14.
//  Copyright (c) 2014 Dan Rodosky. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CFDelegate <NSObject>

- (void)didGetText:(NSString *)text;
@end

@interface CreateFolderViewController : UIViewController

@property (nonatomic, weak) id<CFDelegate> delegate;

@end
