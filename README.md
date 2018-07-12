# UIKitFactory
UIkit便利构造器, 使用链式编程,提供对象调用和类调用两种方式

#### 1.对象初始化

```
UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.factory
.frame(CGRectMake(100, 300, 100, 50))
.setTitle(@"这是按钮", UIControlStateNormal)
//.image([UIImage imageNamed:@"1"])
.setBackgroundImage([UIImage imageNamed:@"1"], UIControlStateNormal)
.font([UIFont systemFontOfSize:13])
.setTitleColor(UIColor.redColor, UIControlStateNormal)
.backgroundColor(UIColor.blueColor)
.targetAndAction(self, @selector(buttonClick:), UIControlEventTouchUpInside)
.superView(self.view);
```


#### 2.类初始化
```
Factory.typeClass(UILabel.class)
.frame(CGRectMake(100, 500, 100, 50))
.text(@"另一个文本")
.textAlignment(NSTextAlignmentCenter)
.textColor(UIColor.blackColor)
.font([UIFont systemFontOfSize:17])
.backgroundColor(UIColor.yellowColor)
.superView(self.view);
```

```
Factory.buttonType(UIButtonTypeCustom)
.frame(CGRectMake(100, 600, 100, 50))
.setTitle(@"另一个按钮", UIControlStateNormal)
.setBackgroundImage([UIImage imageNamed:@"1"], UIControlStateNormal)
.font([UIFont systemFontOfSize:13])
.setTitleColor(UIColor.redColor, UIControlStateNormal)
.backgroundColor(UIColor.blueColor)
.targetAndAction(self, @selector(buttonClick:), UIControlEventTouchUpInside)
.superView(self.view);
```

