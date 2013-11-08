.class Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onPhoneStateChanged(I)V
    .registers 4
    .parameter "phoneState"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$100(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 65
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 66
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 77
    const-string v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRefreshCarrierInfo plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$300(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 79
    .local v0, phoneState:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$400(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 80
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 81
    return-void
.end method

.method public onRefreshCarrierInfoGemini(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 9
    .parameter "plmn"
    .parameter "spn"
    .parameter "simId"

    .prologue
    .line 85
    const-string v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRefreshCarrierInfoGemini plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$500(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 87
    .local v0, phoneState:I
    if-nez p3, :cond_51

    .line 88
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$600(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 89
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 95
    :goto_50
    return-void

    .line 92
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_51
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$700(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 93
    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_50
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 4
    .parameter "simState"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 60
    .local v0, phoneState:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 61
    return-void
.end method

.method public onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .registers 5
    .parameter "simState"
    .parameter "simId"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$200(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 71
    .local v0, phoneState:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 72
    return-void
.end method
