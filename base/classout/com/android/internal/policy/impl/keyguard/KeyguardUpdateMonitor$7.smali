.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initPhoneStateListener()V
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
    .line 2065
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 9
    .parameter "state"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 2068
    if-eqz p1, :cond_54

    .line 2069
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v2

    .line 2070
    .local v2, regState:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:Z

    if-eqz v3, :cond_1b

    if-eq v2, v6, :cond_1b

    .line 2071
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "PhoneStateListener, sim1 searching finished"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iput-boolean v5, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:Z

    .line 2075
    :cond_1b
    if-ne v6, v2, :cond_29

    .line 2076
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "PhoneStateListener, sim1 searching begin"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:Z

    .line 2079
    :cond_29
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_54

    .line 2080
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 2081
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_51

    .line 2082
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:Z

    invoke-virtual {v0, v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSearchNetworkUpdate(IZ)V

    .line 2079
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 2086
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    .end local v2           #regState:I
    :cond_54
    return-void
.end method
