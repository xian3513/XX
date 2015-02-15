//
//  SecondViewController.m
//  XX
//
//  Created by kt on 15/2/15.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "SecondViewController.h"
#import "HousesViewController.h"
#import "TransactionViewController.h"
#import "RecruitmentViewController.h"
#import "Second.h"
@interface SecondViewController ()

@end

@implementation SecondViewController {
    UICollectionViewFlowLayout *layout;
    Second *second;
}

static NSString * const reuseIdentifier = @"secondCell";
static NSString * const headerIdentifier = @"headerIdentifier";
static NSInteger  const cellWidth = 60;
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
   
}

- (void)initData {
    second = [[Second alloc]init];
    layout = [[UICollectionViewFlowLayout alloc]init];
    [layout setSectionInset:UIEdgeInsetsMake(5, 30, 5, 30)];
    [layout setItemSize:CGSizeMake(cellWidth, cellWidth)];
    [layout setMinimumInteritemSpacing:20];
    [layout setMinimumLineSpacing:5];
    
    [self.collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:headerIdentifier];
    [self.collectionView setCollectionViewLayout:layout];
}

//- (void)initLayoutWithSection:(NSInteger)section {
//    if(section == 2) {
//        layout = [[UICollectionViewFlowLayout alloc]init];
//        [layout setSectionInset:UIEdgeInsetsMake(5, 30, 5, 30)];
//        [layout setItemSize:CGSizeMake(self.view.frame.size.width-30, 30)];
//        [layout setMinimumInteritemSpacing:20];
//        [layout setMinimumLineSpacing:5];
//    } else {
//        layout = [[UICollectionViewFlowLayout alloc]init];
//        [layout setSectionInset:UIEdgeInsetsMake(5, 30, 5, 30)];
//        [layout setItemSize:CGSizeMake(cellWidth, cellWidth)];
//        [layout setMinimumInteritemSpacing:20];
//        [layout setMinimumLineSpacing:5];
//    }
//   
//     [self.collectionView setCollectionViewLayout:layout];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [second sectionOfView];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [second numberOfRows:section];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = reuseIdentifier;
    if(indexPath.section == 2) {
    identifier = @"myCell";
    }
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    if(indexPath.section == 2) {
        CGRect rect = cell.frame;
        rect.size = CGSizeMake(280, 30);
        cell.frame = rect;
    }
    UILabel *lab = (UILabel *)[cell viewWithTag:2];
    if([[lab class] isSubclassOfClass:[UILabel class]]) {
        lab.text = [second textOfrow:indexPath.row section:indexPath.section];
    }
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *controller = nil;
    if(indexPath.section == 0) {
        switch (indexPath.row) {
            case 0: {
                controller = [[HousesViewController alloc]init];
                break;
            }
            case 1: {
                controller = [[TransactionViewController alloc]init];
                break;
            }
            case 2: {
                controller = [[RecruitmentViewController alloc]init];
                break;
            }
        }
        [self.navigationController pushViewController:controller animated:YES];
    } else {
    
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    CGSize size={320,20};
    return size;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    NSString *reuseIdentifier;
    if ([kind isEqualToString: UICollectionElementKindSectionHeader ]){
        reuseIdentifier = headerIdentifier;
    }
    
    UICollectionReusableView *view =  [collectionView dequeueReusableSupplementaryViewOfKind :kind   withReuseIdentifier:reuseIdentifier   forIndexPath:indexPath];
    

    if ([kind isEqualToString:UICollectionElementKindSectionHeader]){
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 80, 30)];
        lab.text = [second titleOfSection:indexPath.section];
        [view addSubview:lab];
    }
   
    return view;
}
#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
