.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_12e

    .line 263
    :goto_5
    return-void

    .line 183
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_5

    .line 186
    :sswitch_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_5

    .line 189
    :sswitch_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;)V

    goto :goto_5

    .line 192
    :sswitch_20
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    goto :goto_5

    .line 195
    :sswitch_2a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    goto :goto_5

    .line 198
    :sswitch_32
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_5

    .line 201
    :sswitch_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_5

    .line 204
    :sswitch_42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    goto :goto_5

    .line 207
    :sswitch_48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    goto :goto_5

    .line 210
    :sswitch_4e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleUserSwitched(ILandroid/os/IRemoteCallback;)V

    goto :goto_5

    .line 213
    :sswitch_5a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleUserRemoved(I)V

    goto :goto_5

    .line 216
    :sswitch_62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_5

    .line 219
    :sswitch_6a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBootCompleted()V

    goto :goto_5

    .line 223
    :sswitch_70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->updateResources()V

    goto :goto_5

    .line 227
    :sswitch_76
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBootupModePick()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_5

    .line 230
    :sswitch_7c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMInfoChanged(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_5

    .line 233
    :sswitch_84
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)I

    goto/16 :goto_5

    .line 236
    :sswitch_8c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMCardChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_5

    .line 239
    :sswitch_93
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_KEYGUARD_UPDATE_LAYOUT, msg.arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleLockScreenUpdateLayout(I)V

    goto/16 :goto_5

    .line 244
    :sswitch_b6
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_KEYGUARD_SIM_NAME_UPDATE, msg.arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMNameUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_5

    .line 248
    :sswitch_d9
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_MODEM_RESET, msg.arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleRadioStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_5

    .line 252
    :sswitch_fc
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handle3GSwitchEvent()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_5

    .line 255
    :sswitch_103
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_SYSTEM_STATE, msg.arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSystemStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_5

    .line 259
    :sswitch_126
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDownloadCalibrationDataUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_5

    .line 181
    nop

    :sswitch_data_12e
    .sparse-switch
        0x12d -> :sswitch_6
        0x12e -> :sswitch_c
        0x12f -> :sswitch_16
        0x130 -> :sswitch_20
        0x131 -> :sswitch_2a
        0x132 -> :sswitch_32
        0x133 -> :sswitch_3c
        0x134 -> :sswitch_42
        0x135 -> :sswitch_48
        0x136 -> :sswitch_4e
        0x137 -> :sswitch_5a
        0x138 -> :sswitch_62
        0x139 -> :sswitch_6a
        0x3ea -> :sswitch_8c
        0x3ec -> :sswitch_7c
        0x3ed -> :sswitch_70
        0x3ee -> :sswitch_b6
        0x3ef -> :sswitch_84
        0x3f0 -> :sswitch_93
        0x3f1 -> :sswitch_d9
        0x3f2 -> :sswitch_fc
        0x3f3 -> :sswitch_76
        0x3f4 -> :sswitch_103
        0x3f5 -> :sswitch_126
    .end sparse-switch
.end method
