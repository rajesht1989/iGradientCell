//
//  ViewController.m
//  GradientCell
//
//  Created by Rajesh on 5/27/15.
//

#import "ViewController.h"
#import "TableViewCell.h"
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
    return  3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    switch (indexPath.row)
    {
        case 0:
            [cell setImage:[UIImage imageNamed:@"Grass"] andColor:[UIColor whiteColor]];
            break;
        case 1:
            [cell setImage:[UIImage imageNamed:@"House"] andColor:[UIColor greenColor]];
            break;
        case 2:
            [cell setImage:[UIImage imageNamed:@"Sky"] andColor:[UIColor redColor]];
            break;
            
        default:
            break;
    }
    return cell;
}
@end
