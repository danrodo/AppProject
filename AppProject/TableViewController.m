//
//  TableViewController.m
//  AppProject
//
//  Created by Daniel Rodosky on 5/21/14.
//  Copyright (c) 2014 Dan Rodosky. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()



@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"generic title";
    
    //[self refresh];

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [self.albums count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"folder identifier" ];
    
    if(cell == nil){
        //create new cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"folder identifier"];
        
    }
    
    cell.textLabel.text = self.albums [indexPath.row ];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@", self.albums [indexPath.row]);
}



@end
