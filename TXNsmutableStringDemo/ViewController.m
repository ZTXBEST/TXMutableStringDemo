//
//  ViewController.m
//  TXNsmutableStringDemo
//
//  Created by 赵天旭 on 16/11/30.
//  Copyright © 2016年 ZTX. All rights reserved.
//

#import "ViewController.h"
#import "UIView+extension.h"
#import "UILabel+TXMutableString.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UITextViewDelegate>
@property (nonatomic, strong)UITableView *tableView;

@property (nonatomic, strong)UITextView *textView;

@property (nonatomic, strong)NSArray <NSString *> *array;
@end

@implementation ViewController

- (UITableView *)tableView
{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [[UIView alloc] init];
    }
    return _tableView;
}

- (UITextView *)textView
{
    if (_textView == nil) {
        _textView = [[UITextView alloc] init];
        _textView.delegate = self;
        
    }
    return _textView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"NSMutableStringDemo";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.navigationController.navigationBar.translucent = NO;
    self.tableView.height = self.view.height-64.0;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 2 || indexPath.row == 8 || indexPath.row == 9) {
        return 80.0;
    }
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    static NSString *identifier = @"identifier";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//    }
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.numberOfLines = 0;
    switch (indexPath.row) {
        case 0:
        {
            cell.textLabel.text =@"字体变大   字体变小";
            [cell.textLabel TX_changeFontWithTextFont:[UIFont systemFontOfSize:30.0] changeText:@"变大"];
            [cell.textLabel TX_changeFontWithTextFont:[UIFont systemFontOfSize:10.0] changeText:@"变小"];
        }
            break;
        case 1:
        {
            cell.textLabel.text = @"字和字之间的间距变大间距变小";
            [cell.textLabel TX_changeSpaceWithTextSpace:10.0 changeText:@"间距变大"];
            [cell.textLabel TX_changeSpaceWithTextSpace:-3.0 changeText:@"间距变小"];
        }
            break;
            
        case 2:
        {
            cell.textLabel.text = @"行间距行间距行间距行间距行间距行间距行间距行间距行间距行间距行间距行间距行间距行间距行间距行间距";
            [cell.textLabel TX_changeLineSpaceWithTextLineSpace:3.0];
        }
            break;
            
        case 3:
        {
            cell.textLabel.text = @"字体颜色";
            [cell.textLabel TX_changeColorWithTextColor:[UIColor redColor] changeText:@"颜色"];
        }
            break;
        case 4:
        {
            cell.textLabel.text = @"红色的字蓝色的字灰色的字";
            [cell.textLabel TX_changeColorWithTextColor:[UIColor redColor] changeText:@"红色"];
            [cell.textLabel TX_changeColorWithTextColor:[UIColor blueColor] changeText:@"蓝色"];
            [cell.textLabel TX_changeColorWithTextColor:[UIColor grayColor] changeText:@"灰色"];
        }
            break;
        case 5:
        {
            cell.textLabel.text = @"红色的背景";
            [cell.textLabel TX_changeBackgroundColorWithBackgroundColor:[UIColor redColor] changeText:@"红色"];
        }
            break;
        case 6:
        {
            cell.textLabel.text = @"红色的背景紫色的背景";
            [cell.textLabel TX_changeBackgroundColorWithBackgroundColor:[UIColor redColor] changeText:@"红色"];
            [cell.textLabel TX_changeBackgroundColorWithBackgroundColor:[UIColor purpleColor] changeText:@"紫色"];
        }
            break;
            
        case 7:
        {
            cell.textLabel.text = @"flush or flushes";
            [cell.textLabel TX_changeFontWithTextFont:[UIFont fontWithName:@"futura" size:30.0]];
            [cell.textLabel TX_changeLigatureWithTextLigature:@1 changeText:@"flush"];
            [cell.textLabel TX_changeLigatureWithTextLigature:@0 changeText:@"flushes"];
        }
            break;
        case 8:
        {
            cell.textLabel.text = @"字当中有一根删除线有加粗删除线有两根删除线";
            [cell.textLabel TX_changeStrikethroughStyleWithTextStrikethroughStyle:@(NSUnderlineStyleSingle) changeText:@"一根删除线"];
            [cell.textLabel TX_changeStrikethroughStyleWithTextStrikethroughStyle:@(NSUnderlineStyleThick) changeText:@"加粗删除线"];
            [cell.textLabel TX_changeStrikethroughStyleWithTextStrikethroughStyle:@(NSUnderlineStyleDouble) changeText:@"两根删除线"];
            [cell.textLabel TX_changeStrikethroughColorWithTextStrikethroughColor:[UIColor redColor] changeText:@"删除线"];
        }
            break;
        case 9:
        {
            cell.textLabel.text = @"字下面有一根下划线有加粗下划线有两根下划线";
            [cell.textLabel TX_changeUnderlineStyleWithTextUnderlineStyle:@(NSUnderlineStyleSingle) changeText:@"一根下划线"];
            [cell.textLabel TX_changeUnderlineStyleWithTextUnderlineStyle:@(NSUnderlineStyleThick) changeText:@"加粗下划线"];
            [cell.textLabel TX_changeUnderlineStyleWithTextUnderlineStyle:@(NSUnderlineStyleDouble) changeText:@"两根下划线"];
            [cell.textLabel TX_changeUnderlineColorWithTextUnderlineColor:[UIColor redColor] changeText:@"下划线"];
        }
            break;
            
        case 10:
        {
            cell.textLabel.text = @"红色的描边蓝色的描边";
            [cell.textLabel TX_changeStrokeColorWithTextStrikethroughColor:[UIColor redColor] changeText:@"红色"];
            [cell.textLabel TX_changeStrokeWidthWithTextStrikethroughWidth:@(10.0) changeText:@"红色"];
            [cell.textLabel TX_changeStrokeColorWithTextStrikethroughColor:[UIColor blueColor] changeText:@"蓝色"];
            [cell.textLabel TX_changeStrokeWidthWithTextStrikethroughWidth:@(3.0) changeText:@"蓝色"];
        }
            break;
        case 11:
        {
            cell.textLabel.text = @"红色的阴影蓝色的阴影";
            NSShadow *redShadow = [[NSShadow alloc] init];
            redShadow.shadowOffset = CGSizeMake(2.0, 2.0);
//            redShadow.shadowBlurRadius = 0.5;
            redShadow.shadowColor = [UIColor redColor];
            [cell.textLabel TX_changeShadowWithTextShadow:redShadow changeText:@"红色"];
            
            NSShadow *blueShadow = [[NSShadow alloc] init];
            blueShadow.shadowOffset = CGSizeMake(1.0, 1.0);
//            blueShadow.shadowBlurRadius = 0.5;
            blueShadow.shadowColor = [UIColor redColor];
            [cell.textLabel TX_changeShadowWithTextShadow:blueShadow changeText:@"蓝色"];
            
        }
            break;
            
        case 12:
        {
            self.textView.frame = CGRectMake(20.0, 0.0, self.view.width-25.0, cell.contentView.height);
            self.textView.backgroundColor = [UIColor clearColor];
            self.textView.editable = NO;
            [cell.contentView addSubview:self.textView];
            
            NSString *strLink = @"百度链接点击跳转到百度 淘宝链接点击跳转到淘宝";
            NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:strLink];
            [attributedString addAttributes:@{NSLinkAttributeName:[NSURL URLWithString:@"http://www.baidu.com"], NSFontAttributeName:cell.textLabel.font, NSUnderlineStyleAttributeName:@(NSUnderlineStyleSingle)} range:[strLink rangeOfString:@"百度链接"]];
            
            [attributedString addAttributes:@{NSLinkAttributeName:[NSURL URLWithString:@"http://www.taobao.com"], NSFontAttributeName:cell.textLabel.font, NSUnderlineStyleAttributeName:@(NSUnderlineStyleSingle)} range:[strLink rangeOfString:@"淘宝链接"]];
            self.textView.attributedText = attributedString;
            
        }
            break;
            
            case 13:
        {
            cell.textLabel.text = @"字的基准线向下偏移向上偏移";
            [cell.textLabel TX_changeBaselineOffsetWithTextBaselineOffset:@-5.0 changeText:@"向下偏移"];
            [cell.textLabel TX_changeBaselineOffsetWithTextBaselineOffset:@5.0 changeText:@"向上偏移"];
        }
            break;
            
            case 14:
        {
            
        }
            break;
        default:
            break;
    }
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange NS_AVAILABLE_IOS(7_0)
{
    NSLog(@"%@",URL);
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
