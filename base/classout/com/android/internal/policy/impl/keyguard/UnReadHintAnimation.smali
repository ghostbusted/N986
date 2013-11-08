.class public Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;
.super Ljava/lang/Object;
.source "UnReadHintAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x50

.field private static final REPEAT_COUNT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "UnReadHintAnimation"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mOnUnReadHinAnimationEndListener:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;

.field private mRepeatCount:I

.field private mReverseRotationValue:Z

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V
    .registers 4
    .parameter "child"

    .prologue
    const/high16 v1, 0x3f00

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mReverseRotationValue:Z

    .line 33
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setPivotY(F)V

    .line 34
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setPivotX(F)V

    .line 35
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mTargetView:Landroid/view/View;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mReverseRotationValue:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mReverseRotationValue:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mOnUnReadHinAnimationEndListener:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;

    return-object v0
.end method

.method private cancel()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 100
    :cond_9
    return-void
.end method

.method private doShakeAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 43
    new-instance v1, Landroid/animation/FloatEvaluator;

    invoke-direct {v1}, Landroid/animation/FloatEvaluator;-><init>()V

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 44
    .local v0, animator:Landroid/animation/ValueAnimator;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 45
    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 47
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$1;-><init>(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;-><init>(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mAnimator:Landroid/animation/Animator;

    .line 93
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 94
    return-void
.end method


# virtual methods
.method public animate()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->doShakeAnimation()V

    .line 40
    return-void
.end method

.method public completeAnimationImmediately()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 106
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mOnUnReadHinAnimationEndListener:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;

    if-eqz v0, :cond_12

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mOnUnReadHinAnimationEndListener:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;->onUnReadHintAnimationEnd()V

    .line 109
    :cond_12
    return-void
.end method

.method public setOnUnReadHinAnimationEndListener(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;)V
    .registers 2
    .parameter "onUnReadHinAnimationEndListener"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->mOnUnReadHinAnimationEndListener:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;

    .line 113
    return-void
.end method
