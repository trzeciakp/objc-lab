//  ViewController.h
//  Albums
//
//  Created by Użytkownik Gość on 16.12.2014.
//  Copyright (c) 2014 Użytkownik Gość. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *artist;
@property (weak, nonatomic) IBOutlet UILabel *atitle;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *genre;
@property (weak, nonatomic) IBOutlet UILabel *currRecord;
@property (nonatomic) NSInteger currentTrack;
@property (nonatomic, retain) NSString *mypath;
@property (nonatomic, retain) NSMutableArray* albums;

- (IBAction)buttonClicked:(id)sender;
- (IBAction)nextClicked:(id)sender;
- (IBAction)prevClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *next;
@property (weak, nonatomic) IBOutlet UIButton *prev;

@end

