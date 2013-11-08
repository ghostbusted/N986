.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.super Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final INCOMING_INDICATOR_ON_LOCKSCREEN:Ljava/lang/String; = "incoming_indicator_on_lockscreen"

.field private static final TAG:Ljava/lang/String; = "SecuritySelectorView"


# instance fields
.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private mFadeView:Landroid/view/View;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/PressView;

.field private mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsBouncing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/PressView$OnTriggerListener;

.field private mSearchDisabled:Z

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/PressView$OnTriggerListener;

    .line 144
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 157
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 427
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    .line 180
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 184
    :try_start_26
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    if-nez v1, :cond_37

    .line 185
    const-class v1, Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/hdmi/IHDMINative;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_37} :catch_38

    .line 191
    :cond_37
    :goto_37
    return-void

    .line 187
    :catch_38
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateTargets()V
    .registers 15

    .prologue
    .line 253
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    .line 254
    .local v2, currentUserHandle:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    .line 255
    .local v6, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v5

    .line 256
    .local v5, disabledFeatures:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-eqz v11, :cond_89

    and-int/lit8 v11, v5, 0x2

    if-eqz v11, :cond_89

    const/4 v10, 0x1

    .line 258
    .local v10, secureCameraDisabled:Z
    :goto_1e
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_27

    if-eqz v10, :cond_8b

    :cond_27
    const/4 v0, 0x1

    .line 260
    .local v0, cameraDisabledByAdmin:Z
    :goto_28
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 261
    .local v7, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v4

    .line 262
    .local v4, disabledBySimState:Z
    const v11, 0x10802e6

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isTargetPresent(I)Z

    move-result v1

    .line 264
    .local v1, cameraTargetPresent:Z
    const v11, 0x108029a

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isTargetPresent(I)Z

    move-result v9

    .line 267
    .local v9, searchTargetPresent:Z
    if-eqz v0, :cond_8d

    .line 268
    const-string v11, "SecuritySelectorView"

    const-string v12, "Camera disabled by Device Policy"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_4b
    :goto_4b
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "user_setup_complete"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_97

    const/4 v3, 0x1

    .line 277
    .local v3, currentUserSetup:Z
    :goto_5b
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v12, "search"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/SearchManager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const/4 v13, -0x2

    invoke-virtual {v11, v12, v13}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_99

    const/4 v8, 0x1

    .line 280
    .local v8, searchActionAvailable:Z
    :goto_6f
    if-nez v0, :cond_77

    if-nez v4, :cond_77

    if-eqz v1, :cond_77

    if-nez v3, :cond_9b

    :cond_77
    const/4 v11, 0x1

    :goto_78
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    .line 282
    if-nez v4, :cond_82

    if-eqz v8, :cond_82

    if-eqz v9, :cond_82

    if-nez v3, :cond_9d

    :cond_82
    const/4 v11, 0x1

    :goto_83
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateResources()V

    .line 285
    return-void

    .line 256
    .end local v0           #cameraDisabledByAdmin:Z
    .end local v1           #cameraTargetPresent:Z
    .end local v3           #currentUserSetup:Z
    .end local v4           #disabledBySimState:Z
    .end local v7           #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .end local v8           #searchActionAvailable:Z
    .end local v9           #searchTargetPresent:Z
    .end local v10           #secureCameraDisabled:Z
    :cond_89
    const/4 v10, 0x0

    goto :goto_1e

    .line 258
    .restart local v10       #secureCameraDisabled:Z
    :cond_8b
    const/4 v0, 0x0

    goto :goto_28

    .line 269
    .restart local v0       #cameraDisabledByAdmin:Z
    .restart local v1       #cameraTargetPresent:Z
    .restart local v4       #disabledBySimState:Z
    .restart local v7       #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .restart local v9       #searchTargetPresent:Z
    :cond_8d
    if-eqz v4, :cond_4b

    .line 270
    const-string v11, "SecuritySelectorView"

    const-string v12, "Camera disabled by Sim State"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 272
    :cond_97
    const/4 v3, 0x0

    goto :goto_5b

    .line 277
    .restart local v3       #currentUserSetup:Z
    :cond_99
    const/4 v8, 0x0

    goto :goto_6f

    .line 280
    .restart local v8       #searchActionAvailable:Z
    :cond_9b
    const/4 v11, 0x0

    goto :goto_78

    .line 282
    :cond_9d
    const/4 v11, 0x0

    goto :goto_83
.end method


# virtual methods
.method doTransition(Landroid/view/View;F)V
    .registers 6
    .parameter "view"
    .parameter "to"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 327
    :cond_9
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 329
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 402
    return-void
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isTargetPresent(I)Z
    .registers 3
    .parameter "resId"

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 407
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->onDetachedFromWindow()V

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/PressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PressView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/PressView$OnTriggerListener;)V

    .line 409
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->onFinishInflate()V

    .line 198
    const v2, 0x10202b7

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/PressView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/PressView;

    .line 199
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/PressView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/PressView$OnTriggerListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/PressView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/PressView$OnTriggerListener;)V

    .line 200
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V

    .line 202
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 203
    const v2, 0x102030c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, bouncerFrameView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v1

    .line 208
    .local v1, dmLocked:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/PressView;

    if-eqz v1, :cond_41

    const/4 v2, 0x4

    :goto_3d
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/multiwaveview/PressView;->setVisibility(I)V

    .line 231
    return-void

    .line 208
    :cond_41
    const/4 v2, 0x0

    goto :goto_3d
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 354
    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInfoCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    if-eqz v0, :cond_3b

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/common/hdmi/IHDMINative;->hdmiPortraitEnable(Z)Z

    .line 359
    :cond_3b
    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hdmiPortraitEnable disable done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_63

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->updateClipChildren(Z)V

    .line 366
    :cond_63
    return-void
.end method

.method public onResume(I)V
    .registers 5
    .parameter "reason"

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 371
    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInfoCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    if-eqz v0, :cond_3b

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/common/hdmi/IHDMINative;->hdmiPortraitEnable(Z)Z

    .line 376
    :cond_3b
    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hdmiPortraitEnable enable done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    if-nez v0, :cond_71

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->updateClipChildren(Z)V

    .line 383
    :cond_71
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_c

    .line 420
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->updateKeyguardLayerVisibility(Z)V

    .line 422
    :cond_c
    return-void

    .line 420
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/PressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PressView;->reset(Z)V

    .line 344
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .registers 5
    .parameter "carrierArea"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 238
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->updateKeyguardLayerVisibility(Z)V

    .line 335
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .parameter "utils"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 339
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 395
    return-void
.end method

.method public showUsabilityHint()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/PressView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/PressView;->ping()V

    .line 250
    return-void
.end method

.method public updateResources()V
    .registers 1

    .prologue
    .line 320
    return-void
.end method
