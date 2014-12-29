//
//  ViewController.m
//  Blocks
//
//  Created by Sakshi Jain on 29/12/14.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   __block int number;
    
    float (^blockAdd)(int a, float b) = ^(int a,float b)
    {
        //int number;
        number = a;
         NSLog(@"number inside block = %i",number);
        NSLog(@"Values are %i and %f",a,b);
        return (a+b);
    };
    
    float result = blockAdd (10,20.5);
    NSLog(@"result %f",result);
     NSLog(@"number outside block= %i",number); //giving random output if same variable_name is also declared in block.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
