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
    NSInteger index = arc4random_uniform([_albums count]);
    [self changeTrack:index];

}


- (IBAction)nextClicked:(id)sender {
    NSInteger index = (_currentTrack + 1) % [_albums count];
    [self changeTrack:index];
    
}


- (IBAction)prevClicked:(id)sender {
    NSInteger index = (_currentTrack - 1) % [_albums count];
    [self changeTrack:index];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _mypath = [[NSBundle mainBundle] pathForResource:@"albums" ofType:@"plist"];
    self.albums = [NSMutableArray arrayWithContentsOfFile: self.mypath];
    [self changeTrack:0];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changeTrack:(NSInteger) index {
    self.artist.text = self.albums[index][@"artist"];
    self.atitle.text = self.albums[index][@"title"];
    NSNumber* val = self.albums[index][@"date"];
    self.date.text = [val stringValue];
    self.genre.text = self.albums[index][@"genre"];
    self.currentTrack = index;
    self.currRecord.text = [NSString stringWithFormat:@"Record %ld of %ld", index + 1, [_albums count] ];
    
}

@end
