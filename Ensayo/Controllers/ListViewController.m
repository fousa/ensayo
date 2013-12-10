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
    
    self.tableView.separatorColor = [UIColor ensayoGreenColor];

    _list = @{}.mutableCopy;
    _list[NSLocalizedString(@"Placeholders", @"Placeholders")] = @"PlaceholderViewController";
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.title = [NSLocalizedString(@"Ensayo", @"Ensayo") uppercaseString];
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
