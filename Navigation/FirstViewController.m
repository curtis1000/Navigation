//
//  FirstViewController.m
//  Navigation
//
//  Created by Curtis Branum on 12/28/13.
//  Copyright (c) 2013 Curtis Branum. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
@property (nonatomic, strong) UIButton *displaySecondViewControllerButton;
@end

@implementation FirstViewController

- (void) performDisplaySecondViewController: (id)paramSender{
    SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:NULL];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title = @"First View Controller";
    self.displaySecondViewControllerButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.displaySecondViewControllerButton setTitle:@"Display Second View Controller" forState:UIControlStateNormal];
    [self.displaySecondViewControllerButton sizeToFit];
    self.displaySecondViewControllerButton.center = self.view.center;
    
    [self.displaySecondViewControllerButton addTarget:self action:@selector(performDisplaySecondViewController:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.displaySecondViewControllerButton];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
