//
//  ListViewController.m
//  Ensayo
//
//  Created by Jelle Vandenbeeck on 10/12/13.
//  Copyright (c) 2013 Fousa. All rights reserved.
//

#import "ListViewController.h"

#define kCell @"Cell"

@interface ListViewController () {
    NSMutableDictionary *_list;
}
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _list = @{}.mutableCopy;
    _list[NSLocalizedString(@"Placeholders", @"Placeholders")] = @"PlaceholderViewController";
}

#pragma mark - List

- (NSArray *)sortedListKeys {
    return [_list.allKeys sortedArrayUsingSelector:@selector(compare:)];
}

#pragma mark - Table

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCell forIndexPath:indexPath];
    cell.textLabel.text = [self sortedListKeys][indexPath.row];
    return cell;
}

@end
