.class Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlingAlongVectorAnimatorUpdateListener"
.end annotation


# instance fields
.field private final mAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field private mDragView:Landroid/view/View;

.field private mFriction:F

.field private mFrom:Landroid/graphics/Rect;

.field private mPrevTime:J

.field private mVelocity:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V
    .registers 9
    .parameter "dragView"
    .parameter "vel"
    .parameter "from"
    .parameter "startTime"
    .parameter "friction"

    .prologue
    .line 2296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2293
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f40

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 2297
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mDragView:Landroid/view/View;

    .line 2298
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    .line 2299
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    .line 2300
    iput-wide p4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    .line 2301
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p6

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    .line 2302
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 11
    .parameter "animation"

    .prologue
    const/high16 v8, 0x447a

    .line 2306
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2307
    .local v2, t:F
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2309
    .local v0, curTime:J
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    sub-long v6, v0, v6

    long-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2310
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    sub-long v6, v0, v6

    long-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2312
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 2313
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2314
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mDragView:Landroid/view/View;

    const/high16 v4, 0x3f80

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v5, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2316
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    mul-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 2317
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    mul-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 2318
    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    .line 2319
    return-void
.end method
