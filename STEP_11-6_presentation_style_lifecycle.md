**STEP 11-6**



이전 step에서 firstVC —> purpleViewController로 화면 전환시 두 viewController의 callback 흐름은 다음과 같았다.

### 초기 FirstVC 생성 

firstVC ***viewDidLoad***

firstVC **viewWillAppear**

firstVC **viewDidAppear**



# 1. PresentationalStyle에 따른 LifeCycle 차이



- modalPresentationStyle의 스타일에 따라 viewController의 lifeCycle 에 미묘한 차이가 존재한다.

```swift
///UIModalPresentationStyle
[ .pageSheet, .currentContext, .formSheet, .fullScreen, .popover]
```



### 버튼 `퍼플`  의 IBAction으로 화면전환시

1. PurpleVC ***viewDidLoad***  

2. firstVC **viewWillDisappear** 

3. PurpleVC **viewWillAppear** 

4. PurpleVC **viewDidAppear**

5. firstVC **viewDidDisappear**

### `닫기`로 PurpleVC 닫고 FirstVC로 화면 전환 시

1. PurpleVC **viewWillDisappear** 

2. firstVC **viewWillAppear**

3. firstVC **viewDidAppear**

4. PurpleVC **viewDidDisappear**

----



```swift
///UIModalPresentationStyle
[ .overCurrentContext, .overFullScreen ]
```

>  ***There are no firstVC callback method called***

### 버튼 `퍼플`  의 IBAction으로 화면전환시

1. PurpleVC ***viewDidLoad***  

2. PurpleVC **viewWillAppear** 

3. PurpleVC **viewDidAppear**

### `닫기`로 PurpleVC 닫고 FirstVC로 화면 전환 시

1. PurpleVC **viewWillDisappear** 

2. PurpleVC **viewDidDisappear**

