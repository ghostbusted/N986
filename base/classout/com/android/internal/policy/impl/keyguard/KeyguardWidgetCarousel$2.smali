.class Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$2;
.super Ljava/lang/Object;
.source "KeyguardWidgetCarousel.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFactor:F

.field mInternal:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;)V
    .registers 4
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$2;->mInternal:Landroid/view/animation/Interpolator;

    .line 198
    const v0, 0x3fa66666

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$2;->mFactor:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .parameter "input"

    .prologue
    const/high16 v1, 0x3f80

    .line 201
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$2;->mFactor:F

    div-float v0, v1, v0

    sub-float v0, v1, v0

    sub-float/2addr p1, v0

    .line 202
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$2;->mFactor:F

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float p1, v0, v1

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$2;->mInternal:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
