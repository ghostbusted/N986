.class Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;
    }
.end annotation


# static fields
.field static final BATTERY_LOW_ICON:I = 0x0

.field static final CHARGING_ICON:I = 0x0

.field protected static final FADE_DURATION:I = 0x2ee

.field static final SECURITY_MESSAGE_DURATION:I = 0x1388


# instance fields
.field protected mBatteryCharged:Z

.field private mBatteryDetialStatus:I

.field protected mBatteryIsLow:Z

.field mBatteryLevel:I

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field mMessage:Ljava/lang/CharSequence;

.field mPluggedIn:Z

.field private mSeparator:Ljava/lang/CharSequence;

.field mShowingBatteryInfo:Z

.field mShowingBouncer:Z

.field mShowingMessage:Z

.field mTimeout:J

.field mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mPluggedIn:Z

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    .line 63
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 73
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040549

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->hideMessage(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->showMessage(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryDetialStatus:I

    return p1
.end method

.method private varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, b:Ljava/lang/StringBuilder;
    aget-object v3, p1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 205
    aget-object v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 207
    :cond_13
    const/4 v1, 0x1

    .local v1, i:I
    :goto_14
    array-length v3, p1

    if-ge v1, v3, :cond_30

    .line 208
    aget-object v2, p1, v1

    .line 209
    .local v2, text:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2a

    .line 211
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 213
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 207
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 216
    .end local v2           #text:Ljava/lang/CharSequence;
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getChargeInfo(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v1, :cond_30

    .line 237
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mPluggedIn:Z

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->isDeviceCharging()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-eqz v1, :cond_31

    const v1, 0x10402f8

    :goto_1f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 250
    :cond_30
    :goto_30
    return-object v0

    .line 239
    :cond_31
    const v1, 0x10402f7

    goto :goto_1f

    .line 243
    :cond_35
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    if-eqz v1, :cond_30

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_30
.end method

.method private hideMessage(IZ)V
    .registers 8
    .parameter "duration"
    .parameter "thenUpdate"

    .prologue
    const/4 v4, 0x0

    .line 254
    if-lez p1, :cond_21

    .line 255
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 256
    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 257
    if-eqz p2, :cond_1d

    .line 258
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 265
    :cond_1d
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 272
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_20
    :goto_20
    return-void

    .line 267
    :cond_21
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 268
    if-eqz p2, :cond_20

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    goto :goto_20
.end method

.method private setTextMediatek(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, b:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 296
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x205009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 298
    return-void
.end method

.method private showMessage(I)V
    .registers 7
    .parameter "duration"

    .prologue
    const/high16 v4, 0x3f80

    .line 275
    if-lez p1, :cond_18

    .line 276
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 277
    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 278
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 282
    .end local v0           #anim:Landroid/animation/Animator;
    :goto_17
    return-void

    .line 280
    :cond_18
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    goto :goto_17
.end method


# virtual methods
.method getCurrentMessage()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method getOwnerInfo()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x2

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 225
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1f

    .line 227
    .local v0, ownerInfoEnabled:Z
    :goto_12
    if-eqz v0, :cond_21

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v2, :cond_21

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1e
    return-object v2

    .line 225
    .end local v0           #ownerInfoEnabled:Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_12

    .line 227
    .restart local v0       #ownerInfoEnabled:Z
    :cond_21
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public isDeviceCharging()Z
    .registers 3

    .prologue
    .line 302
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryDetialStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryDetialStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 309
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 312
    return-void
.end method

.method public securityMessageChanged()V
    .registers 5

    .prologue
    .line 171
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method update()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 189
    new-instance v1, Llibcore/util/MutableInt;

    invoke-direct {v1, v6}, Llibcore/util/MutableInt;-><init>(I)V

    .line 190
    .local v1, icon:Llibcore/util/MutableInt;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getChargeInfo(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getOwnerInfo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 191
    .local v2, status:Ljava/lang/CharSequence;
    iget v3, v1, Llibcore/util/MutableInt;->value:I

    invoke-virtual {p0, v3, v6, v6, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    .line 194
    .local v0, dmLocked:Z
    if-nez v0, :cond_38

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_37
    return-void

    .line 197
    :cond_38
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setTextMediatek(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method
