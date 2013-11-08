.class public Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# static fields
.field public static final ALARM_ICON:I = 0x108002e

.field public static final BATTERY_LOW_ICON:I = 0x0

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = true

.field public static final LOCK_ICON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

.field private mDateFormatString:Ljava/lang/CharSequence;

.field private mDateView:Landroid/widget/TextView;

.field private mDualClock:Lcom/mediatek/common/policy/IDualClock;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 88
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->initDualClock()V

    .line 89
    return-void
.end method

.method private initDualClock()V
    .registers 3

    .prologue
    .line 95
    const-class v0, Lcom/mediatek/common/policy/IDualClock;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/policy/IDualClock;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDualClock:Lcom/mediatek/common/policy/IDualClock;

    .line 96
    return-void
.end method

.method private maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 190
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    const v1, 0x10202ff

    if-eq v0, v1, :cond_35

    .line 192
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh maybeSetUpperCaseText --if text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz p2, :cond_33

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_32
    return-void

    .line 193
    :cond_33
    const/4 v0, 0x0

    goto :goto_2f

    .line 195
    :cond_35
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh maybeSetUpperCaseText --else text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32
.end method


# virtual methods
.method public getAppWidgetId()I
    .registers 2

    .prologue
    .line 186
    const/4 v0, -0x2

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 173
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 175
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDualClock:Lcom/mediatek/common/policy/IDualClock;

    invoke-interface {v0}, Lcom/mediatek/common/policy/IDualClock;->resetPhonelistener()V

    .line 183
    return-void
.end method

.method protected onFinishInflate()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 100
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 101
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDualClock:Lcom/mediatek/common/policy/IDualClock;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, p0}, Lcom/mediatek/common/policy/IDualClock;->createClockView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 104
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x1040069

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateFormatString:Ljava/lang/CharSequence;

    .line 106
    const v4, 0x1020063

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    .line 107
    const v4, 0x10202ed

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 108
    const v4, 0x1020313

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/ClockView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    .line 111
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    if-nez v4, :cond_55

    .line 112
    const-string v4, "KeyguardStatusView"

    const-string v5, "onFinishInflate mDateView == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const v4, 0x20e004b

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    .line 115
    :cond_55
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    if-nez v4, :cond_6b

    .line 116
    const-string v4, "KeyguardStatusView"

    const-string v5, "onFinishInflate mAlarmStatusView == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const v4, 0x20e004c

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 119
    :cond_6b
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    if-nez v4, :cond_81

    .line 120
    const-string v4, "KeyguardStatusView"

    const-string v5, "onFinishInflate mClockView == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const v4, 0x20e0050

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/ClockView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    .line 125
    :cond_81
    const-string v4, "KeyguardStatusView"

    const-string v5, "onFinishInflate --before-- new LockPatternUtils(getContext())"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 127
    const-string v4, "KeyguardStatusView"

    const-string v5, "onFinishInflate --before-- mDateView.setTypeface(Typeface.SANS_SERIF, Typeface.BOLD)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 133
    const/4 v4, 0x2

    new-array v1, v4, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    aput-object v5, v1, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v4, v1, v7

    .line 134
    .local v1, marqueeViews:[Landroid/view/View;
    const-string v4, "KeyguardStatusView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFinishInflate --before-- marqueeViews.length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c7
    array-length v4, v1

    if-ge v0, v4, :cond_ed

    .line 136
    aget-object v3, v1, v0

    .line 137
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_e7

    .line 138
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find widget at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_e7
    invoke-virtual {v3, v7}, Landroid/view/View;->setSelected(Z)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 143
    .end local v3           #v:Landroid/view/View;
    :cond_ed
    const-string v4, "KeyguardStatusView"

    const-string v5, "onFinishInflate --before-- refresh()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 145
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 218
    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout;->onLayout(ZIIII)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDualClock:Lcom/mediatek/common/policy/IDualClock;

    invoke-interface {v0}, Lcom/mediatek/common/policy/IDualClock;->updateClockLayout()V

    .line 220
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasWindowFocus"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onWindowFocusChanged(Z)V

    .line 211
    if-eqz p1, :cond_8

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 214
    :cond_8
    return-void
.end method

.method protected refresh()V
    .registers 3

    .prologue
    .line 148
    const-string v0, "KeyguardStatusView"

    const-string v1, "refresh mClockView.updateTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ClockView;->updateTime()V

    .line 150
    const-string v0, "KeyguardStatusView"

    const-string v1, "refresh refreshDate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refreshDate()V

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refreshAlarmStatus()V

    .line 153
    return-void
.end method

.method refreshAlarmStatus()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, nextAlarm:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const v2, 0x108002e

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :goto_1f
    return-void

    .line 163
    :cond_20
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f
.end method

.method refreshDate()V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateFormatString:Ljava/lang/CharSequence;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method
