.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V
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
    .line 1541
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendRemoveIPOWinBroadcast()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1544
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->startAlarm()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1545
    return-void
.end method
