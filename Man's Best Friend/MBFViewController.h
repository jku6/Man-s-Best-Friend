//
//  MBFViewController.h
//  Man's Best Friend
//
//  Created by Jonathan Ku on 2/7/14.
//  Copyright (c) 2014 Jonathan Ku. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MBFViewController : UIViewController

-(void)printHelloWorld;
- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;

@end
