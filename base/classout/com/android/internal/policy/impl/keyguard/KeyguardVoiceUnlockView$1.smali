.class Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardVoiceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .registers 7
    .parameter "showing"

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyguardVisibilityChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, wasShowing:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 191
    :try_start_26
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Z

    move-result v1

    .line 192
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mIsShowing:Z
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$302(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;Z)Z

    .line 193
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_56

    .line 194
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 196
    .local v0, powerManager:Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 197
    if-nez p1, :cond_59

    if-eqz v1, :cond_59

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 203
    :cond_55
    :goto_55
    return-void

    .line 193
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2

    .line 199
    .restart local v0       #powerManager:Landroid/os/PowerManager;
    :cond_59
    if-eqz p1, :cond_55

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_55

    if-nez v1, :cond_55

    .line 200
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)V

    goto :goto_55
.end method

.method public onPhoneStateChanged(I)V
    .registers 5
    .parameter "phoneState"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 174
    :cond_32
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 5
    .parameter "userId"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitched("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 184
    :cond_2f
    return-void
.end method
