//
//  ViewController.m
//  GradientCell
//
//  Created by Rajesh on 5/27/15.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    UIImageView *imageVw = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Grass"]];
    [imageVw setFrame:cell.contentView.bounds];
    [cell.contentView addSubview:imageVw];
    
    UIView *gradientv = [[UIView alloc] initWithFrame:cell.contentView.bounds];
    [cell.contentView addSubview:gradientv];
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = gradientv.bounds;
    [gradient setStartPoint:CGPointMake(0.0, 0.5)];
    [gradient setEndPoint:CGPointMake(1.0, 0.5)];
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor clearColor] CGColor], (id)[[UIColor whiteColor] CGColor], nil];
    [gradientv.layer insertSublayer:gradient atIndex:0];
    
    return cell;
}
@end
