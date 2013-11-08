.class public Lcom/android/internal/policy/impl/EnableAccessibilityController;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"


# static fields
.field private static final ENABLE_ACCESSIBILITY_DELAY_MILLIS:I = 0x1770

.field public static final MESSAGE_ENABLE_ACCESSIBILITY:I = 0x3

.field public static final MESSAGE_SPEAK_ENABLE_CANCELED:I = 0x2

.field public static final MESSAGE_SPEAK_WARNING:I = 0x1

.field private static final SPEAK_WARNING_DELAY_MILLIS:I = 0x7d0


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFirstPointerDownX:F

.field private mFirstPointerDownY:F

.field private final mHandler:Landroid/os/Handler;

.field private mSecondPointerDownX:F

.field private mSecondPointerDownY:F

.field private final mTone:Landroid/media/Ringtone;

.field private final mTouchSlop:F

.field private final mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;-><init>(Lcom/android/internal/policy/impl/EnableAccessibilityController;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    .line 78
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    .line 81
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 101
    iput-object p1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    .line 103
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/internal/policy/impl/EnableAccessibilityController$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController$2;-><init>(Lcom/android/internal/policy/impl/EnableAccessibilityController;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 111
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTouchSlop:F

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/EnableAccessibilityController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->enableAccessibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/media/Ringtone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mDestroyed:Z

    return v0
.end method

.method public static canEnableAccessibilityViaGesture(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 121
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    .line 128
    :goto_16
    return v2

    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_accessibility_global_gesture_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2f

    invoke-static {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    :goto_2d
    move v2, v1

    goto :goto_16

    :cond_2f
    move v1, v2

    goto :goto_2d
.end method

.method private cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 204
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mCanceled:Z

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    return-void

    .line 207
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11
.end method

.method private enableAccessibility()V
    .registers 16

    .prologue
    .line 214
    iget-object v13, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 216
    .local v11, services:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 278
    :cond_c
    :goto_c
    return-void

    .line 219
    :cond_d
    const/4 v6, 0x0

    .line 221
    .local v6, keyguardLocked:Z
    :try_start_e
    iget-object v13, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v13}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_9a

    move-result v6

    .line 226
    :goto_14
    iget-object v13, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v13}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_87

    const/4 v4, 0x1

    .line 228
    .local v4, hasMoreThanOneUser:Z
    :goto_22
    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 229
    .local v8, service:Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v13, v8, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_89

    const/4 v2, 0x1

    .line 232
    .local v2, enableTouchExploration:Z
    :goto_30
    if-nez v2, :cond_47

    .line 233
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 234
    .local v9, serviceCount:I
    const/4 v5, 0x1

    .local v5, i:I
    :goto_37
    if-ge v5, v9, :cond_47

    .line 235
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 236
    .local v0, candidate:Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v13, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_8b

    .line 238
    const/4 v2, 0x1

    .line 239
    move-object v8, v0

    .line 245
    .end local v0           #candidate:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v5           #i:I
    .end local v9           #serviceCount:I
    :cond_47
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v10, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 246
    .local v10, serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v14, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v1, componentName:Landroid/content/ComponentName;
    if-eqz v6, :cond_5a

    if-nez v4, :cond_8e

    .line 248
    :cond_5a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    .line 249
    .local v12, userId:I
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, enabledServiceString:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 252
    .local v7, resolver:Landroid/content/ContentResolver;
    const-string v13, "enabled_accessibility_services"

    invoke-static {v7, v13, v3, v12}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 256
    const-string v13, "touch_exploration_granted_accessibility_services"

    invoke-static {v7, v13, v3, v12}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 260
    if-eqz v2, :cond_7a

    .line 261
    const-string v13, "touch_exploration_enabled"

    const/4 v14, 0x1

    invoke-static {v7, v13, v14, v12}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 265
    :cond_7a
    const-string v13, "accessibility_script_injection"

    const/4 v14, 0x1

    invoke-static {v7, v13, v14, v12}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 268
    const-string v13, "accessibility_enabled"

    const/4 v14, 0x1

    invoke-static {v7, v13, v14, v12}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_c

    .line 226
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v2           #enableTouchExploration:Z
    .end local v3           #enabledServiceString:Ljava/lang/String;
    .end local v4           #hasMoreThanOneUser:Z
    .end local v7           #resolver:Landroid/content/ContentResolver;
    .end local v8           #service:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v10           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v12           #userId:I
    :cond_87
    const/4 v4, 0x0

    goto :goto_22

    .line 229
    .restart local v4       #hasMoreThanOneUser:Z
    .restart local v8       #service:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_89
    const/4 v2, 0x0

    goto :goto_30

    .line 234
    .restart local v0       #candidate:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v2       #enableTouchExploration:Z
    .restart local v5       #i:I
    .restart local v9       #serviceCount:I
    :cond_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 270
    .end local v0           #candidate:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v5           #i:I
    .end local v9           #serviceCount:I
    .restart local v1       #componentName:Landroid/content/ComponentName;
    .restart local v10       #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_8e
    if-eqz v6, :cond_c

    .line 272
    :try_start_90
    iget-object v13, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v13, v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_95} :catch_97

    goto/16 :goto_c

    .line 274
    :catch_97
    move-exception v13

    goto/16 :goto_c

    .line 222
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v2           #enableTouchExploration:Z
    .end local v4           #hasMoreThanOneUser:Z
    .end local v8           #service:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v10           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :catch_9a
    move-exception v13

    goto/16 :goto_14
.end method

.method private static getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v2, services:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 139
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 141
    .local v1, service:Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_14

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    .line 145
    .end local v1           #service:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_2a
    return-object v2
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mDestroyed:Z

    .line 150
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_38

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_38

    .line 155
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownX:F

    .line 156
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownY:F

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownX:F

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownY:F

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    :goto_37
    return v0

    :cond_38
    move v0, v1

    goto :goto_37
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 170
    .local v2, pointerCount:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 171
    .local v0, action:I
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mCanceled:Z

    if-eqz v4, :cond_13

    .line 172
    if-ne v0, v8, :cond_12

    .line 173
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mCanceled:Z

    .line 200
    :cond_12
    :goto_12
    return v8

    .line 177
    :cond_13
    packed-switch v0, :pswitch_data_5e

    :pswitch_16
    goto :goto_12

    .line 184
    :pswitch_17
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownX:F

    iget v7, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownY:F

    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v1

    .line 186
    .local v1, firstPointerMove:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_34

    .line 187
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    .line 189
    :cond_34
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownX:F

    iget v7, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownY:F

    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v3

    .line 191
    .local v3, secondPointerMove:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12

    .line 192
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    goto :goto_12

    .line 179
    .end local v1           #firstPointerMove:F
    .end local v3           #secondPointerMove:F
    :pswitch_52
    const/4 v4, 0x2

    if-le v2, v4, :cond_12

    .line 180
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    goto :goto_12

    .line 197
    :pswitch_59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    goto :goto_12

    .line 177
    nop

    :pswitch_data_5e
    .packed-switch 0x2
        :pswitch_17
        :pswitch_59
        :pswitch_16
        :pswitch_52
        :pswitch_59
    .end packed-switch
.end method
