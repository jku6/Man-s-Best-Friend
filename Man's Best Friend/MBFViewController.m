//
//  MBFViewController.m
//  Man's Best Friend
//
//  Created by Jonathan Ku on 2/7/14.
//  Copyright (c) 2014 Jonathan Ku. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h"
#import "MBFPuppy.h"

@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Larry";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    myDog.image = [UIImage imageNamed:@"kim.jpg"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"NY";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"ny1.jpg"];
    
    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.name = @"J7";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"jon7.jpg"];
    
    MBFDog *fourthDog = [[MBFDog alloc] init];
    fourthDog.name = @"J3";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"jon3.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    NSLog(@"%@", self.myDogs);
    
    self.currentIndex = 0;
    
    
    MBFPuppy *littlePuppy = [[MBFPuppy alloc] init];
    [littlePuppy givePuppyEyes];
    [littlePuppy bark];
    littlePuppy.name = @"Bo O";
    littlePuppy.breed = @"Portuguese Water Dog";
    littlePuppy.image = [UIImage imageNamed:@"jon6.jpg"];
    
    [self.myDogs addObject:littlePuppy];
    
//    NSLog(@"MY dog is name %@ and its' age is %i and the breed is %@", myDog.name, myDog.age, myDog.breed);
//    myDog = nil;
//    NSLog(@"MY dog is name %@ and its' age is %i and the breed is %@", myDog.name, myDog.age, myDog.breed);
//    [myDog bark]
    
    
    
//    [myDog barkANumberOfTimes:7];
//    NSLog(@"%@", myDog.breed);
//    [myDog changeBreedToWarewolf];
//    NSLog(@"%@", myDog.breed);
    
//    [myDog barkANumberOfTimes:5 loudly:YES];
    
//    int dogYears = [myDog ageInDogYearsFromAge:myDog.age];
//    NSLog(@"%i", dogYears);
    
//    [self printHelloWorld];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender {
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    if (self.currentIndex == randomIndex && self.currentIndex == 0) {
        randomIndex ++;
    }
    else if (self.currentIndex == randomIndex) {
        randomIndex --;
    }
    self.currentIndex = randomIndex;
    MBFDog * randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    [UIView transitionWithView:self.view duration:1 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    
    sender.title = @"And Another";
    
}

-(void)printHelloWorld
{
    NSLog(@"Hello World");
}




@end
