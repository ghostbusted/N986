.class public abstract Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# static fields
.field private static final BACKGROUND_COLOR:I = 0x70000000

.field private static final KEYGUARD_MANAGES_VOLUME:Z = true

.field private static final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->resetBackground()V

    .line 87
    return-void
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 164
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 165
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6f

    .line 166
    sparse-switch v1, :sswitch_data_7e

    .line 242
    :cond_e
    :goto_e
    const/4 v3, 0x0

    :cond_f
    :goto_f
    return v3

    .line 172
    :sswitch_10
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_22

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 176
    :cond_22
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_f

    .line 188
    :cond_2e
    :sswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_f

    .line 196
    :sswitch_32
    monitor-enter p0

    .line 197
    :try_start_33
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_45

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 201
    :cond_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_33 .. :try_end_46} :catchall_5a

    .line 205
    const/16 v2, 0x18

    if-ne v1, v2, :cond_5d

    move v0, v3

    .line 208
    .local v0, direction:I
    :goto_4b
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 210
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v0}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_f

    .line 201
    .end local v0           #direction:I
    :catchall_5a
    move-exception v2

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v2

    .line 205
    :cond_5d
    const/4 v0, -0x1

    goto :goto_4b

    .line 212
    .restart local v0       #direction:I
    :cond_5f
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isFmActive()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 213
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v0}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_f

    .line 224
    .end local v0           #direction:I
    :cond_6f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_e

    .line 225
    sparse-switch v1, :sswitch_data_b8

    goto :goto_e

    .line 237
    :sswitch_79
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_f

    .line 166
    nop

    :sswitch_data_7e
    .sparse-switch
        0x18 -> :sswitch_32
        0x19 -> :sswitch_32
        0x4f -> :sswitch_2e
        0x55 -> :sswitch_10
        0x56 -> :sswitch_2e
        0x57 -> :sswitch_2e
        0x58 -> :sswitch_2e
        0x59 -> :sswitch_2e
        0x5a -> :sswitch_2e
        0x5b -> :sswitch_2e
        0x7e -> :sswitch_10
        0x7f -> :sswitch_10
        0x82 -> :sswitch_2e
        0xa4 -> :sswitch_32
    .end sparse-switch

    .line 225
    :sswitch_data_b8
    .sparse-switch
        0x4f -> :sswitch_79
        0x55 -> :sswitch_79
        0x56 -> :sswitch_79
        0x57 -> :sswitch_79
        0x58 -> :sswitch_79
        0x59 -> :sswitch_79
        0x5a -> :sswitch_79
        0x5b -> :sswitch_79
        0x7e -> :sswitch_79
        0x7f -> :sswitch_79
        0x82 -> :sswitch_79
    .end sparse-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_e

    .line 264
    const/high16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setSystemUiVisibility(I)V

    .line 266
    :cond_e
    return-void
.end method

.method public abstract getUserActivityTimeout()J
.end method

.method handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 7
    .parameter "keyEvent"

    .prologue
    .line 246
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 248
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_2a

    .line 250
    :try_start_c
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 257
    :goto_f
    return-void

    .line 251
    :catch_10
    move-exception v1

    .line 252
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "KeyguardViewBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 255
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2a
    const-string v2, "KeyguardViewBase"

    const-string v3, "Unable to find IAudioService for media key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public abstract isAlarmUnlockScreen()Z
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract reset()V
.end method

.method public resetBackground()V
    .registers 2

    .prologue
    .line 90
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .registers 2
    .parameter "viewMediatorCallback"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 271
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method
