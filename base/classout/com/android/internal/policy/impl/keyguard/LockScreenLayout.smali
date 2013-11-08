.class public Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;
.super Landroid/widget/FrameLayout;
.source "LockScreenLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final INVALID_POINTER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LockScreenLayout"


# instance fields
.field final DRAG_BITMAP_PADDING:I

.field private mAnimationRunning:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    .line 26
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->DRAG_BITMAP_PADDING:I

    .line 29
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mAnimationRunning:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    .line 26
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->DRAG_BITMAP_PADDING:I

    .line 29
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mAnimationRunning:Z

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->setMotionEventSplittingEnabled(Z)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mAnimationRunning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mAnimationRunning:Z

    return p1
.end method

.method private getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .registers 12
    .parameter "descendant"
    .parameter "coord"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 137
    const/high16 v1, 0x3f80

    .line 138
    .local v1, scale:F
    const/4 v4, 0x2

    new-array v0, v4, [F

    aget v4, p2, v7

    int-to-float v4, v4

    aput v4, v0, v7

    aget v4, p2, v8

    int-to-float v4, v4

    aput v4, v0, v8

    .line 139
    .local v0, pt:[F
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 141
    aget v4, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 142
    aget v4, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 144
    .local v3, viewParent:Landroid/view/ViewParent;
    :goto_35
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_6d

    if-eq v3, p0, :cond_6d

    move-object v2, v3

    .line 145
    check-cast v2, Landroid/view/View;

    .line 146
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 147
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 148
    aget v4, v0, v7

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 149
    aget v4, v0, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 151
    goto :goto_35

    .line 152
    .end local v2           #view:Landroid/view/View;
    :cond_6d
    aget v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v7

    .line 153
    aget v4, v0, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v8

    .line 154
    return v1
.end method


# virtual methods
.method beginShakeAnimation()V
    .registers 9

    .prologue
    .line 92
    const-string v5, "LockScreenLayout"

    const-string v6, "beginShakeAnimation enter"

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_23

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mAnimationRunning:Z

    if-eqz v5, :cond_3e

    .line 96
    :cond_23
    const-string v5, "LockScreenLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "beginShakeAnimation return for no need mAnimationRunning="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mAnimationRunning:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_3d
    return-void

    .line 99
    :cond_3e
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v3

    .line 100
    .local v3, newEventViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v0, 0x0

    .line 101
    .local v0, animationListenerSet:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_46
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3d

    .line 102
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 103
    .local v2, indicatorContainer:Landroid/view/ViewGroup;
    if-eqz v2, :cond_83

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_83

    .line 104
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mAnimationRunning:Z

    .line 105
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-direct {v4, v5}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;-><init>(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V

    .line 106
    .local v4, shakeAnimation:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;
    if-nez v0, :cond_80

    .line 107
    const/4 v0, 0x1

    .line 108
    const-string v5, "LockScreenLayout"

    const-string v6, "beginShakeAnimation animationListenerSet setOnUnReadHinAnimationEndListener"

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$1;-><init>(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->setOnUnReadHinAnimationEndListener(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$OnUnReadHinAnimationEndListener;)V

    .line 117
    :cond_80
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->animate()V

    .line 101
    .end local v4           #shakeAnimation:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_46
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    if-nez v0, :cond_a

    .line 63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 72
    :goto_9
    return v0

    .line 66
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 67
    const/4 v0, 0x1

    goto :goto_9

    .line 69
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public getLocationInLockScreenLayout(Landroid/view/View;[I)V
    .registers 5
    .parameter "child"
    .parameter "loc"

    .prologue
    const/4 v1, 0x0

    .line 123
    aput v1, p2, v1

    .line 124
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 126
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getChildCount()I

    move-result v1

    .line 48
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v1, :cond_33

    .line 49
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .local v2, flp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;

    if-eqz v5, :cond_30

    move-object v4, v2

    .line 52
    check-cast v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;

    .line 53
    .local v4, lp:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;
    iget-boolean v5, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_30

    .line 54
    iget v5, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->x:I

    iget v6, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->y:I

    iget v7, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->x:I

    iget v8, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->y:I

    iget v9, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 48
    .end local v4           #lp:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 58
    .end local v0           #child:Landroid/view/View;
    .end local v2           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_33
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1d

    .line 79
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 87
    :goto_1c
    return v1

    .line 81
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 82
    .local v0, action:I
    packed-switch v0, :pswitch_data_2a

    .line 87
    :goto_24
    const/4 v1, 0x1

    goto :goto_1c

    .line 84
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->beginShakeAnimation()V

    goto :goto_24

    .line 82
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method

.method public setUnReadEventView(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V
    .registers 2
    .parameter "unReadEventView"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    .line 42
    return-void
.end method
