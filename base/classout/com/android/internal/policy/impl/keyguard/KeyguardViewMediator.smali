.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$7;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$InvalidDialogCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    }
.end annotation


# static fields
.field private static final ALARM_BOOT:I = 0x73

.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DBG_MESSAGE:Z = true

.field private static final DBG_WAKE:Z = true

.field static final DEBUG:Z = true

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final ENABLE_INSECURE_STATUS_BAR_EXPAND:Z = true

.field private static final HIDE:I = 0x3

.field public static final IPO_DISABLE:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_RELAYOUT:I = 0x3e8

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final LAUNCH_PWROFF_ALARM:Ljava/lang/String; = "android.intent.action.LAUNCH_POWEROFF_ALARM"

.field private static final MSG_DM_KEYGUARD_UPDATE:I = 0x3e9

.field private static final NORMAL_BOOT_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot"

.field private static final NORMAL_BOOT_DONE_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot.done"

.field private static final NORMAL_SHUTDOWN_ACTION:Ljava/lang/String; = "android.intent.action.normal.shutdown"

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field public static final OMADM_LAWMO_LOCK:Ljava/lang/String; = "com.mediatek.dm.LAWMO_LOCK"

.field public static final OMADM_LAWMO_UNLOCK:Ljava/lang/String; = "com.mediatek.dm.LAWMO_UNLOCK"

.field static final REMOVE_IPOWIN:Ljava/lang/String; = "alarm.boot.remove.ipowin"

.field private static final RESET:I = 0x4

.field public static final RESET_FOR_DM_LOCK:Ljava/lang/String; = "dmlock_reset"

.field private static final RESHOW_ANYWHERE:I = 0x74

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SHOW_ASSISTANT:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_WHEN_READY:I = 0x8

.field private static mExternallyEnabled:Z

.field private static mHidden:Z

.field private static mShowing:Z

.field private static sWakeMSGId:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mHandler:Landroid/os/Handler;

.field private mIsIPOBoot:Z

.field private mKeyguardDonePending:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private final mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field private mScreenOn:Z

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowingLockIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSystemReady:Z

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentIntent:Landroid/content/Intent;

.field mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 201
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 212
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 215
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 263
    sput v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 13
    .parameter "context"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    .line 171
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 208
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 237
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 248
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 250
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 320
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 514
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 1183
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1313
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, p0, v8, v9, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 571
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 572
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 573
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    .line 574
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v8, "show keyguard"

    invoke-virtual {v5, v6, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 575
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 577
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v8, "keyguardWakeAndHandOff"

    invoke-virtual {v5, v6, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    .line 578
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 581
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 582
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    const-string v5, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    const-string v5, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    const-string v5, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    const-string v5, "android.intent.action.normal.shutdown"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    const-string v5, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    const-string v5, "android.intent.action.normal.boot"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 596
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 598
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 600
    if-eqz p2, :cond_161

    .end local p2
    :goto_ab
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 602
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 604
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 606
    .local v4, wm:Landroid/view/WindowManager;
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1, v4, v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .line 609
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    .line 610
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v8, 0x2800

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 613
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 614
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "show_status_bar_lock"

    invoke-static {v0, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_16a

    move v5, v6

    :goto_e4
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowLockIcon:Z

    .line 616
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 618
    new-instance v5, Landroid/media/SoundPool;

    invoke-direct {v5, v6, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 619
    const-string v5, "lock_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, soundPath:Ljava/lang/String;
    if-eqz v3, :cond_105

    .line 621
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v3, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 623
    :cond_105
    if-eqz v3, :cond_10b

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v5, :cond_123

    .line 624
    :cond_10b
    const-string v5, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to load lock sound from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_123
    const-string v5, "unlock_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 627
    if-eqz v3, :cond_133

    .line 628
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v3, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 630
    :cond_133
    if-eqz v3, :cond_139

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v5, :cond_151

    .line 631
    :cond_139
    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to load unlock sound from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 636
    .local v2, lockSoundDefaultAttenuation:I
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 637
    return-void

    .line 600
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #lockSoundDefaultAttenuation:I
    .end local v3           #soundPath:Ljava/lang/String;
    .end local v4           #wm:Landroid/view/WindowManager;
    .restart local p2
    :cond_161
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .end local p2
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    goto/16 :goto_ab

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v4       #wm:Landroid/view/WindowManager;
    :cond_16a
    move v5, v7

    .line 614
    goto/16 :goto_e4
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleWakeWhenReady(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardReLayout(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleAlarmBoot()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleDMKeyguardUpdate(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendRemoveIPOWinBroadcast()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->startAlarm()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private adjustStatusBarLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1584
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_11

    .line 1585
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1588
    :cond_11
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_1d

    .line 1589
    const-string v3, "KeyguardViewMediator"

    const-string v4, "Could not get status bar manager"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    :cond_1c
    :goto_1c
    return-void

    .line 1594
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    .line 1596
    .local v2, isSecure:Z
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v3, :cond_45

    .line 1598
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v3, :cond_9f

    if-eqz v2, :cond_9f

    .line 1599
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v3, :cond_45

    .line 1600
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v4, 0x104050e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1602
    .local v0, contentDescription:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v4, "secure"

    const v5, 0x108055f

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1605
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    .line 1617
    .end local v0           #contentDescription:Ljava/lang/String;
    :cond_45
    :goto_45
    const/4 v1, 0x0

    .line 1618
    .local v1, flags:I
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v3, :cond_54

    .line 1622
    const/high16 v3, 0x100

    or-int/2addr v1, v3

    .line 1623
    if-nez v2, :cond_ad

    .line 1627
    :goto_4f
    if-eqz v2, :cond_54

    .line 1629
    const/high16 v3, 0x8

    or-int/2addr v1, v3

    .line 1634
    :cond_54
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mHidden="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSecure="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_1c

    .line 1639
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_1c

    .line 1608
    .end local v1           #flags:I
    :cond_9f
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v3, :cond_45

    .line 1609
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v4, "secure"

    invoke-virtual {v3, v4}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 1610
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    goto :goto_45

    .line 1625
    .restart local v1       #flags:I
    :cond_ad
    const/high16 v3, 0x1

    or-int/2addr v1, v3

    goto :goto_4f
.end method

.method private cancelDoKeyguardLaterLocked()V
    .registers 2

    .prologue
    .line 774
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 775
    return-void
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .registers 7
    .parameter "title"
    .parameter "message"

    .prologue
    .line 1848
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1861
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1862
    return-object v0
.end method

.method private doKeyguardLaterLocked()V
    .registers 18

    .prologue
    .line 729
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 732
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v14, "screen_off_timeout"

    const/16 v15, 0x7530

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    int-to-long v2, v14

    .line 736
    .local v2, displayTimeout:J
    const-string v14, "lock_screen_lock_after_timeout"

    const/16 v15, 0x1388

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    int-to-long v5, v14

    .line 741
    .local v5, lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v7

    .line 745
    .local v7, policyTimeout:J
    const-wide/16 v14, 0x0

    cmp-long v14, v7, v14

    if-lez v14, :cond_88

    .line 747
    const-wide/16 v14, 0x0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 748
    sub-long v14, v7, v2

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 753
    .local v10, timeout:J
    :goto_43
    const-string v14, "KeyguardViewMediator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "doKeyguardLaterLocked enter displayTimeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", lockAfterTimeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", policyTimeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", timeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gtz v14, :cond_8a

    .line 758
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 759
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 771
    :goto_87
    return-void

    .line 750
    .end local v10           #timeout:J
    :cond_88
    move-wide v10, v5

    .restart local v10       #timeout:J
    goto :goto_43

    .line 762
    :cond_8a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    add-long v12, v14, v10

    .line 763
    .local v12, when:J
    new-instance v4, Landroid/content/Intent;

    const-string v14, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v4, intent:Landroid/content/Intent;
    const-string v14, "seq"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 765
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v16, 0x1000

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 767
    .local v9, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v15, 0x2

    invoke-virtual {v14, v15, v12, v13, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 768
    const-string v14, "KeyguardViewMediator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setting alarm to turn off keyguard, seq = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87
.end method

.method private doKeyguardLocked()V
    .registers 2

    .prologue
    .line 970
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 971
    return-void
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .registers 19
    .parameter "options"

    .prologue
    .line 978
    sget-boolean v14, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v14, :cond_a

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 979
    :cond_a
    const-string v14, "KeyguardViewMediator"

    const-string v15, "doKeyguard: not showing because externally disabled"

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    :goto_11
    return-void

    .line 994
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_24

    .line 995
    const-string v14, "KeyguardViewMediator"

    const-string v15, "doKeyguard: not showing because it is already showing"

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1000
    :cond_24
    const-string v14, "KeyguardViewMediator"

    const-string v15, "doKeyguard: get keyguard.no_require_sim property before"

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v14, "keyguard.no_require_sim"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_128

    const/4 v8, 0x1

    .line 1003
    .local v8, requireSim:Z
    :goto_35
    const-string v14, "KeyguardViewMediator"

    const-string v15, "doKeyguard: get keyguard.no_require_sim property after"

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v7

    .line 1005
    .local v7, provisioned:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v11

    .line 1006
    .local v11, state:Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v5, 0x0

    .line 1007
    .local v5, lockedOrMissing:Z
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v14

    if-eqz v14, :cond_133

    .line 1008
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v12

    .line 1009
    .local v12, stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_6d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_84

    :cond_6d
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_7e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_84

    :cond_7e
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_12b

    if-eqz v8, :cond_12b

    :cond_84
    const/4 v10, 0x1

    .line 1013
    .local v10, simLockedOrMissing:Z
    :goto_85
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v12, v14, :cond_96

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_ad

    :cond_96
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v12, v14, :cond_a7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_ad

    :cond_a7
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v12, v14, :cond_12e

    if-eqz v8, :cond_12e

    :cond_ad
    const/4 v9, 0x1

    .line 1017
    .local v9, simGeminilockedOrMissing:Z
    :goto_ae
    if-nez v10, :cond_b2

    if-eqz v9, :cond_131

    :cond_b2
    const/4 v5, 0x1

    .line 1025
    .end local v9           #simGeminilockedOrMissing:Z
    .end local v10           #simLockedOrMissing:Z
    .end local v12           #stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_b3
    const-string v14, "KeyguardViewMediator"

    const-string v15, "doKeyguard: get sim state after"

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/4 v4, 0x0

    .line 1033
    .local v4, keyguardDisable:Z
    const/4 v6, 0x1

    .line 1034
    .local v6, motaUpdateFirst:Z
    if-eqz v6, :cond_160

    .line 1036
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    .line 1049
    :goto_c6
    const-string v14, "KeyguardViewMediator"

    const-string v15, "doKeyguard: keyguardDisable query end"

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v3

    .line 1053
    .local v3, dmLocked:Z
    const-string v14, "KeyguardViewMediator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "lockedOrMissing is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", requireSim="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", provisioned="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", keyguardisable="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", dmLocked="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    if-nez v5, :cond_18d

    if-nez v7, :cond_18d

    if-nez v3, :cond_18d

    .line 1057
    const-string v14, "KeyguardViewMediator"

    const-string v15, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1001
    .end local v3           #dmLocked:Z
    .end local v4           #keyguardDisable:Z
    .end local v5           #lockedOrMissing:Z
    .end local v6           #motaUpdateFirst:Z
    .end local v7           #provisioned:Z
    .end local v8           #requireSim:Z
    .end local v11           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_128
    const/4 v8, 0x0

    goto/16 :goto_35

    .line 1009
    .restart local v5       #lockedOrMissing:Z
    .restart local v7       #provisioned:Z
    .restart local v8       #requireSim:Z
    .restart local v11       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v12       #stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_12b
    const/4 v10, 0x0

    goto/16 :goto_85

    .line 1013
    .restart local v10       #simLockedOrMissing:Z
    :cond_12e
    const/4 v9, 0x0

    goto/16 :goto_ae

    .line 1017
    .restart local v9       #simGeminilockedOrMissing:Z
    :cond_131
    const/4 v5, 0x0

    goto :goto_b3

    .line 1020
    .end local v9           #simGeminilockedOrMissing:Z
    .end local v10           #simLockedOrMissing:Z
    .end local v12           #stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_133
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_144

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_15b

    :cond_144
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_155

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_15b

    :cond_155
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_15e

    if-eqz v8, :cond_15e

    :cond_15b
    const/4 v5, 0x1

    :goto_15c
    goto/16 :goto_b3

    :cond_15e
    const/4 v5, 0x0

    goto :goto_15c

    .line 1039
    .restart local v4       #keyguardDisable:Z
    .restart local v6       #motaUpdateFirst:Z
    :cond_160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1040
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v14, "lockscreen.disabled"

    invoke-static {v2, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1041
    .local v13, value:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1042
    .local v1, booleanValue:Z
    if-eqz v13, :cond_17a

    .line 1043
    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_189

    const/4 v1, 0x1

    .line 1045
    :cond_17a
    :goto_17a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v14

    if-nez v14, :cond_18b

    if-eqz v1, :cond_18b

    const/4 v4, 0x1

    :goto_187
    goto/16 :goto_c6

    .line 1043
    :cond_189
    const/4 v1, 0x0

    goto :goto_17a

    .line 1045
    :cond_18b
    const/4 v4, 0x0

    goto :goto_187

    .line 1063
    .end local v1           #booleanValue:Z
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v13           #value:Ljava/lang/String;
    .restart local v3       #dmLocked:Z
    :cond_18d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ge v14, v15, :cond_1b8

    if-eqz v4, :cond_1b8

    if-nez v5, :cond_1b8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v14

    if-nez v14, :cond_1b8

    .line 1065
    const-string v14, "KeyguardViewMediator"

    const-string v15, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1069
    :cond_1b8
    const-string v14, "KeyguardViewMediator"

    const-string v15, "doKeyguard: showing the lock screen"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    goto/16 :goto_11
.end method

.method private handleAlarmBoot()V
    .registers 2

    .prologue
    .line 1738
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_7

    .line 1739
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1741
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    if-eqz v0, :cond_e

    .line 1742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    .line 1744
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1745
    return-void
.end method

.method private handleDMKeyguardUpdate(Z)V
    .registers 6
    .parameter "lock"

    .prologue
    .line 1870
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDMKeyguardUpdate lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1872
    const-string v1, "KeyguardViewMediator"

    const-string v2, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 1881
    :goto_28
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleDisableSystemUIForDM(Z)V

    .line 1882
    return-void

    .line 1877
    :cond_2c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1878
    .local v0, option:Landroid/os/Bundle;
    const-string v1, "dmlock_reset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1879
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_28
.end method

.method private handleDisableSystemUIForDM(Z)V
    .registers 5
    .parameter "lock"

    .prologue
    .line 1886
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1887
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1888
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1889
    return-void

    .line 1887
    :cond_13
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private handleHide()V
    .registers 3

    .prologue
    .line 1558
    monitor-enter p0

    .line 1559
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1561
    const-string v0, "KeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    monitor-exit p0

    .line 1579
    :goto_18
    return-void

    .line 1564
    :cond_19
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_22

    monitor-exit p0

    goto :goto_18

    .line 1578
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0

    .line 1568
    :cond_22
    :try_start_22
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_3a

    .line 1570
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1573
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->hide()V

    .line 1574
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1576
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1577
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1578
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_1f

    goto :goto_18
.end method

.method private handleKeyguardDone(Z)V
    .registers 5
    .parameter "wakeup"

    .prologue
    .line 1437
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyguardDone, wakeup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1439
    if-eqz p1, :cond_20

    .line 1440
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 1443
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1444
    return-void
.end method

.method private handleKeyguardDoneDrawing()V
    .registers 3

    .prologue
    .line 1460
    monitor-enter p0

    .line 1461
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_20

    .line 1463
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1465
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1470
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1472
    :cond_20
    monitor-exit p0

    .line 1473
    return-void

    .line 1472
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private handleKeyguardReLayout(Z)V
    .registers 5
    .parameter "dmLock"

    .prologue
    .line 1785
    monitor-enter p0

    .line 1787
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyguardReLayout dmLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->reLayoutScreen(Z)V

    .line 1790
    monitor-exit p0

    .line 1791
    return-void

    .line 1790
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .registers 3

    .prologue
    .line 1703
    monitor-enter p0

    .line 1704
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOff"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOff()V

    .line 1706
    monitor-exit p0

    .line 1707
    return-void

    .line 1706
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .registers 4
    .parameter "showListener"

    .prologue
    .line 1714
    monitor-enter p0

    .line 1715
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOn"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 1717
    monitor-exit p0

    .line 1718
    return-void

    .line 1717
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleReset(Landroid/os/Bundle;)V
    .registers 4
    .parameter "options"

    .prologue
    .line 1677
    monitor-enter p0

    .line 1678
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->reset(Landroid/os/Bundle;)V

    .line 1681
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1682
    monitor-exit p0

    .line 1683
    return-void

    .line 1682
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private handleSetHidden(Z)V
    .registers 5
    .parameter "isHidden"

    .prologue
    .line 940
    monitor-enter p0

    .line 941
    :try_start_1
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_31

    .line 942
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetHidden, mHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 944
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 945
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 947
    :cond_31
    monitor-exit p0

    .line 948
    return-void

    .line 947
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .registers 6
    .parameter "options"

    .prologue
    .line 1516
    monitor-enter p0

    .line 1517
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow enter"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_e

    monitor-exit p0

    .line 1551
    :goto_d
    return-void

    .line 1520
    :cond_e
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_17

    monitor-exit p0

    goto :goto_d

    .line 1550
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0

    .line 1522
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 1524
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow mKeyguardViewManager Show exit"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1528
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1529
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1530
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_14

    .line 1532
    :try_start_32
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_6a

    .line 1536
    :goto_3b
    :try_start_3b
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow query AlarmBoot before"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1539
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1548
    :goto_4c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1549
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow exit"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    monitor-exit p0

    goto :goto_d

    .line 1541
    :cond_5a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_69
    .catchall {:try_start_3b .. :try_end_69} :catchall_14

    goto :goto_4c

    .line 1533
    :catch_6a
    move-exception v0

    goto :goto_3b
.end method

.method private handleVerifyUnlock()V
    .registers 3

    .prologue
    .line 1690
    monitor-enter p0

    .line 1691
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->verifyUnlock()V

    .line 1693
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1694
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1695
    monitor-exit p0

    .line 1696
    return-void

    .line 1695
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private handleWakeWhenReady(II)V
    .registers 6
    .parameter "keyCode"
    .parameter "wakeMSGId"

    .prologue
    .line 1651
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>handleWakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Before--synchronized (KeyguardViewMediator.this) wakeMSGId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    monitor-enter p0

    .line 1653
    :try_start_23
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") wakeMSGId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_57

    .line 1659
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1667
    :cond_57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1668
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<handleWakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") wakeMSGId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    monitor-exit p0

    .line 1670
    return-void

    .line 1669
    :catchall_80
    move-exception v0

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_23 .. :try_end_82} :catchall_80

    throw v0
.end method

.method private hideLocked()V
    .registers 4

    .prologue
    .line 1163
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1165
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1166
    return-void
.end method

.method public static isKeyguardEnabled()Z
    .registers 1

    .prologue
    .line 1812
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method public static isKeyguardNotShowing()Z
    .registers 3

    .prologue
    .line 1806
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mExternallyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_30

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public static isKeyguardShowingAndNotHidden()Z
    .registers 1

    .prologue
    .line 1817
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private maybeSendUserPresentBroadcast()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 796
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1c

    .line 801
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 803
    :cond_1c
    return-void
.end method

.method private notifyScreenOffLocked()V
    .registers 3

    .prologue
    .line 1109
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOffLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1111
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .registers 5
    .parameter "showListener"

    .prologue
    .line 1119
    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyScreenOnLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1121
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1122
    return-void
.end method

.method private playSounds(Z)V
    .registers 10
    .parameter "locked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1478
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_9

    .line 1479
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1501
    :cond_8
    :goto_8
    return-void

    .line 1483
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1484
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 1485
    if-eqz p1, :cond_57

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 1488
    .local v1, whichSound:I
    :goto_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 1490
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_3e

    .line 1491
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1492
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_8

    .line 1493
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 1496
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1498
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_8

    .line 1485
    .end local v1           #whichSound:I
    :cond_57
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1b
.end method

.method private resetStateLocked(Landroid/os/Bundle;)V
    .registers 5
    .parameter "options"

    .prologue
    .line 1088
    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1090
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1091
    return-void
.end method

.method private sendRemoveIPOWinBroadcast()V
    .registers 4

    .prologue
    .line 1728
    const-string v1, "KeyguardViewMediator"

    const-string v2, "sendRemoveIPOWinBroadcast ... "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "alarm.boot.remove.ipowin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1730
    .local v0, in:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1731
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .registers 4

    .prologue
    .line 1449
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1e

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1450
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1451
    .local v0, currentUser:Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1453
    .end local v0           #currentUser:Landroid/os/UserHandle;
    :cond_1e
    return-void
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .registers 5
    .parameter "options"

    .prologue
    .line 1151
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1154
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1155
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1156
    return-void
.end method

.method private startAlarm()V
    .registers 4

    .prologue
    .line 1748
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1749
    .local v0, in:Landroid/content/Intent;
    const-string v1, "isAlarmBoot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1750
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1751
    return-void
.end method

.method private updateActivityLockScreenState()V
    .registers 3

    .prologue
    .line 1505
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_13

    .line 1509
    :goto_10
    return-void

    .line 1505
    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    .line 1507
    :catch_13
    move-exception v0

    goto :goto_10
.end method

.method private verifyUnlockLocked()V
    .registers 3

    .prologue
    .line 1098
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1100
    return-void
.end method

.method private wakeWhenReady(I)V
    .registers 6
    .parameter "keyCode"

    .prologue
    .line 1132
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wakeWhenReady("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1140
    sget v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    .line 1141
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<wakeWhenReadyLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Before--Send Message WAKE_WHEN_READY sWakeMSGId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1143
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1144
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 1077
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_d

    .line 1078
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->dismiss()V

    .line 1080
    :cond_d
    return-void
.end method

.method public dmCheckLocked()Z
    .registers 2

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    return v0
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .registers 5
    .parameter "options"

    .prologue
    const/16 v2, 0xd

    .line 955
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 956
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 957
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 958
    return-void
.end method

.method public handleShowAssistant()V
    .registers 2

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->showAssistant()V

    .line 1760
    return-void
.end method

.method public isAlarmUnlockScreen()Z
    .registers 2

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->isAlarmUnlockScreen()Z

    move-result v0

    return v0
.end method

.method public isDismissable()Z
    .registers 2

    .prologue
    .line 1721
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isInputRestricted()Z
    .registers 2

    .prologue
    .line 966
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

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

.method public isShowing()Z
    .registers 2

    .prologue
    .line 915
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .registers 2

    .prologue
    .line 922
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public keyguardDone(ZZ)V
    .registers 9
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1280
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1281
    monitor-enter p0

    .line 1282
    const v3, 0x11170

    const/4 v4, 0x2

    :try_start_9
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1283
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguardDone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1285
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_58

    :goto_34
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1286
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1288
    if-eqz p1, :cond_42

    .line 1289
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1292
    :cond_42
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_56

    .line 1293
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v1, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1294
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1296
    if-eqz p1, :cond_56

    .line 1299
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1300
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1303
    :cond_56
    monitor-exit p0

    .line 1304
    return-void

    :cond_58
    move v1, v2

    .line 1285
    goto :goto_34

    .line 1303
    .end local v0           #msg:Landroid/os/Message;
    :catchall_5a
    move-exception v1

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_9 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public onDreamingStarted()V
    .registers 2

    .prologue
    .line 810
    monitor-enter p0

    .line 811
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 812
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    .line 814
    :cond_10
    monitor-exit p0

    .line 815
    return-void

    .line 814
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onDreamingStopped()V
    .registers 2

    .prologue
    .line 821
    monitor-enter p0

    .line 822
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_8

    .line 823
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 825
    :cond_8
    monitor-exit p0

    .line 826
    return-void

    .line 825
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .registers 6
    .parameter "why"

    .prologue
    const/4 v0, 0x0

    .line 684
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ---ScreenOff Before--synchronized (this)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    monitor-enter p0

    .line 686
    const/4 v1, 0x0

    :try_start_21
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 687
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ---ScreenOff mScreenOn = false; Before--boolean lockImmediately"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 694
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_55

    :cond_54
    const/4 v0, 0x1

    .line 697
    .local v0, lockImmediately:Z
    :cond_55
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ---ScreenOff mScreenOn = false; After--boolean lockImmediately="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mExitSecureCallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_e1

    .line 702
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ---ScreenOff pending exit secure callback cancelled ---ScreenOff"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 704
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 705
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v1, :cond_c1

    .line 706
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 719
    :cond_c1
    :goto_c1
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_21 .. :try_end_c2} :catchall_ed

    .line 720
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ---ScreenOff After--synchronized (this)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return-void

    .line 708
    :cond_e1
    :try_start_e1
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_f0

    .line 709
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 710
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_c1

    .line 719
    .end local v0           #lockImmediately:Z
    :catchall_ed
    move-exception v1

    monitor-exit p0
    :try_end_ef
    .catchall {:try_start_e1 .. :try_end_ef} :catchall_ed

    throw v1

    .line 711
    .restart local v0       #lockImmediately:Z
    :cond_f0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_f8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_fc

    if-nez v0, :cond_fc

    .line 713
    :cond_f8
    :try_start_f8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    goto :goto_c1

    .line 714
    :cond_fc
    const/4 v1, 0x4

    if-eq p1, v1, :cond_c1

    .line 717
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    :try_end_102
    .catchall {:try_start_f8 .. :try_end_102} :catchall_ed

    goto :goto_c1
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .registers 5
    .parameter "showListener"

    .prologue
    .line 781
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>onScreenTurnedOn, ---ScreenOn seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "seq will be change in synchronized Before--synchronized (this)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    monitor-enter p0

    .line 784
    const/4 v0, 0x1

    :try_start_22
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 785
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 786
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-eqz p1, :cond_46

    .line 788
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 790
    :cond_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_65

    .line 791
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 792
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<onScreenTurnedOn, ---ScreenOn seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    return-void

    .line 790
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0
.end method

.method public onSystemReady()V
    .registers 3

    .prologue
    .line 643
    monitor-enter p0

    .line 644
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 646
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 657
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 661
    :cond_2a
    const-string v0, "KeyguardViewMediator"

    const-string v1, "suppressing biometric unlock during boot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 667
    :goto_37
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_40

    .line 668
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 671
    :cond_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_4c

    .line 674
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 675
    return-void

    .line 664
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_37

    .line 671
    :catchall_4c
    move-exception v0

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public onWakeKeyWhenKeyguardShowingTq(I)V
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 1252
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeKeyWhenKeyguardShowing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeWhenReady(I)V

    .line 1258
    return-void
.end method

.method public onWakeMotionWhenKeyguardShowingTq()V
    .registers 3

    .prologue
    .line 1271
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onWakeMotionWhenKeyguardShowing()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeWhenReady(I)V

    .line 1277
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3
    .parameter "newUserId"

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1181
    return-void
.end method

.method public setDebugFilterStatus(Z)V
    .registers 2
    .parameter "debugflag"

    .prologue
    .line 1797
    return-void
.end method

.method public setHidden(Z)V
    .registers 9
    .parameter "isHidden"

    .prologue
    const/16 v6, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 929
    const-string v1, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHidden "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-nez p1, :cond_37

    move v1, v2

    :goto_21
    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendKeyguardVisibilityChanged(Z)V

    .line 931
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 932
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_39

    :goto_2d
    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 933
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 934
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_37
    move v1, v3

    .line 930
    goto :goto_21

    :cond_39
    move v2, v3

    .line 932
    goto :goto_2d
.end method

.method public setKeyguardEnabled(Z)V
    .registers 7
    .parameter "enabled"

    .prologue
    .line 834
    monitor-enter p0

    .line 835
    :try_start_1
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 839
    if-nez p1, :cond_46

    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_46

    .line 840
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_34

    .line 841
    const-string v1, "KeyguardViewMediator"

    const-string v2, "in process of verifyUnlock request, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    monitor-exit p0

    .line 883
    :goto_33
    return-void

    .line 848
    :cond_34
    const-string v1, "KeyguardViewMediator"

    const-string v2, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 851
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 882
    :cond_41
    :goto_41
    monitor-exit p0

    goto :goto_33

    :catchall_43
    move-exception v1

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_43

    throw v1

    .line 852
    :cond_46
    if-eqz p1, :cond_41

    :try_start_48
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_41

    .line 854
    const-string v1, "KeyguardViewMediator"

    const-string v2, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 858
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_6f

    .line 859
    const-string v1, "KeyguardViewMediator"

    const-string v2, "onKeyguardExitResult(false), resetting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 861
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 862
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_41

    .line 864
    :cond_6f
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 869
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 870
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 871
    const-string v1, "KeyguardViewMediator"

    const-string v2, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :goto_86
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_88
    .catchall {:try_start_48 .. :try_end_88} :catchall_43

    if-eqz v1, :cond_97

    .line 874
    :try_start_8a
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_43
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_86

    .line 875
    :catch_8e
    move-exception v0

    .line 876
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_8f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_86

    .line 879
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_97
    const-string v1, "KeyguardViewMediator"

    const-string v2, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_43

    goto :goto_41
.end method

.method public showAssistant()V
    .registers 4

    .prologue
    .line 1754
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1755
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1756
    return-void
.end method

.method public userActivity()V
    .registers 3

    .prologue
    .line 556
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 557
    return-void
.end method

.method public userActivity(J)V
    .registers 7
    .parameter "holdMs"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 563
    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 889
    monitor-enter p0

    .line 890
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 893
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ignoring because device isn\'t provisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 908
    :goto_1b
    monitor-exit p0

    .line 909
    return-void

    .line 895
    :cond_1d
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_30

    .line 899
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_1b

    .line 908
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw v0

    .line 901
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_39

    .line 903
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_1b

    .line 905
    :cond_39
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 906
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_2d

    goto :goto_1b
.end method

.method public wakeUp()V
    .registers 4

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 553
    return-void
.end method
