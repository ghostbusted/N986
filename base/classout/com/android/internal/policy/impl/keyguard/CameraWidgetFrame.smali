.class public Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
.source "CameraWidgetFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final RECOVERY_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = null

.field private static final WIDGET_ANIMATION_DURATION:I = 0xfa

.field private static final WIDGET_WAIT_DURATION:I = 0x28a


# instance fields
.field private mActive:Z

.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private final mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

.field private mDown:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLaunchCameraStart:J

.field private final mRecoverEndAction:Ljava/lang/Runnable;

.field private final mRecoverRunnable:Ljava/lang/Runnable;

.field private mRecovering:Z

.field private final mRenderRunnable:Ljava/lang/Runnable;

.field private final mRenderedSize:Landroid/graphics/Point;

.field private final mScreenLocation:[I

.field private final mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

.field private final mTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private final mTransitionToCameraRunnable:Ljava/lang/Runnable;

.field private mTransitioning:Z

.field private mWidgetView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    .line 42
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)V
    .registers 7
    .parameter "context"
    .parameter "callbacks"
    .parameter "activityLauncher"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mScreenLocation:[I

    .line 68
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$1;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$3;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$4;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverEndAction:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$5;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$6;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 126
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    .line 127
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 128
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 129
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 130
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new CameraWidgetFrame instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_7e
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->transitionToCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onSecureCameraActivityStarted()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/Context;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide p1
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->recover()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecovering:Z

    return v0
.end method

.method private cancelTransitionToCamera()V
    .registers 5

    .prologue
    .line 390
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTransitionToCamera at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 392
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    .registers 9
    .parameter "context"
    .parameter "callbacks"
    .parameter "launcher"

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 135
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    .line 158
    :cond_8
    :goto_8
    return-object v0

    .line 138
    :cond_9
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->getCameraWidgetInfo()Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    move-result-object v2

    .line 139
    .local v2, widgetInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    if-eqz v2, :cond_8

    .line 141
    iget v4, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    if-lez v4, :cond_47

    invoke-static {p0, v2}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->inflateWidgetView(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v3

    .line 144
    .local v3, widgetView:Landroid/view/View;
    :goto_17
    if-eqz v3, :cond_8

    .line 147
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 148
    .local v1, preview:Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104032b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)V

    .line 155
    .local v0, cameraWidgetFrame:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->addView(Landroid/view/View;)V

    .line 156
    iput-object v3, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWidgetView:Landroid/view/View;

    .line 157
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 141
    .end local v0           #cameraWidgetFrame:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    .end local v1           #preview:Landroid/widget/ImageView;
    .end local v3           #widgetView:Landroid/view/View;
    :cond_47
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    goto :goto_17
.end method

.method private enableWindowExitAnimation(Z)V
    .registers 10
    .parameter "isEnabled"

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 425
    .local v2, root:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 426
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_d

    .line 436
    :cond_c
    :goto_c
    return-void

    :cond_d
    move-object v3, v0

    .line 428
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 429
    .local v3, wlp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_4b

    const v1, 0x10301e3

    .line 430
    .local v1, newWindowAnimations:I
    :goto_15
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v4, :cond_c

    .line 431
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v4, :cond_43

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting windowAnimations to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_43
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 434
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 429
    .end local v1           #newWindowAnimations:I
    :cond_4b
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private static inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 184
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v2, "inflateGenericWidgetView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_c
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, iv:Landroid/widget/ImageView;
    const v1, 0x10802e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 188
    const/16 v1, 0x7f

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 189
    return-object v0
.end method

.method private static inflateWidgetView(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .registers 10
    .parameter "context"
    .parameter "widgetInfo"

    .prologue
    .line 162
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v5, :cond_1e

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inflateWidgetView: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1e
    const/4 v4, 0x0

    .line 164
    .local v4, widgetView:Landroid/view/View;
    const/4 v3, 0x0

    .line 166
    .local v3, exception:Ljava/lang/Exception;
    :try_start_20
    iget-object v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 168
    .local v0, cameraContext:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 170
    .local v1, cameraInflater:Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 171
    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_3a} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_3a} :catch_48

    move-result-object v4

    .line 177
    .end local v0           #cameraContext:Landroid/content/Context;
    .end local v1           #cameraInflater:Landroid/view/LayoutInflater;
    :goto_3b
    if-eqz v3, :cond_44

    .line 178
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v6, "Error creating camera widget view"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_44
    return-object v4

    .line 172
    :catch_45
    move-exception v2

    .line 173
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v2

    .line 176
    goto :goto_3b

    .line 174
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_48
    move-exception v2

    .line 175
    .local v2, e:Ljava/lang/RuntimeException;
    move-object v3, v2

    goto :goto_3b
.end method

.method private instanceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 460
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onCameraLaunched()V
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedSuccessfully()V

    .line 396
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    .line 397
    return-void
.end method

.method private onKeyguardVisibilityChanged(Z)V
    .registers 11
    .parameter "showing"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 439
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_2d

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyguardVisibilityChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2d
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v2, :cond_69

    if-nez p1, :cond_69

    .line 442
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 443
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecovering:Z

    .line 444
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_69

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    sub-long v0, v2, v4

    .line 447
    .local v0, launchTime:J
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_64

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v3, "Camera took %sms to launch"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_64
    iput-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    .line 449
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onCameraLaunched()V

    .line 452
    .end local v0           #launchTime:J
    :cond_69
    return-void
.end method

.method private onSecureCameraActivityStarted()V
    .registers 5

    .prologue
    .line 455
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSecureCameraActivityStarted at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    return-void
.end method

.method private recover()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f80

    .line 299
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recovering at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecovering:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverEndAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 308
    return-void
.end method

.method private rescheduleTransitionToCamera()V
    .registers 5

    .prologue
    .line 384
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rescheduleTransitionToCamera at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 387
    return-void
.end method

.method private reset()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 400
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    .line 402
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 403
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecovering:Z

    .line 404
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mDown:Z

    .line 405
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 408
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->setScaleX(F)V

    .line 409
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->setScaleY(F)V

    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->setTranslationY(F)V

    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    .line 412
    return-void
.end method

.method private transitionToCamera()V
    .registers 19

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mDown:Z

    if-eqz v13, :cond_d

    .line 296
    :cond_c
    :goto_c
    return-void

    .line 257
    :cond_d
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 259
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 260
    .local v1, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 262
    .local v6, root:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 263
    .local v12, startWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 265
    .local v11, startHeight:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 266
    .local v4, finishWidth:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 268
    .local v3, finishHeight:I
    int-to-float v13, v4

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 269
    .local v8, scaleX:F
    int-to-float v13, v3

    int-to-float v14, v11

    div-float v9, v13, v14

    .line 270
    .local v9, scaleY:F
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/high16 v14, 0x42c8

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x42c8

    div-float v7, v13, v14

    .line 272
    .local v7, scale:F
    const/4 v13, 0x2

    new-array v5, v13, [I

    .line 273
    .local v5, loc:[I
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 274
    const/4 v13, 0x1

    aget v13, v5, v13

    div-int/lit8 v14, v3, 0x2

    add-int v2, v13, v14

    .line 276
    .local v2, finishCenter:I
    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 277
    const/4 v13, 0x1

    aget v13, v5, v13

    div-int/lit8 v14, v11, 0x2

    add-int v10, v13, v14

    .line 279
    .local v10, startCenter:I
    sget-boolean v13, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v13, :cond_af

    sget-object v13, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v14, "Transitioning to camera. (start=%sx%s, finish=%sx%s, scale=%s,%s, startCenter=%s, finishCenter=%s)"

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_af
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    sub-int v14, v2, v10

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const-wide/16 v14, 0xfa

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v13}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;->onLaunchingCamera()V

    goto/16 :goto_c
.end method


# virtual methods
.method public onActive(Z)V
    .registers 3
    .parameter "isActive"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    .line 336
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_a

    .line 337
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    .line 341
    :goto_9
    return-void

    .line 339
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    goto :goto_9
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 312
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v0, :cond_10

    .line 318
    :cond_f
    :goto_f
    return-void

    .line 314
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_f

    .line 315
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 316
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->transitionToCamera()V

    goto :goto_f
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    .line 322
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow: instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2e
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onDetachedFromWindow()V

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 326
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    .line 331
    return-void
.end method

.method protected onFocusLost()V
    .registers 5

    .prologue
    .line 368
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusLost at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 370
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onFocusLost()V

    .line 371
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 3

    .prologue
    .line 374
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    if-eqz v0, :cond_14

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedUnsuccessfully()V

    .line 380
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    .line 381
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 416
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_39

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v2, "onSizeChanged new=%sx%s old=%sx%s at %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_39
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    .line 419
    .local v0, worker:Landroid/os/Handler;
    if-eqz v0, :cond_48

    .end local v0           #worker:Landroid/os/Handler;
    :goto_3f
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onSizeChanged(IIII)V

    .line 421
    return-void

    .line 419
    .restart local v0       #worker:Landroid/os/Handler;
    :cond_48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    goto :goto_3f
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 345
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v4, :cond_12

    .line 346
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: mTransitioning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_11
    :goto_11
    return v2

    .line 350
    :cond_12
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mScreenLocation:[I

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getLocationOnScreen([I)V

    .line 351
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mScreenLocation:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 352
    .local v1, rawBottom:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_36

    .line 353
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: below widget"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 357
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 358
    .local v0, action:I
    if-eqz v0, :cond_3f

    const/4 v4, 0x2

    if-ne v0, v4, :cond_55

    :cond_3f
    :goto_3f
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mDown:Z

    .line 359
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v2, :cond_48

    .line 360
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    .line 362
    :cond_48
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_53

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction observed, not eaten"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    move v2, v3

    .line 363
    goto :goto_11

    :cond_55
    move v2, v3

    .line 358
    goto :goto_3f
.end method

.method public render()V
    .registers 18

    .prologue
    .line 193
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/Throwable;

    .line 194
    .local v9, thrown:[Ljava/lang/Throwable;
    const/4 v11, 0x1

    new-array v5, v11, [Landroid/graphics/Bitmap;

    .line 198
    .local v5, offscreen:[Landroid/graphics/Bitmap;
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getWidth()I

    move-result v10

    .line 199
    .local v10, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v4

    .line 201
    .local v4, height:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    if-ne v11, v10, :cond_3f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-ne v11, v4, :cond_3f

    .line 202
    sget-boolean v11, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v11, :cond_3e

    sget-object v11, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v12, "Already rendered at size=%sx%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v4           #height:I
    .end local v10           #width:I
    :cond_3e
    :goto_3e
    return-void

    .line 206
    .restart local v4       #height:I
    .restart local v10       #width:I
    :cond_3f
    if-eqz v10, :cond_3e

    if-eqz v4, :cond_3e

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 210
    .local v6, start:J
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    aput-object v12, v5, v11

    .line 211
    new-instance v1, Landroid/graphics/Canvas;

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-direct {v1, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    .local v1, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWidgetView:Landroid/view/View;

    const/high16 v12, 0x4000

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/high16 v13, 0x4000

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWidgetView:Landroid/view/View;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v10, v4}, Landroid/view/View;->layout(IIII)V

    .line 216
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v11, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 219
    .local v2, end:J
    sget-boolean v11, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v11, :cond_b6

    sget-object v11, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v12, "Rendered camera widget in %sms size=%sx%s instance=%s at %s"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sub-long v15, v2, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_b6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    invoke-virtual {v11, v10, v4}, Landroid/graphics/Point;->set(II)V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_bd} :catch_cd

    .line 230
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #end:J
    .end local v4           #height:I
    .end local v6           #start:J
    .end local v10           #width:I
    :goto_bd
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9, v5}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;[Ljava/lang/Throwable;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3e

    .line 226
    :catch_cd
    move-exception v8

    .line 227
    .local v8, t:Ljava/lang/Throwable;
    const/4 v11, 0x0

    aput-object v8, v9, v11

    goto :goto_bd
.end method
