.class public Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;
.super Ljava/lang/Object;
.source "FaceUnlock.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FULLockscreen"


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final MSG_CANCEL:I

.field private final MSG_HIDE_FACE_UNLOCK_VIEW:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_SERVICE_CONNECTED:I

.field private final MSG_SERVICE_DISCONNECTED:I

.field private final MSG_SHOW_FACE_UNLOCK_VIEW:I

.field private final MSG_UNLOCK:I

.field private final SERVICE_STARTUP_VIEW_TIMEOUT:I

.field private mBoundToService:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceUnlockView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mServiceRunning:Z

.field private final mServiceRunningLock:Ljava/lang/Object;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;)V
    .registers 7
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "keyguardScreenCallback"

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mServiceRunning:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mBoundToService:Z

    .line 57
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->MSG_SHOW_FACE_UNLOCK_VIEW:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->MSG_HIDE_FACE_UNLOCK_VIEW:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->MSG_SERVICE_CONNECTED:I

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->MSG_SERVICE_DISCONNECTED:I

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->MSG_UNLOCK:I

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->MSG_CANCEL:I

    .line 63
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    .line 65
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->MSG_POKE_WAKELOCK:I

    .line 70
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mIsRunning:Z

    .line 75
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->SERVICE_STARTUP_VIEW_TIMEOUT:I

    .line 79
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->BACKUP_LOCK_TIMEOUT:I

    .line 432
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock$1;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    .line 504
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock$2;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    .line 91
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 92
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private removeDisplayMessages()V
    .registers 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    return-void
.end method

.method private startUi(Landroid/os/IBinder;IIII)V
    .registers 15
    .parameter "windowToken"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 458
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v8

    .line 459
    :try_start_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mServiceRunning:Z

    if-nez v0, :cond_45

    .line 460
    const-string v0, "FULLockscreen"

    const-string v1, "Starting Face Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_42

    .line 462
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIIIZ)V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_42
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1e} :catch_23

    .line 468
    const/4 v0, 0x1

    :try_start_1f
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mServiceRunning:Z

    .line 472
    :goto_21
    monitor-exit v8

    .line 473
    :goto_22
    return-void

    .line 464
    :catch_23
    move-exception v7

    .line 465
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting Face Unlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto :goto_22

    .line 472
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_42
    move-exception v0

    monitor-exit v8
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_42

    throw v0

    .line 470
    :cond_45
    :try_start_45
    const-string v0, "FULLockscreen"

    const-string v1, "startUi() attempted while running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_42

    goto :goto_21
.end method

.method private stopUi()V
    .registers 6

    .prologue
    .line 483
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 484
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mServiceRunning:Z

    if-eqz v1, :cond_16

    .line 485
    const-string v1, "FULLockscreen"

    const-string v3, "Stopping Face Unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_36

    .line 487
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_36
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_18

    .line 491
    :goto_13
    const/4 v1, 0x0

    :try_start_14
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mServiceRunning:Z

    .line 498
    :cond_16
    monitor-exit v2

    .line 499
    return-void

    .line 488
    :catch_18
    move-exception v0

    .line 489
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FULLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping Face Unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 498
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_36

    throw v1
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_11

    .line 216
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_12

    .line 220
    :goto_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->stopUi()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 223
    :cond_11
    return-void

    .line 217
    :catch_12
    move-exception v0

    goto :goto_b
.end method

.method public getQuality()I
    .registers 2

    .prologue
    .line 229
    const v0, 0x8000

    return v0
.end method

.method handleCancel()V
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :goto_a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->stop()Z

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 389
    return-void

    .line 385
    :cond_15
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method handleHideFaceUnlockView()V
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :goto_a
    return-void

    .line 294
    :cond_b
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleHideFaceUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "msg"

    .prologue
    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 268
    :pswitch_5
    const-string v0, "FULLockscreen"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_d
    return v0

    .line 241
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->handleShowFaceUnlockView()V

    .line 271
    :goto_11
    const/4 v0, 0x1

    goto :goto_d

    .line 244
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->handleHideFaceUnlockView()V

    goto :goto_11

    .line 247
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->handleServiceConnected()V

    goto :goto_11

    .line 250
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->handleServiceDisconnected()V

    goto :goto_11

    .line 253
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->handleUnlock()V

    goto :goto_11

    .line 256
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->handleCancel()V

    goto :goto_11

    .line 259
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->handleReportFailedAttempt()V

    goto :goto_11

    .line 265
    :pswitch_2b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->handlePokeWakelock(I)V

    goto :goto_11

    .line 239
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_e
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_5
        :pswitch_2b
    .end packed-switch
.end method

.method handlePokeWakelock(I)V
    .registers 3
    .parameter "millis"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 418
    return-void
.end method

.method handleReportFailedAttempt()V
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt()V

    .line 397
    return-void
.end method

.method handleServiceConnected()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 303
    const-string v0, "FULLockscreen"

    const-string v2, "handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mBoundToService:Z

    if-nez v0, :cond_14

    .line 311
    const-string v0, "FULLockscreen"

    const-string v2, "Dropping startUi() in handleServiceConnected() because no longer bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_13
    :goto_13
    return-void

    .line 316
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/IFaceLockInterface;->registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_4a

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 327
    .local v1, windowToken:Landroid/os/IBinder;
    if-eqz v1, :cond_6f

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock()V

    .line 334
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 335
    .local v7, position:[I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 336
    aget v2, v7, v4

    const/4 v0, 0x1

    aget v3, v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->startUi(Landroid/os/IBinder;IIII)V

    goto :goto_13

    .line 317
    .end local v1           #windowToken:Landroid/os/IBinder;
    .end local v7           #position:[I
    :catch_4a
    move-exception v6

    .line 318
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception connecting to Face Unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 320
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mBoundToService:Z

    .line 321
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mIsRunning:Z

    goto :goto_13

    .line 339
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v1       #windowToken:Landroid/os/IBinder;
    :cond_6f
    const-string v0, "FULLockscreen"

    const-string v2, "windowToken is null in handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method handleServiceDisconnected()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 349
    const-string v0, "FULLockscreen"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    const/4 v0, 0x0

    :try_start_c
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mServiceRunning:Z

    .line 355
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_17

    .line 356
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mBoundToService:Z

    .line 357
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mIsRunning:Z

    .line 358
    return-void

    .line 355
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method handleShowFaceUnlockView()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :goto_a
    return-void

    .line 282
    :cond_b
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleShowFaceUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method handleUnlock()V
    .registers 3

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->removeDisplayMessages()V

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :goto_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->stop()Z

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 375
    return-void

    .line 370
    :cond_1c
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->removeDisplayMessages()V

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .registers 4
    .parameter "biometricUnlockView"

    .prologue
    .line 102
    const-string v0, "FULLockscreen"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    .line 104
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mIsRunning:Z

    return v0
.end method

.method public show(J)V
    .registers 5
    .parameter "timeoutMillis"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_13

    .line 120
    const-string v0, "FULLockscreen"

    const-string v1, "show() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->removeDisplayMessages()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_20
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2c

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 130
    :cond_2c
    return-void
.end method

.method public start()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 150
    const-string v0, "FULLockscreen"

    const-string v1, "start() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_1f

    .line 154
    const-string v0, "FULLockscreen"

    const-string v1, "start() called when already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1f
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->show(J)V

    .line 161
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mBoundToService:Z

    if-nez v0, :cond_4c

    .line 162
    const-string v0, "FULLockscreen"

    const-string v1, "Binding to Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    .line 167
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mBoundToService:Z

    .line 172
    :goto_49
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mIsRunning:Z

    .line 173
    return v4

    .line 169
    :cond_4c
    const-string v0, "FULLockscreen"

    const-string v1, "Attempt to bind to Face Unlock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method public stop()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_14

    .line 182
    const-string v1, "FULLockscreen"

    const-string v2, "stop() called off of the UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mIsRunning:Z

    .line 186
    .local v0, mWasRunning:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->stopUi()V

    .line 188
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_38

    .line 189
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_28

    .line 191
    :try_start_21
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_3b

    .line 196
    :cond_28
    :goto_28
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 198
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mBoundToService:Z

    .line 205
    :cond_38
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;->mIsRunning:Z

    .line 206
    return v0

    .line 192
    :catch_3b
    move-exception v1

    goto :goto_28
.end method
