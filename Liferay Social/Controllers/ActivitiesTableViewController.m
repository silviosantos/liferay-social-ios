//
//  ActivitiesTableViewController.m
//  Liferay Social
//
//  Silvio Santos
//

#import "ActivitiesTableViewController.h"

@implementation ActivitiesTableViewController

- (id)init {
		self = [super initWithStyle:UITableViewStylePlain];

		if (self) {
		self.title = @"Activities";
		self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }

		return self;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
		return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
		numberOfRowsInSection:(NSInteger)section {

		return [self.entries count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
		cellForRowAtIndexPath:(NSIndexPath *)indexPath {

		static NSString *CellIdentifier = @"Cell";

		UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

		if (cell == nil) {
			cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
		}

    return cell;
}

@end
