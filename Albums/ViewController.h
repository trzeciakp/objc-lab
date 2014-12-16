//
//  ViewController.h
//  Albums
//
//  Created by Użytkownik Gość on 16.12.2014.
//  Copyright (c) 2014 Użytkownik Gość. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *artist;
@property (weak, nonatomic) IBOutlet UITextView *atitle;
@property (weak, nonatomic) IBOutlet UITextView *date;
@property (weak, nonatomic) IBOutlet UITextView *genre;
@property (nonatomic, retain) NSString *mypath;
@property (nonatomic, retain) NSMutableArray* albums;

- (IBAction)buttonClicked:(id)sender;

@end

