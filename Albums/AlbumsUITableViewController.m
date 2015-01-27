//
//  AlbumsUITableViewController.m
//  Albums
//
//  Created by Użytkownik Gość on 27.01.2015.
//  Copyright (c) 2015 Użytkownik Gość. All rights reserved.
//

#import "AlbumsUITableViewController.h"

@interface AlbumsUITableViewController ()

@end

@implementation AlbumsUITableViewController
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1; }
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SubtitleCell cell = [tableView  cellForRowAtIndexPath:indexPath];
    
    static NSString *CellIdentifier = @"UniversityCell";
    UniversityCell *cell = (UniversityCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.nameLabel.text = self.unidb[indexPath.row][@"name"];
    cell.regionLabel.text = self.unidb[indexPath.row][@"region"];
    cell.ratingImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%dstar", [self.unidb[indexPath.row][@"rating"] integerValue]]];
    return cell;
}
@end


