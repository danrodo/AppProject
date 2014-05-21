//
//  TableViewController.m
//  AppProject
//
//  Created by Daniel Rodosky on 5/21/14.
//  Copyright (c) 2014 Dan Rodosky. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@property (nonatomic, strong) NSArray *albums;

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"generic title";
    
    //[self refresh];

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [self.albums count];
}



@end
