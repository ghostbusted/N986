.class public abstract Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# static fields
.field private static final BACKGROUND_COLOR:I = 0x70000000

.field private static final KEYGUARD_MANAGES_VOLUME:Z = true


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;)V
    .registers 4
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 60
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase$1;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->resetBackground()V

    .line 84
    return-void
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 178
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 179
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_57

    .line 180
    sparse-switch v0, :sswitch_data_66

    .line 248
    :cond_e
    :goto_e
    const/4 v2, 0x0

    :cond_f
    :goto_f
    return v2

    .line 186
    :sswitch_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_22

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 190
    :cond_22
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_f

    .line 202
    :cond_2e
    :sswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_f

    .line 210
    :sswitch_32
    monitor-enter p0

    .line 211
    :try_start_33
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_45

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 215
    :cond_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_33 .. :try_end_46} :catchall_52

    .line 218
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    const/16 v1, 0x18

    if-ne v0, v1, :cond_55

    move v1, v2

    :goto_4e
    invoke-virtual {v3, v4, v1}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_f

    .line 215
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1

    .line 218
    :cond_55
    const/4 v1, -0x1

    goto :goto_4e

    .line 230
    :cond_57
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_e

    .line 231
    sparse-switch v0, :sswitch_data_a0

    goto :goto_e

    .line 243
    :sswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_f

    .line 180
    nop

    :sswitch_data_66
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

    .line 231
    :sswitch_data_a0
    .sparse-switch
        0x4f -> :sswitch_61
        0x55 -> :sswitch_61
        0x56 -> :sswitch_61
        0x57 -> :sswitch_61
        0x58 -> :sswitch_61
        0x59 -> :sswitch_61
        0x5a -> :sswitch_61
        0x5b -> :sswitch_61
        0x7e -> :sswitch_61
        0x7f -> :sswitch_61
        0x82 -> :sswitch_61
    .end sparse-switch
.end method

.method private shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_8

    .line 166
    :goto_7
    :pswitch_7
    return v0

    .line 159
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    .line 166
    const/4 v0, 0x1

    goto :goto_7

    .line 159
    nop

    :pswitch_data_12
    .packed-switch 0x13
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;->pokeWakelock()V

    .line 149
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 268
    const/high16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->setSystemUiVisibility(I)V

    .line 269
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    return-object v0
.end method

.method handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 7
    .parameter "keyEvent"

    .prologue
    .line 252
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 254
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_2a

    .line 256
    :try_start_c
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 263
    :goto_f
    return-void

    .line 257
    :catch_10
    move-exception v1

    .line 258
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

    .line 261
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2a
    const-string v2, "KeyguardViewBase"

    const-string v3, "Unable to find IAudioService for media key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
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
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method
