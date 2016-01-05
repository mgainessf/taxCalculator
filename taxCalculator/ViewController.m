//
//  ViewController.m
//  taxCalculator
//
//  Created by MG on 1/5/16.
//  Copyright © 2016 mobile makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *userInput = self.priceTextField.text;
    double result = userInput.intValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double total = result * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", total];
        
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double total = result * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", total];
    }
    else {
        double total = result * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", total];
    }
    
}
@end
