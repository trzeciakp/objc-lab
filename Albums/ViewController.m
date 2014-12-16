//
//  ViewController.m
//  Albums
//
//  Created by Użytkownik Gość on 16.12.2014.
//  Copyright (c) 2014 Użytkownik Gość. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize artist;
@synthesize atitle;
@synthesize date;
@synthesize genre;


- (IBAction)buttonClicked:(id)sender {
    NSInteger index = 0;
    self.artist.text = self.albums[index][@"artist"];
    self.atitle.text = self.albums[index][@"title"];
    self.date.text = self.albums[index][@"date"];
    self.genre.text = self.albums[index][@"genre"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _mypath = [[NSBundle mainBundle] pathForResource:@"albums" ofType:@"plist"];
    self.albums = [NSMutableArray arrayWithContentsOfFile: self.mypath];
    NSInteger index = 0;
    self.artist.text = self.albums[index][@"artist"];
    self.atitle.text = self.albums[index][@"title"];
    self.date.text = self.albums[index][@"date"];
    self.genre.text = self.albums[index][@"genre"];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
