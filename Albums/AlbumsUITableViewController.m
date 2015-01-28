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
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.albums count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *CellIdentifier = @"SubtitleCell";
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = self.albums[indexPath.row][@"title"];
    cell.detailTextLabel.text = self.albums[indexPath.row][@"artist"];
    return cell;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    _mypath = [[NSBundle mainBundle] pathForResource:@"albums" ofType:@"plist"];
    self.albums = [NSMutableArray arrayWithContentsOfFile: self.mypath];
}
@end
