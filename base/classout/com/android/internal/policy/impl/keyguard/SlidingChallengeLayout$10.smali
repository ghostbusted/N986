.class Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;
.super Ljava/lang/Object;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1321
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayer:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$300(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Z

    move-result v3

    #calls: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->updateKeyguardLayerView(Z)V
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$400(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V

    .line 1322
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$500(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$500(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayer:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$300(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Z

    move-result v0

    if-eqz v0, :cond_41

    move v0, v1

    :goto_24
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1325
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 1326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayer:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$300(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Z

    move-result v3

    if-eqz v3, :cond_43

    :goto_3d
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1328
    :cond_40
    return-void

    :cond_41
    move v0, v2

    .line 1323
    goto :goto_24

    :cond_43
    move v1, v2

    .line 1326
    goto :goto_3d
.end method
