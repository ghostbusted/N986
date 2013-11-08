.class Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$1;
.super Ljava/lang/Object;
.source "UnReadHintAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .parameter "animation"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x4150

    mul-float v0, v1, v2

    .line 51
    .local v0, r:F
    const-string v1, "UnReadHintAnimation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationUpdate r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mTargetView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$100(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mReverseRotationValue:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->access$000(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Z

    move-result v2

    if-eqz v2, :cond_35

    neg-float v0, v0

    .end local v0           #r:F
    :cond_35
    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 53
    return-void
.end method
