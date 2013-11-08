.class Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$1;
.super Ljava/lang/Object;
.source "LockScreenLayout.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->beginShakeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnReadHintAnimationEnd()V
    .registers 4

    .prologue
    .line 112
    const-string v0, "LockScreenLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginShakeAnimation onUnReadHintAnimationEnd mAnimationRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mAnimationRunning:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->access$000(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->access$002(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;Z)Z

    .line 114
    return-void
.end method
