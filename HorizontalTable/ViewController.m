//
//  ViewController.m
//  HorizontalTable
//
//  Created by Stephen R Smith on 7/21/15.
//  Copyright (c) 2015 The Technical Edge. Free to use, modify, adapt.
//

#import "ViewController.h"
#import "CustomCollectionViewCell.h"

@interface ViewController () <UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UILabel *mainTitle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    self.collectionView.pagingEnabled = YES;
}

#pragma mark - UICollectionViewDataSource protocol

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell* cell = (CustomCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"CustomCell" forIndexPath:indexPath];
    cell.label.text = [NSString stringWithFormat:@"cell %ld", (long)indexPath.item];
    return cell;
}

#pragma mark - UICollectionViewDelegateFlowLayout protocol

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
//    NSLog(@"collectionView (%0.1f, %0.1f) %0.1f x %0.1f", self.collectionView.frame.origin.x, self.collectionView.frame.origin.y, self.collectionView.frame.size.width, self.collectionView.frame.size.height);
//    NSLog(@"window %0.1f x %0.1f", self.collectionView.window.frame.size.width, self.collectionView.window.frame.size.height);
//    NSLog(@"mainTitle %0.1f x %0.1f", self.mainTitle.frame.size.width, self.mainTitle.frame.size.height);
    return self.collectionView.frame.size;
}
@end
