.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 2
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 7
    .parameter "view"
    .parameter "pendingIntent"
    .parameter "fillInIntent"

    .prologue
    const/4 v0, 0x1

    .line 737
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 738
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 760
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 761
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    .line 768
    :goto_26
    return v0

    .line 764
    :cond_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->dismiss()V

    goto :goto_26

    .line 768
    :cond_2d
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_26
.end method
