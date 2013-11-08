.class Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UnReadHintAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->doShakeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 86
    const-string v0, "UnReadHintAnimation"

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mTargetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$100(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mTargetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$100(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 90
    :cond_19
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animation"

    .prologue
    .line 76
    const-string v0, "UnReadHintAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd mReverseRotationValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mReverseRotationValue:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$000(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOnUnReadHinAnimationEndListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mOnUnReadHinAnimationEndListener:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$300(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mReverseRotationValue:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$002(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;Z)Z

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mOnUnReadHinAnimationEndListener:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$300(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mOnUnReadHinAnimationEndListener:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$300(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;->onUnReadHintAnimationEnd()V

    .line 82
    :cond_45
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animation"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$208(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)I

    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mRepeatCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$200(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_46

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mReverseRotationValue:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$002(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;Z)Z

    .line 70
    :goto_17
    const-string v0, "UnReadHintAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationRepeat, mRepeatCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mRepeatCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$200(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mReverseRotationValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mReverseRotationValue:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$000(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 68
    :cond_46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mReverseRotationValue:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$002(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;Z)Z

    goto :goto_17
.end method
