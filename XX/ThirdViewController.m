//
//  ThirdViewController.m
//  XX
//
//  Created by kt on 15/2/6.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "ThirdViewController.h"
#import "NotepadViewController.h"
#import "ShowViewController.h"
#import "Third.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController {
    Third *third;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)initData {
    third  = [[Third alloc]init];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

  
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    return [third numberOfRows];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [third heightOfCell:indexPath.row];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = @"thirdCell";
    if(indexPath.row == 0) {
    identifier = @"userCell";
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    cell.textLabel.text = [third textOfrow:indexPath.row];
    // Configure the cell...
    
    return cell;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 0) {
        return nil;
    }
    return indexPath;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [third recordclicked:indexPath.row];
    NSString *identifier = nil;
    UIViewController *controller = nil;
    switch (indexPath.row) {
            
        case 1: {
        }
            
        case 2: {
        }
            
        case 3: {
            controller = [[ShowViewController alloc]init];
        }
            
        case 4: {
            identifier = NSStringFromClass([NotepadViewController class]);
            break;
        }
    }
    if(controller) {
     [self.navigationController pushViewController:controller animated:YES];
    } else {
        if(identifier) {
            controller = [self.storyboard instantiateViewControllerWithIdentifier:identifier];
            [self.navigationController pushViewController:controller animated:YES];
            NSLog(@"%s   controller and identifier are nil",__FUNCTION__);
        }
        
        
    }
   

}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
