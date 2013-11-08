.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 2
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyguardDone(Z)V
    .registers 4
    .parameter "authenticated"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 529
    return-void
.end method

.method public keyguardDoneDrawing()V
    .registers 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 533
    return-void
.end method

.method public keyguardDonePending()V
    .registers 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1202(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 548
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeout()V

    .line 543
    return-void
.end method

.method public setNeedsInput(Z)V
    .registers 3
    .parameter "needsInput"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->setNeedsInput(Z)V

    .line 538
    return-void
.end method

.method public userActivity()V
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 521
    return-void
.end method

.method public userActivity(J)V
    .registers 4
    .parameter "holdMs"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 525
    return-void
.end method

.method public wakeUp()V
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 517
    return-void
.end method
