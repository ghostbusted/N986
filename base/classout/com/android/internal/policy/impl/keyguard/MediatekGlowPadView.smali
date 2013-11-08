.class public Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;
.super Landroid/view/View;
.source "MediatekGlowPadView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;,
        Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$IntersectAnimationRunnable;,
        Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;,
        Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;,
        Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ANIM_TOUCH_STLOP:I = 0x3

.field private static final DEBUG:Z = true

.field private static final DRAG_ANIMATION_DELAY:I = 0x32

.field private static final DRAG_ANIMATION_DURATION:I = 0x15e

.field private static final DRAG_BACK_ANIMATION_DELAY:I = 0x14

.field private static final DRAG_BACK_ANIMATION_DURATION:I = 0xc8

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediatekGlowPadView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final TOUCH_ANIM_BACK:I = 0x6

.field private static final TOUCH_DRAGGING:I = 0x3

.field private static final TOUCH_END:I = 0x7

.field private static final TOUCH_FLING:I = 0x4

.field private static final TOUCH_HANDLE_ANIM:I = 0x1

.field private static final TOUCH_INIT:I = 0x0

.field private static final TOUCH_INTERSECT:I = 0x2

.field private static final TOUCH_MOVE_INTERSECT_ANIM_THRESHOLD:F = 10.0f

.field private static final TOUCH_MOVE_TRIGGER_THRESHOLD:I = 0x3

.field private static final TOUCH_TRIGGER:I = 0x5

.field private static final WAVE_ANIMATION_DURATION:I = 0x546


# instance fields
.field private mActionCancel:Z

.field private mActiveTarget:I

.field private mAllowScaling:Z

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCheckForInterSectAnimation:Ljava/lang/Runnable;

.field private mCurrentFakeHandleTargetX:F

.field private mCurrentFakeHandleTargetY:F

.field private mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDoingIntersectAnim:Z

.field private mDragSnapMargin:F

.field private mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

.field private mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mDragViewDoingTouch:Z

.field private mDragViewState:I

.field private mDragging:Z

.field private mFakeHandleAnimating:Z

.field private mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

.field private mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

.field private mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mFakeHandleRealX:F

.field private mFakeHandleRealY:F

.field private mFeedbackCount:I

.field private mFirstItemOffset:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mGlowPadViewState:I

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

.field private mHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mHandlePosition:Landroid/graphics/Point;

.field private final mHistoryTouchXY:[I

.field private mHorizontalInset:I

.field private mInitDownMotionLocationX:I

.field private mInitDownMotionLocationY:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mLayoutListenerSet:Z

.field private mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

.field private mMagneticTargets:Z

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewEventViewInLockScreenX:I

.field private mNewEventViewInLockScreenY:I

.field private final mNewEventViewLocationInLockScreen:[I

.field private mNewTargetResources:I

.field private mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

.field private final mOwnerDragViewOffsets:[I

.field private final mOwnerLocationInLockScreen:[I

.field private final mOwnerNewEventViewOffset:[I

.field private final mOwnerRawLocation:[I

.field private final mOwnerRecepientOffsets:[I

.field private mPendingDragViewState:I

.field private mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

.field private final mPoint:Landroid/graphics/Point;

.field private mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

.field private mPointerId:I

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mRingScaleFactor:F

.field private mShouldDoIntersectAnim:Z

.field private mSimpleOnGestureListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;

.field private mSnapMargin:F

.field private mTapTimeOut:Z

.field private mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTempXY:[I

.field private mTouchDropped:Z

.field private mTouchIntercepted:Z

.field private mTouchMoveIntersectAnimThreshold:F

.field private mTouchMoveTriggerThreshold:I

.field private mTouchRecepient:Landroid/view/View;

.field private final mTouchRecepientRawLocation:[I

.field private mTouchSlop:I

.field private mTouchSlopSqure:I

.field private mTouchTriggered:Z

.field private mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 392
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 395
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 123
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 124
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 125
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 133
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFeedbackCount:I

    .line 134
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    .line 136
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    .line 142
    const/high16 v7, 0x3f80

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    .line 145
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    .line 146
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    .line 147
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    .line 148
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMagneticTargets:Z

    .line 152
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActionCancel:Z

    .line 190
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 197
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$2;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 205
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$3;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 212
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$4;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 228
    const/16 v7, 0x30

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGravity:I

    .line 229
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInitialLayout:Z

    .line 247
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$5;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 264
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    .line 267
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRawLocation:[I

    .line 271
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    .line 273
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    .line 275
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    .line 277
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    .line 285
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTempXY:[I

    .line 288
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    .line 292
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHistoryTouchXY:[I

    .line 299
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    .line 303
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$IntersectAnimationRunnable;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$IntersectAnimationRunnable;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCheckForInterSectAnimation:Ljava/lang/Runnable;

    .line 306
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 313
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTempRect:Landroid/graphics/Rect;

    .line 316
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerDragViewOffsets:[I

    .line 323
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 324
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 326
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCanvas:Landroid/graphics/Canvas;

    .line 334
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTapTimeOut:Z

    .line 361
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    .line 1842
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$7;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 1916
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$9;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1922
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$10;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 1929
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$11;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 2177
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$12;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 398
    .local v5, res:Landroid/content/res/Resources;
    sget-object v7, Lcom/android/internal/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 399
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x1

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInnerRadius:F

    .line 400
    const/16 v7, 0xc

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    .line 401
    const/16 v7, 0xe

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    .line 402
    const/4 v7, 0x7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    .line 405
    const/16 v7, 0xd

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    .line 407
    const/16 v7, 0xf

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFeedbackCount:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFeedbackCount:I

    .line 409
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAllowScaling:Z

    .line 410
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 411
    .local v1, handle:Landroid/util/TypedValue;
    new-instance v8, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v1, :cond_1c7

    iget v7, v1, Landroid/util/TypedValue;->resourceId:I

    :goto_163
    invoke-direct {v8, v5, v7}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 412
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 413
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const/4 v8, 0x4

    invoke-direct {p0, v0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v8

    invoke-direct {v7, v5, v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 416
    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    .line 417
    const/16 v7, 0x8

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMagneticTargets:Z

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMagneticTargets:Z

    .line 419
    const/4 v7, 0x5

    invoke-direct {p0, v0, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v4

    .line 420
    .local v4, pointId:I
    if-eqz v4, :cond_1c9

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 421
    .local v3, pointDrawable:Landroid/graphics/drawable/Drawable;
    :goto_199
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowRadius:F

    .line 423
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 426
    .local v2, outValue:Landroid/util/TypedValue;
    const/16 v7, 0xa

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_1b3

    .line 427
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->internalSetTargetResources(I)V

    .line 429
    :cond_1b3
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v7, :cond_1bf

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1cb

    .line 430
    :cond_1bf
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify at least one target drawable"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 411
    .end local v2           #outValue:Landroid/util/TypedValue;
    .end local v3           #pointDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #pointId:I
    :cond_1c7
    const/4 v7, 0x0

    goto :goto_163

    .line 420
    .restart local v4       #pointId:I
    :cond_1c9
    const/4 v3, 0x0

    goto :goto_199

    .line 434
    .restart local v2       #outValue:Landroid/util/TypedValue;
    .restart local v3       #pointDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1cb
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_1e1

    .line 435
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 436
    .local v6, resourceId:I
    if-nez v6, :cond_1de

    .line 437
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify target descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 439
    :cond_1de
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 443
    .end local v6           #resourceId:I
    :cond_1e1
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_1f7

    .line 444
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 445
    .restart local v6       #resourceId:I
    if-nez v6, :cond_1f4

    .line 446
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify direction descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 448
    :cond_1f4
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 451
    .end local v6           #resourceId:I
    :cond_1f7
    const/4 v7, 0x0

    const/16 v8, 0x30

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGravity:I

    .line 453
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 455
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    if-lez v7, :cond_22e

    const/4 v7, 0x1

    :goto_208
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setVibrateEnabled(Z)V

    .line 457
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->assignDefaultsIfNeeded()V

    .line 459
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/PointCloud;

    invoke-direct {v7, v3}, Lcom/android/internal/policy/impl/keyguard/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    .line 460
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInnerRadius:F

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->makePointCloud(FF)V

    .line 461
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/PointCloud;->glowManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowRadius:F

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;->setRadius(F)V

    .line 463
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 464
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    .line 465
    return-void

    .line 455
    :cond_22e
    const/4 v7, 0x0

    goto :goto_208
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/PointCloud;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimating:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;IIIFF)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Landroid/animation/Animator$AnimatorListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mShouldDoIntersectAnim:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTapTimeOut:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTapTimeOut:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;IFF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->refreshPositions()V

    return-void
.end method

.method private activateHandle(II)V
    .registers 12
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v8, 0x1

    const v4, 0x3ecccccd

    const/high16 v7, 0x3f80

    const/4 v3, 0x0

    .line 1808
    const-string v0, "MediatekGlowPadView"

    const-string v1, "activateHandle"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-nez v0, :cond_ce

    .line 1812
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Lcom/android/internal/policy/impl/keyguard/TargetDrawable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1813
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020062

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1817
    :goto_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 1818
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleX(F)V

    .line 1819
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleY(F)V

    .line 1820
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1821
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1822
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1823
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 1825
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 1826
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 1827
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleX(F)V

    .line 1828
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleY(F)V

    .line 1830
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 1831
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    div-int/lit8 v2, p1, 0x2

    int-to-long v2, v2

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "scaleX"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "scaleY"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1839
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 1840
    return-void

    .line 1815
    :cond_ce
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setEnabled(Z)V

    goto/16 :goto_27
.end method

.method private animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V
    .registers 13
    .parameter "duration"
    .parameter "delay"
    .parameter "x"
    .parameter "y"
    .parameter "onCompleteListener"

    .prologue
    .line 1789
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animDragView duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    if-eqz v0, :cond_99

    .line 1792
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 1793
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    int-to-long v2, p1

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "translationX"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "translationY"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    aput-object p5, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1800
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 1804
    :goto_98
    return-void

    .line 1802
    :cond_99
    const-string v0, "MediatekGlowPadView"

    const-string v1, "animDragView mDragView is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98
.end method

.method private animHandlerBack(II)V
    .registers 9
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v3, 0x0

    .line 2146
    const-string v0, "MediatekGlowPadView"

    const-string v1, "animHandlerBack"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V

    .line 2148
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->deactivateHandle(II)V

    .line 2149
    return-void
.end method

.method private announceTargets()V
    .registers 9

    .prologue
    .line 1495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1496
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1497
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_32

    .line 1498
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1499
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1500
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 1502
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1503
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    .end local v4           #text:Ljava/lang/String;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1506
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3f

    .line 1507
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1509
    :cond_3f
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1256
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1d

    .line 1257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    .line 1259
    :cond_1d
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_38

    .line 1260
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    .line 1263
    :cond_38
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4a

    .line 1264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInnerRadius:F

    .line 1266
    :cond_4a
    return-void
.end method

.method private computeInsets(II)V
    .registers 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    .line 1269
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getLayoutDirection()I

    move-result v1

    .line 1270
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1272
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_2a

    .line 1281
    :pswitch_10
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHorizontalInset:I

    .line 1284
    :goto_14
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_34

    .line 1293
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVerticalInset:I

    .line 1296
    :goto_1d
    return-void

    .line 1274
    :pswitch_1e
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHorizontalInset:I

    goto :goto_14

    .line 1277
    :pswitch_21
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHorizontalInset:I

    goto :goto_14

    .line 1286
    :sswitch_24
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVerticalInset:I

    goto :goto_1d

    .line 1289
    :sswitch_27
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVerticalInset:I

    goto :goto_1d

    .line 1272
    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_1e
        :pswitch_10
        :pswitch_21
    .end packed-switch

    .line 1284
    :sswitch_data_34
    .sparse-switch
        0x30 -> :sswitch_24
        0x50 -> :sswitch_27
    .end sparse-switch
.end method

.method private computeOwnerNewEventViewMotionOffset(Landroid/view/View;)V
    .registers 7
    .parameter "newEventView"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2065
    if-eqz p1, :cond_92

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v0, :cond_92

    .line 2066
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getLocationInLockScreenLayout(Landroid/view/View;[I)V

    .line 2067
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getLocationInLockScreenLayout(Landroid/view/View;[I)V

    .line 2068
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 2069
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 2070
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeOwnerNewEventViewMotionOffset mOwnerLocationInLockScreen[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerLocationInLockScreen[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNewEventViewParentLocationInLockScreen[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNewEventViewLocationInLockScreen[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerNewEventViewOffset[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerNewEventViewOffset[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_92
    return-void
.end method

.method private computeScaleFactor(IIII)F
    .registers 12
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "actualWidth"
    .parameter "actualHeight"

    .prologue
    const/high16 v4, 0x3f80

    .line 1306
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAllowScaling:Z

    if-nez v5, :cond_7

    .line 1342
    :goto_6
    return v4

    .line 1308
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getLayoutDirection()I

    move-result v1

    .line 1309
    .local v1, layoutDirection:I
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGravity:I

    invoke-static {v5, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1311
    .local v0, absoluteGravity:I
    const/high16 v2, 0x3f80

    .line 1312
    .local v2, scaleX:F
    const/high16 v3, 0x3f80

    .line 1318
    .local v3, scaleY:F
    and-int/lit8 v5, v0, 0x7

    packed-switch v5, :pswitch_data_42

    .line 1324
    :pswitch_1a
    if-le p1, p3, :cond_29

    .line 1325
    int-to-float v5, p3

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1330
    :cond_29
    :pswitch_29
    and-int/lit8 v5, v0, 0x70

    sparse-switch v5, :sswitch_data_4c

    .line 1336
    if-le p2, p4, :cond_3d

    .line 1337
    int-to-float v5, p4

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1342
    :cond_3d
    :sswitch_3d
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_6

    .line 1318
    :pswitch_data_42
    .packed-switch 0x3
        :pswitch_29
        :pswitch_1a
        :pswitch_29
    .end packed-switch

    .line 1330
    :sswitch_data_4c
    .sparse-switch
        0x30 -> :sswitch_3d
        0x50 -> :sswitch_3d
    .end sparse-switch
.end method

.method private converDragViewStateCodeToString(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 2334
    packed-switch p1, :pswitch_data_1e

    .line 2352
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2336
    :pswitch_5
    const-string v0, "TOUCH_INIT"

    goto :goto_4

    .line 2338
    :pswitch_8
    const-string v0, "TOUCH_HANDLE_ANIM"

    goto :goto_4

    .line 2340
    :pswitch_b
    const-string v0, "TOUCH_INTERSECT"

    goto :goto_4

    .line 2342
    :pswitch_e
    const-string v0, "TOUCH_DRAGGING"

    goto :goto_4

    .line 2344
    :pswitch_11
    const-string v0, "TOUCH_FLING"

    goto :goto_4

    .line 2346
    :pswitch_14
    const-string v0, "TOUCH_TRIGGER"

    goto :goto_4

    .line 2348
    :pswitch_17
    const-string v0, "TOUCH_ANIM_BACK"

    goto :goto_4

    .line 2350
    :pswitch_1a
    const-string v0, "TOUCH_END"

    goto :goto_4

    .line 2334
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private deactivateHandle(II)V
    .registers 11
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v7, 0x0

    .line 1855
    const-string v0, "MediatekGlowPadView"

    const-string v1, "deactivateHandle"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 1858
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    div-int/lit8 v2, p1, 0x2

    int-to-long v2, v2

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "y"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$8;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;II)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1877
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 1878
    return-void
.end method

.method private deactivateTargets()V
    .registers 5

    .prologue
    .line 620
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 621
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 622
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 623
    .local v2, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 625
    .end local v2           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_19
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    .line 626
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    if-eqz v0, :cond_9

    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 643
    :cond_9
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 3
    .parameter "whichTarget"

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->vibrate()V

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    if-eqz v0, :cond_c

    .line 635
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 637
    :cond_c
    return-void
.end method

.method private dist2(FF)F
    .registers 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1481
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .registers 9

    .prologue
    const/16 v7, 0xc8

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 646
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    .line 647
    .local v0, activeTarget:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_47

    move v1, v2

    .line 649
    .local v1, targetHit:Z
    :goto_b
    if-eqz v1, :cond_49

    .line 650
    const-string v2, "MediatekGlowPadView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish with target hit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->highlightSelected(I)V

    .line 655
    const/16 v2, 0x4b0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v7, v2, v6, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 657
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActionCancel:Z

    if-nez v2, :cond_36

    .line 658
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dispatchTriggerEvent(I)V

    .line 661
    :cond_36
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_3f

    .line 663
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 672
    :cond_3f
    :goto_3f
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActionCancel:Z

    if-nez v2, :cond_46

    .line 673
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setGrabbedState(I)V

    .line 676
    :cond_46
    return-void

    .end local v1           #targetHit:Z
    :cond_47
    move v1, v3

    .line 647
    goto :goto_b

    .line 667
    .restart local v1       #targetHit:Z
    :cond_49
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v7, v3, v6, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 668
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideTargets(ZZ)V

    goto :goto_3f
.end method

.method private doIntersectAnimation()V
    .registers 13

    .prologue
    const/16 v2, 0x32

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    .line 2153
    const-string v0, "MediatekGlowPadView"

    const-string v1, "doIntersectAnimation"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    float-to-int v1, v1

    add-int v6, v0, v1

    .line 2156
    .local v6, targetX:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    float-to-int v1, v1

    add-int v7, v0, v1

    .line 2157
    .local v7, targetY:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v0, v0, v9

    add-int/2addr v6, v0

    .line 2158
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v6, v0

    .line 2159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v0, v0, v11

    add-int/2addr v7, v0

    .line 2160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v7, v0

    .line 2161
    const/16 v1, 0x15e

    int-to-float v3, v6

    int-to-float v4, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V

    .line 2163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 2164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const-wide/16 v3, 0x15e

    const/16 v5, 0x12

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "ease"

    aput-object v8, v5, v9

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v8, v5, v11

    const/4 v8, 0x2

    const-string v9, "delay"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x4

    const-string v8, "x"

    aput-object v8, v5, v2

    const/4 v2, 0x5

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/4 v2, 0x6

    const-string v8, "y"

    aput-object v8, v5, v2

    const/4 v2, 0x7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0x8

    const-string v8, "scaleX"

    aput-object v8, v5, v2

    const/16 v2, 0x9

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xa

    const-string v8, "scaleY"

    aput-object v8, v5, v2

    const/16 v2, 0xb

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xc

    const-string v8, "alpha"

    aput-object v8, v5, v2

    const/16 v2, 0xd

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xe

    const-string v8, "onUpdate"

    aput-object v8, v5, v2

    const/16 v2, 0xf

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v5, v2

    const/16 v2, 0x10

    const-string v8, "onComplete"

    aput-object v8, v5, v2

    const/16 v2, 0x11

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v5, v2

    invoke-static {v1, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 2174
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 2175
    return-void
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;Z)V
    .registers 7
    .parameter "v"
    .parameter "destCanvas"
    .parameter "pruneToDrawable"

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTempRect:Landroid/graphics/Rect;

    .line 2263
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2265
    const/4 v1, 0x0

    .line 2267
    .local v1, textVisible:Z
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 2268
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2269
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2270
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 2271
    return-void
.end method

.method private dump()V
    .registers 4

    .prologue
    .line 473
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlowRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void
.end method

.method private freeFling(FF)V
    .registers 9
    .parameter "velX"
    .parameter "velY"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2141
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeFling velX="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", velY="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    const/4 v1, 0x6

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    .line 2143
    return-void
.end method

.method private getAngle(FI)F
    .registers 5
    .parameter "alpha"
    .parameter "i"

    .prologue
    .line 1443
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    int-to-float v1, p2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1525
    :cond_c
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1526
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 1527
    const-string v0, "MediatekGlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    const/4 v0, 0x0

    .line 1532
    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2a
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .registers 5
    .parameter "a"
    .parameter "id"

    .prologue
    .line 468
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 469
    .local v0, tv:Landroid/util/TypedValue;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_7
.end method

.method private getRingHeight()F
    .registers 5

    .prologue
    .line 1367
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getRingWidth()F
    .registers 5

    .prologue
    .line 1363
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaledGlowRadiusSquared()F
    .registers 4

    .prologue
    .line 1486
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1487
    const v1, 0x3fa66666

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowRadius:F

    mul-float v0, v1, v2

    .line 1491
    .local v0, scaledTapRadius:F
    :goto_13
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->square(F)F

    move-result v1

    return v1

    .line 1489
    .end local v0           #scaledTapRadius:F
    :cond_18
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_13
.end method

.method private getSliceAngle()F
    .registers 5

    .prologue
    .line 1447
    const-wide v0, -0x3fe6de04abbbd2e8L

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1513
    :cond_c
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1514
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 1515
    const-string v0, "MediatekGlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/4 v0, 0x0

    .line 1520
    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2a
.end method

.method private getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;
    .registers 15
    .parameter "zoomIn"
    .parameter "alphaFrom"
    .parameter "alphaTo"
    .parameter "scaleXFrom"
    .parameter "scaleXTo"
    .parameter "scaleYFrom"
    .parameter "scaleYTo"

    .prologue
    .line 2056
    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p2, v5, v6

    const/4 v6, 0x1

    aput p3, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2057
    .local v0, pvhAlphaZoom:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p4, v5, v6

    const/4 v6, 0x1

    aput p5, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2058
    .local v1, pvhScaleXZoom:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p6, v5, v6

    const/4 v6, 0x1

    aput p7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 2059
    .local v2, pvhScaleYZoom:Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2060
    .local v3, targetViewAnimation:Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2061
    return-object v3
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, -0x1

    .line 1085
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    if-eqz v1, :cond_c

    const-string v1, "MediatekGlowPadView"

    const-string v2, "** Handle CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_c
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    .line 1090
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1091
    .local v0, actionIndex:I
    if-ne v0, v3, :cond_17

    const/4 v0, 0x0

    .line 1092
    :cond_17
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1093
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 1062
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1063
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1064
    .local v1, eventX:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1065
    .local v2, eventY:F
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1066
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1067
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    .line 1069
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->doShakeAnimation()V

    .line 1074
    :goto_1c
    return-void

    .line 1071
    :cond_1d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointerId:I

    .line 1072
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlowPosition(FF)V

    goto :goto_1c
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .registers 41
    .parameter "event"

    .prologue
    .line 1096
    const/4 v6, -0x1

    .line 1097
    .local v6, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 1098
    .local v12, historySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 1099
    .local v27, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1100
    .local v17, ntargets:I
    const/16 v31, 0x0

    .line 1101
    .local v31, x:F
    const/16 v32, 0x0

    .line 1102
    .local v32, y:F
    const/4 v5, 0x0

    .line 1103
    .local v5, activeAngle:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointerId:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1105
    .local v4, actionIndex:I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v4, v0, :cond_29

    .line 1194
    :cond_28
    :goto_28
    return-void

    .line 1109
    :cond_29
    const/4 v14, 0x0

    .local v14, k:I
    :goto_2a
    add-int/lit8 v33, v12, 0x1

    move/from16 v0, v33

    if-ge v14, v0, :cond_18b

    .line 1110
    if-ge v14, v12, :cond_16d

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v10

    .line 1112
    .local v10, eventX:F
    :goto_38
    if-ge v14, v12, :cond_175

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v11

    .line 1115
    .local v11, eventY:F
    :goto_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    move/from16 v33, v0

    sub-float v29, v10, v33

    .line 1116
    .local v29, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    move/from16 v33, v0

    sub-float v30, v11, v33

    .line 1117
    .local v30, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v28, v0

    .line 1118
    .local v28, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    cmpl-float v33, v28, v33

    if-lez v33, :cond_17d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    div-float v18, v33, v28

    .line 1119
    .local v18, scale:F
    :goto_7a
    mul-float v15, v29, v18

    .line 1120
    .local v15, limitX:F
    mul-float v16, v30, v18

    .line 1121
    .local v16, limitY:F
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 1123
    .local v8, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-nez v33, :cond_9e

    .line 1124
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 1127
    :cond_9e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_183

    .line 1129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    move/from16 v34, v0

    sub-float v20, v33, v34

    .line 1130
    .local v20, snapRadius:F
    mul-float v19, v20, v20

    .line 1132
    .local v19, snapDistance2:F
    const/4 v13, 0x0

    .local v13, i:I
    :goto_bf
    move/from16 v0, v17

    if-ge v13, v0, :cond_183

    .line 1133
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1135
    .local v21, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    int-to-double v0, v13

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x3fe0

    sub-double v35, v35, v37

    const-wide/high16 v37, 0x4000

    mul-double v35, v35, v37

    const-wide v37, 0x400921fb54442d18L

    mul-double v35, v35, v37

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v37, v0

    div-double v35, v35, v37

    add-double v25, v33, v35

    .line 1136
    .local v25, targetMinRad:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    int-to-double v0, v13

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x3fe0

    add-double v35, v35, v37

    const-wide/high16 v37, 0x4000

    mul-double v35, v35, v37

    const-wide v37, 0x400921fb54442d18L

    mul-double v35, v35, v37

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v37, v0

    div-double v35, v35, v37

    add-double v23, v33, v35

    .line 1137
    .local v23, targetMaxRad:D
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_169

    .line 1138
    cmpl-double v33, v8, v25

    if-lez v33, :cond_125

    cmpg-double v33, v8, v23

    if-lez v33, :cond_151

    :cond_125
    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v8

    cmpl-double v33, v33, v25

    if-lez v33, :cond_13b

    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v8

    cmpg-double v33, v33, v23

    if-lez v33, :cond_151

    :cond_13b
    const-wide v33, 0x401921fb54442d18L

    sub-double v33, v8, v33

    cmpl-double v33, v33, v25

    if-lez v33, :cond_181

    const-wide v33, 0x401921fb54442d18L

    sub-double v33, v8, v33

    cmpg-double v33, v33, v23

    if-gtz v33, :cond_181

    :cond_151
    const/4 v7, 0x1

    .line 1144
    .local v7, angleMatches:Z
    :goto_152
    if-eqz v7, :cond_169

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v33

    cmpl-float v33, v33, v19

    if-lez v33, :cond_169

    .line 1145
    move v6, v13

    .line 1146
    neg-double v0, v8

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    double-to-float v5, v0

    .line 1132
    .end local v7           #angleMatches:Z
    :cond_169
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_bf

    .line 1110
    .end local v8           #angleRad:D
    .end local v10           #eventX:F
    .end local v11           #eventY:F
    .end local v13           #i:I
    .end local v15           #limitX:F
    .end local v16           #limitY:F
    .end local v18           #scale:F
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v23           #targetMaxRad:D
    .end local v25           #targetMinRad:D
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    :cond_16d
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    goto/16 :goto_38

    .line 1112
    .restart local v10       #eventX:F
    :cond_175
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    goto/16 :goto_40

    .line 1118
    .restart local v11       #eventY:F
    .restart local v28       #touchRadius:F
    .restart local v29       #tx:F
    .restart local v30       #ty:F
    :cond_17d
    const/high16 v18, 0x3f80

    goto/16 :goto_7a

    .line 1138
    .restart local v8       #angleRad:D
    .restart local v13       #i:I
    .restart local v15       #limitX:F
    .restart local v16       #limitY:F
    .restart local v18       #scale:F
    .restart local v19       #snapDistance2:F
    .restart local v20       #snapRadius:F
    .restart local v21       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .restart local v23       #targetMaxRad:D
    .restart local v25       #targetMinRad:D
    :cond_181
    const/4 v7, 0x0

    goto :goto_152

    .line 1151
    .end local v13           #i:I
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v23           #targetMaxRad:D
    .end local v25           #targetMinRad:D
    :cond_183
    move/from16 v31, v15

    .line 1152
    move/from16 v32, v16

    .line 1109
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2a

    .line 1155
    .end local v8           #angleRad:D
    .end local v10           #eventX:F
    .end local v11           #eventY:F
    .end local v15           #limitX:F
    .end local v16           #limitY:F
    .end local v18           #scale:F
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    :cond_18b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_28

    .line 1159
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_274

    .line 1160
    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1161
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlowPosition(FF)V

    .line 1167
    :goto_1af
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v0, v6, :cond_26e

    .line 1169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_211

    .line 1170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1171
    .restart local v21       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v33, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->hasState([I)Z

    move-result v33

    if-eqz v33, :cond_1ec

    .line 1172
    sget-object v33, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 1174
    :cond_1ec
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMagneticTargets:Z

    move/from16 v33, v0

    if-eqz v33, :cond_211

    .line 1175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPosition(IFF)V

    .line 1179
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_211
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_26e

    .line 1180
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1181
    .restart local v21       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v33, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->hasState([I)Z

    move-result v33

    if-eqz v33, :cond_234

    .line 1182
    sget-object v33, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 1184
    :cond_234
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMagneticTargets:Z

    move/from16 v33, v0

    if-eqz v33, :cond_251

    .line 1185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v6, v1, v2, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPosition(IFFF)V

    .line 1187
    :cond_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_26e

    .line 1188
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 1189
    .local v22, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1193
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v22           #targetContentDescription:Ljava/lang/String;
    :cond_26e
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    goto/16 :goto_28

    .line 1163
    :cond_274
    const/16 v33, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1164
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlowPosition(FF)V

    goto/16 :goto_1af
.end method

.method private handleTouchCancel(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "event"

    .prologue
    .line 2201
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 2202
    return-void
.end method

.method private handleTrigger(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V
    .registers 4
    .parameter "newEventView"

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    if-eqz v0, :cond_a

    .line 2216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 2218
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->launchActivity(Landroid/content/Intent;)V

    .line 2219
    return-void
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 1077
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    if-eqz v1, :cond_b

    const-string v1, "MediatekGlowPadView"

    const-string v2, "** Handle RELEASE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1079
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointerId:I

    if-ne v1, v2, :cond_23

    .line 1080
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1082
    :cond_23
    return-void
.end method

.method private hideAllNewEventViews()V
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 2024
    const-string v0, "MediatekGlowPadView"

    const-string v1, "hideAllNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2027
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_38

    .line 2028
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2029
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    const/4 v1, 0x1

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2031
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2032
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 2027
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 2034
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_38
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .registers 13
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    const/4 v7, 0x0

    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/PointCloud;->glowManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 617
    return-void
.end method

.method private hideOtherNewEventViews()V
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 1992
    const-string v0, "MediatekGlowPadView"

    const-string v1, "hideOtherNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1995
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3c

    .line 1996
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 1997
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eq v11, v0, :cond_39

    .line 1998
    const/4 v1, 0x1

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2000
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2001
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 1995
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    :cond_39
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 2004
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_3c
    return-void
.end method

.method private hideTargets(ZZ)V
    .registers 20
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 693
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 696
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAnimatingTargets:Z

    .line 697
    if-eqz p1, :cond_91

    const/16 v3, 0xc8

    .line 698
    .local v3, duration:I
    :goto_11
    if-eqz p1, :cond_94

    const/16 v2, 0xc8

    .line 700
    .local v2, delay:I
    :goto_15
    if-eqz p2, :cond_96

    const/high16 v9, 0x3f80

    .line 702
    .local v9, targetScale:F
    :goto_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 703
    .local v6, length:I
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 704
    .local v5, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_24
    if-ge v4, v6, :cond_9a

    .line 705
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 706
    .local v8, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v10}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    int-to-long v11, v3

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "ease"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    const/4 v14, 0x2

    const-string v15, "alpha"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "scaleX"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "scaleY"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "delay"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xa

    const-string v15, "onUpdate"

    aput-object v15, v13, v14

    const/16 v14, 0xb

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v15, v13, v14

    invoke-static {v8, v11, v12, v13}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 704
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 697
    .end local v2           #delay:I
    .end local v3           #duration:I
    .end local v4           #i:I
    .end local v5           #interpolator:Landroid/animation/TimeInterpolator;
    .end local v6           #length:I
    .end local v8           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v9           #targetScale:F
    :cond_91
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 698
    .restart local v3       #duration:I
    :cond_94
    const/4 v2, 0x0

    goto :goto_15

    .line 700
    .restart local v2       #delay:I
    :cond_96
    const v9, 0x3f4ccccd

    goto :goto_19

    .line 716
    .restart local v4       #i:I
    .restart local v5       #interpolator:Landroid/animation/TimeInterpolator;
    .restart local v6       #length:I
    .restart local v9       #targetScale:F
    :cond_9a
    if-eqz p2, :cond_11b

    const/high16 v7, 0x3f80

    .line 718
    .local v7, ringScaleTarget:F
    :goto_9e
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    mul-float/2addr v7, v10

    .line 719
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    int-to-long v12, v3

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "scaleX"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "scaleY"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "onComplete"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13, v14}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 728
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 729
    return-void

    .line 716
    .end local v7           #ringScaleTarget:F
    :cond_11b
    const/high16 v7, 0x3f00

    goto :goto_9e
.end method

.method private hideUnselected(I)V
    .registers 5
    .parameter "active"

    .prologue
    .line 685
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 686
    if-eq v0, p1, :cond_17

    .line 687
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 685
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    :cond_1a
    return-void
.end method

.method private highlightSelected(I)V
    .registers 4
    .parameter "activeTarget"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 681
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideUnselected(I)V

    .line 682
    return-void
.end method

.method private hitInCenterRing(FF)Z
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1758
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v2

    .line 1759
    .local v0, tx:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v2

    .line 1760
    .local v1, ty:F
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_18

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getScaledGlowRadiusSquared()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1a

    :cond_18
    const/4 v2, 0x1

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1685
    .local v0, action:I
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchIntercepted:Z

    .line 1686
    .local v3, shouldIntercept:Z
    packed-switch v0, :pswitch_data_44

    .line 1698
    :goto_b
    :pswitch_b
    if-eqz v3, :cond_41

    .line 1699
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1702
    .local v1, containerEvent:Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    aget v5, v6, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    aget v4, v6, v4

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1703
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1704
    .local v2, retValue:Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1707
    .end local v1           #containerEvent:Landroid/view/MotionEvent;
    .end local v2           #retValue:Z
    :goto_27
    return v2

    .line 1688
    :pswitch_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hitInCenterRing(FF)Z

    move-result v6

    if-nez v6, :cond_3b

    move v3, v4

    .line 1689
    :goto_37
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setShouldIntercept(Z)V

    goto :goto_b

    :cond_3b
    move v3, v5

    .line 1688
    goto :goto_37

    .line 1693
    :pswitch_3d
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setShouldIntercept(Z)V

    goto :goto_b

    :cond_41
    move v2, v5

    .line 1707
    goto :goto_27

    .line 1686
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_28
        :pswitch_3d
        :pswitch_b
        :pswitch_3d
    .end packed-switch
.end method

.method private internalSetTargetResources(I)V
    .registers 10
    .parameter "resourceId"

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 787
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 788
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetResourceId:I

    .line 790
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v3

    .line 791
    .local v3, maxWidth:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v2

    .line 792
    .local v2, maxHeight:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 793
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v0, :cond_34

    .line 794
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 795
    .local v4, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 796
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 793
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 798
    .end local v4           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_34
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_3c

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_44

    .line 799
    :cond_3c
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    .line 800
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    .line 801
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->requestLayout()V

    .line 806
    :goto_43
    return-void

    .line 803
    :cond_44
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPositions(FF)V

    .line 804
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_43
.end method

.method private invlidateGlobalRegion(Landroid/view/View;)V
    .registers 11
    .parameter "childView"

    .prologue
    const/4 v6, 0x0

    .line 2185
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 2186
    .local v3, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2187
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2188
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 2189
    move-object v2, p0

    .line 2190
    .local v2, view:Landroid/view/View;
    :goto_24
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_63

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_63

    .line 2191
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 2192
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2193
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_24

    .line 2198
    :cond_63
    return-void
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 2222
    const/high16 v1, 0x3400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2227
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_12

    .line 2232
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_11} :catch_1b

    .line 2236
    :goto_11
    return-void

    .line 2228
    :catch_12
    move-exception v0

    .line 2229
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediatekGlowPadView"

    const-string v2, "can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2233
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2234
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "MediatekGlowPadView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity not found for intent + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .registers 8
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1536
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1537
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1538
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1539
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v2, :cond_22

    .line 1540
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1541
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1543
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1544
    return-object v4
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .registers 10
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 773
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 774
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 775
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 776
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v1, :cond_2d

    .line 777
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 778
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v6, :cond_2b

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_22
    invoke-direct {v5, v4, v7}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 779
    .local v5, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 778
    .end local v5           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_2b
    const/4 v7, 0x0

    goto :goto_22

    .line 781
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_2d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 782
    return-object v2
.end method

.method private onDragMove(II)V
    .registers 19
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2106
    move/from16 v0, p1

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v10, v12, v13

    .line 2107
    .local v10, tx:F
    move/from16 v0, p2

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v11, v12, v13

    .line 2108
    .local v11, ty:F
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v9, v12

    .line 2110
    .local v9, touchRadius:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    const/high16 v13, 0x3f00

    mul-float v1, v12, v13

    .line 2111
    .local v1, FakeHandleRadius:F
    cmpl-float v12, v9, v1

    if-lez v12, :cond_118

    div-float v5, v1, v9

    .line 2112
    .local v5, scale:F
    :goto_2c
    mul-float v12, v10, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    .line 2113
    mul-float v12, v11, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    .line 2114
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateHandleDrawablePositions(Z)V

    .line 2116
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 2117
    .local v2, currentFakeHandleRadius:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragSnapMargin:F

    add-float v7, v2, v12

    .line 2118
    .local v7, snapRadius:F
    mul-float v6, v7, v7

    .line 2119
    .local v6, snapDistance2:F
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v12

    cmpg-float v12, v12, v6

    if-gez v12, :cond_11c

    .line 2120
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    .line 2121
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v3, v12, v13

    .line 2122
    .local v3, dragViewX:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v4, v12, v13

    .line 2123
    .local v4, dragViewY:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v13, v3

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v4

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/policy/impl/keyguard/DragView;->move(FF)V

    .line 2124
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateHandleDrawablePositions(Z)V

    .line 2125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getState()[I

    move-result-object v8

    .line 2126
    .local v8, state:[I
    if-eqz v8, :cond_da

    sget-object v12, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    invoke-static {v8, v12}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v12

    if-nez v12, :cond_da

    .line 2127
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->vibrate()V

    .line 2128
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v13, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2134
    .end local v3           #dragViewX:I
    .end local v4           #dragViewY:I
    .end local v8           #state:[I
    :cond_da
    :goto_da
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->invalidate()V

    .line 2136
    const-string v12, "MediatekGlowPadView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDragMove mTouchTriggered="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", x="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", y="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    return-void

    .line 2111
    .end local v2           #currentFakeHandleRadius:F
    .end local v5           #scale:F
    .end local v6           #snapDistance2:F
    .end local v7           #snapRadius:F
    :cond_118
    const/high16 v5, 0x3f80

    goto/16 :goto_2c

    .line 2131
    .restart local v2       #currentFakeHandleRadius:F
    .restart local v5       #scale:F
    .restart local v6       #snapDistance2:F
    .restart local v7       #snapRadius:F
    :cond_11c
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    .line 2132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v13, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    goto :goto_da
.end method

.method private onDragStart(II)V
    .registers 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v9, 0x3f00

    .line 2081
    const-string v7, "MediatekGlowPadView"

    const-string v8, "onDragStart"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    int-to-float v7, p1

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/DragView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v1, v7, v8

    .line 2085
    .local v1, dragTargetCenterX:F
    int-to-float v7, p2

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/DragView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v2, v7, v8

    .line 2086
    .local v2, dragTargetCenterY:F
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v6, v7

    .line 2087
    .local v6, touchRadius:F
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float v0, v7, v9

    .line 2088
    .local v0, currentOuterRadius:F
    cmpl-float v7, v6, v0

    if-lez v7, :cond_5b

    div-float v5, v0, v6

    .line 2089
    .local v5, scale:F
    :goto_39
    mul-float v3, v1, v5

    .line 2090
    .local v3, limitX:F
    mul-float v4, v2, v5

    .line 2093
    .local v4, limitY:F
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    float-to-int v8, v3

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 2094
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    float-to-int v8, v4

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 2096
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 2097
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 2099
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    .line 2100
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    .line 2101
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->invalidate()V

    .line 2102
    return-void

    .line 2088
    .end local v3           #limitX:F
    .end local v4           #limitY:F
    .end local v5           #scale:F
    :cond_5b
    const/high16 v5, 0x3f80

    goto :goto_39
.end method

.method private refreshPositions()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1714
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    if-nez v0, :cond_7

    .line 1722
    :goto_6
    return-void

    .line 1718
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1719
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRawLocation:[I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getLocationOnScreen([I)V

    .line 1720
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRawLocation:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 1721
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRawLocation:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    goto :goto_6
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .registers 10
    .parameter "res"
    .parameter "existingResourceId"
    .parameter "newResourceId"

    .prologue
    .line 1588
    if-eqz p2, :cond_4

    if-nez p3, :cond_6

    .line 1589
    :cond_4
    const/4 v2, 0x0

    .line 1607
    :cond_5
    :goto_5
    return v2

    .line 1592
    :cond_6
    const/4 v2, 0x0

    .line 1593
    .local v2, result:Z
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1594
    .local v0, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1595
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v3, :cond_25

    .line 1596
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1597
    .local v4, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_22

    .line 1598
    invoke-virtual {v4, p1, p3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1599
    const/4 v2, 0x1

    .line 1595
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1603
    .end local v4           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_25
    if-eqz v2, :cond_5

    .line 1604
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->requestLayout()V

    goto :goto_5
.end method

.method private resolveMeasured(II)I
    .registers 6
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 531
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 540
    move v0, v1

    .line 542
    :goto_d
    return v0

    .line 533
    :sswitch_e
    move v0, p2

    .line 534
    goto :goto_d

    .line 536
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 537
    goto :goto_d

    .line 531
    nop

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 1223
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1c

    .line 1224
    if-eqz p1, :cond_a

    .line 1225
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->vibrate()V

    .line 1227
    :cond_a
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGrabbedState:I

    .line 1228
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1c

    .line 1229
    if-nez p1, :cond_1d

    .line 1230
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 1234
    :goto_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1237
    :cond_1c
    return-void

    .line 1232
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_17
.end method

.method private setShouldIntercept(Z)V
    .registers 2
    .parameter "shouldIntercept"

    .prologue
    .line 1753
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchIntercepted:Z

    .line 1754
    return-void
.end method

.method private showAllNewEventViews()V
    .registers 13

    .prologue
    const/high16 v3, 0x3f80

    .line 2038
    const-string v0, "MediatekGlowPadView"

    const-string v1, "showAllNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2041
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_10
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_39

    .line 2042
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2043
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2045
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2046
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 2041
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 2048
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_39
    return-void
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .registers 12
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 596
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/PointCloud;->glowManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 603
    return-void
.end method

.method private showOtherNewEventViews()V
    .registers 13

    .prologue
    const/high16 v3, 0x3f80

    .line 2008
    const-string v0, "MediatekGlowPadView"

    const-string v1, "showOtherNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2011
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_10
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3d

    .line 2012
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2013
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eq v11, v0, :cond_3a

    .line 2014
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2016
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2017
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 2011
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    :cond_3a
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 2020
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_3d
    return-void
.end method

.method private showTargets(Z)V
    .registers 15
    .parameter "animate"

    .prologue
    .line 732
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 733
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAnimatingTargets:Z

    .line 734
    if-eqz p1, :cond_84

    const/16 v0, 0x32

    .line 735
    .local v0, delay:I
    :goto_b
    if-eqz p1, :cond_86

    const/16 v1, 0xc8

    .line 736
    .local v1, duration:I
    :goto_f
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 737
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v3, :cond_88

    .line 738
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 739
    .local v5, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 740
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    int-to-long v7, v1

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ease"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "alpha"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "scaleX"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "scaleY"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "delay"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "onUpdate"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v11, v9, v10

    invoke-static {v5, v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 737
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 734
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_84
    const/4 v0, 0x0

    goto :goto_b

    .line 735
    .restart local v0       #delay:I
    :cond_86
    const/4 v1, 0x0

    goto :goto_f

    .line 749
    .restart local v1       #duration:I
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_88
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    const/high16 v7, 0x3f80

    mul-float v4, v6, v7

    .line 750
    .local v4, ringScale:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    int-to-long v8, v1

    const/16 v10, 0xe

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/high16 v12, 0x3f80

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string v12, "onComplete"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 760
    return-void
.end method

.method private square(F)F
    .registers 3
    .parameter "d"

    .prologue
    .line 1477
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .registers 9
    .parameter "duration"
    .parameter "alpha"

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 969
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_4e

    if-eqz v0, :cond_4e

    .line 970
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    if-eqz v1, :cond_15

    .line 971
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 973
    :cond_15
    int-to-long v1, p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ease"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "alpha"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/high16 v5, 0x437f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "delay"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 977
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 979
    :cond_4e
    return-void
.end method

.method private startWaveAnimation()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 928
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 929
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setAlpha(F)V

    .line 930
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setRadius(F)V

    .line 931
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$6;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 943
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 944
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .registers 3

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 924
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setAlpha(F)V

    .line 925
    return-void
.end method

.method private switchDragViewToState(IIIFF)V
    .registers 16
    .parameter "state"
    .parameter "eventX"
    .parameter "eventY"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2357
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState enter mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", new state="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", eventX="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", eventY="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_92

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimating:Z

    if-eqz v0, :cond_92

    .line 2360
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    .line 2361
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    iput p2, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;->eventX:I

    .line 2362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    iput p3, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;->eventY:I

    .line 2363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    iput p4, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;->velocityX:F

    .line 2364
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    iput p5, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;->velocityY:F

    .line 2365
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState exit, mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    :goto_91
    return-void

    .line 2368
    :cond_92
    packed-switch p1, :pswitch_data_218

    .line 2454
    :goto_95
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState exit, mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 2370
    :pswitch_bc
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 2371
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewDoingTouch:Z

    .line 2373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimating:Z

    .line 2374
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2375
    .local v2, b:Landroid/graphics/Bitmap;
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewInLockScreenX:I

    .line 2376
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewInLockScreenY:I

    .line 2378
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewInLockScreenX:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    add-int v3, v0, v1

    .line 2379
    .local v3, registrationX:I
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewInLockScreenY:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x1

    aget v1, v1, v5

    add-int v4, v0, v1

    .line 2381
    .local v4, registrationY:I
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchDown registrationX="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", registrationY="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/DragView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/policy/impl/keyguard/DragView;-><init>(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;Landroid/graphics/Bitmap;IIIIIIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    .line 2386
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/DragView;->show(II)V

    .line 2388
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->onDragStart(II)V

    .line 2391
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setVisibility(I)V

    .line 2392
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideOtherNewEventViews()V

    .line 2394
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v3           #registrationX:I
    .end local v4           #registrationY:I
    :pswitch_14f
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimating:Z

    .line 2396
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->activateHandle(II)V

    goto/16 :goto_95

    .line 2399
    :pswitch_15d
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2400
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->doIntersectAnimation()V

    goto/16 :goto_95

    .line 2403
    :pswitch_165
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16a

    .line 2406
    :cond_16a
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2407
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v5, p3

    int-to-float v5, v5

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/DragView;->move(FF)V

    .line 2408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->onDragMove(II)V

    goto/16 :goto_95

    .line 2412
    :pswitch_19f
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2413
    invoke-direct {p0, p4, p5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->freeFling(FF)V

    goto/16 :goto_95

    .line 2418
    :pswitch_1a7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    .line 2419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2420
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2421
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showOtherNewEventViews()V

    .line 2422
    const/16 v0, 0xc8

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->animHandlerBack(II)V

    goto/16 :goto_95

    .line 2425
    :pswitch_1c0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2426
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleTrigger(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V

    goto/16 :goto_95

    .line 2430
    :pswitch_1ca
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v0, :cond_1db

    .line 2431
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2432
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setEnabled(Z)V

    .line 2434
    :cond_1db
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v0, :cond_1e6

    .line 2435
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2438
    :cond_1e6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eqz v0, :cond_1f3

    .line 2439
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setVisibility(I)V

    .line 2440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2442
    :cond_1f3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    if-eqz v0, :cond_1ff

    .line 2443
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/DragView;->remove()V

    .line 2444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    .line 2446
    :cond_1ff
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 2447
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 2448
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    .line 2449
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    .line 2450
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2451
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    goto/16 :goto_95

    .line 2368
    nop

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_14f
        :pswitch_15d
        :pswitch_165
        :pswitch_19f
        :pswitch_1c0
        :pswitch_1a7
        :pswitch_1ca
    .end packed-switch
.end method

.method private switchToState(IFF)V
    .registers 10
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 546
    packed-switch p1, :pswitch_data_6e

    .line 591
    :cond_9
    :goto_9
    return-void

    .line 548
    :pswitch_a
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 549
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->deactivateTargets()V

    .line 550
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 551
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    goto :goto_9

    .line 557
    :pswitch_22
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 558
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_9

    .line 562
    :pswitch_28
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 564
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->deactivateTargets()V

    .line 565
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showTargets(Z)V

    .line 566
    const/16 v0, 0xc8

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    .line 567
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setGrabbedState(I)V

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 569
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->announceTargets()V

    goto :goto_9

    .line 574
    :pswitch_4e
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 576
    invoke-direct {p0, v1, v1, v3, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_9

    .line 581
    :pswitch_5a
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 583
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_9

    .line 587
    :pswitch_66
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 588
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->doFinish()V

    goto :goto_9

    .line 546
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_22
        :pswitch_28
        :pswitch_4e
        :pswitch_5a
        :pswitch_66
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 1240
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v3

    .line 1241
    .local v0, tx:F
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v3

    .line 1242
    .local v1, ty:F
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-nez v3, :cond_19

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_31

    .line 1243
    :cond_19
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v3, :cond_20

    .line 1244
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideAllNewEventViews()V

    .line 1246
    :cond_20
    const-string v3, "MediatekGlowPadView"

    const-string v4, "** Handle HIT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1248
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlowPosition(FF)V

    .line 1249
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    .line 1252
    :goto_30
    return v2

    :cond_31
    const/4 v2, 0x0

    goto :goto_30
.end method

.method private updateGlobalLayoutListenr(Z)V
    .registers 3
    .parameter "shouldEnable"

    .prologue
    .line 1741
    if-eqz p1, :cond_f

    .line 1742
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLayoutListenerSet:Z

    if-nez v0, :cond_e

    .line 1743
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLayoutListenerSet:Z

    .line 1750
    :cond_e
    :goto_e
    return-void

    .line 1747
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLayoutListenerSet:Z

    goto :goto_e
.end method

.method private updateGlowPosition(FF)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x3f80

    .line 1053
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getX()F

    move-result v2

    sub-float v0, p1, v2

    .line 1054
    .local v0, dx:F
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getY()F

    move-result v2

    sub-float v1, p2, v2

    .line 1055
    .local v1, dy:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v0, v2

    .line 1056
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    .line 1057
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/PointCloud;->glowManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getX()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;->setX(F)V

    .line 1058
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/PointCloud;->glowManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;->setY(F)V

    .line 1059
    return-void
.end method

.method private updateHandleDrawablePositions(Z)V
    .registers 13
    .parameter "force"

    .prologue
    .line 1881
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_6

    .line 1914
    :cond_5
    :goto_5
    return-void

    .line 1884
    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v8, :cond_5

    .line 1885
    if-nez p1, :cond_ce

    .line 1886
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getX()F

    move-result v6

    .line 1887
    .local v6, oldX:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getY()F

    move-result v7

    .line 1888
    .local v7, oldY:F
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    sub-float/2addr v8, v6

    float-to-int v0, v8

    .line 1889
    .local v0, deltaX:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    sub-float/2addr v8, v7

    float-to-int v1, v8

    .line 1890
    .local v1, deltaY:I
    mul-int v8, v0, v0

    mul-int v9, v1, v1

    add-int v3, v8, v9

    .line 1891
    .local v3, distanceSqure:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlopSqure:I

    if-le v3, v8, :cond_c5

    .line 1892
    int-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 1893
    .local v2, distance:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlop:I

    mul-int/2addr v8, v0

    div-int v4, v8, v2

    .line 1894
    .local v4, offsetX:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlop:I

    mul-int/2addr v8, v1

    div-int v5, v8, v2

    .line 1895
    .local v5, offsetY:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    int-to-float v9, v4

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1896
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    int-to-float v9, v5

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 1898
    const-string v8, "MediatekGlowPadView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oldX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", oldY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deltaX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deltaY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", distance="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mFakeHandleRealX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mFakeHandleRealY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->invalidate()V

    .line 1911
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #distance:I
    .end local v3           #distanceSqure:I
    .end local v4           #offsetX:I
    .end local v5           #offsetY:I
    .end local v6           #oldX:F
    .end local v7           #oldY:F
    :goto_b5
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setX(F)V

    .line 1912
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setY(F)V

    goto/16 :goto_5

    .line 1904
    .restart local v0       #deltaX:I
    .restart local v1       #deltaY:I
    .restart local v3       #distanceSqure:I
    .restart local v6       #oldX:F
    .restart local v7       #oldY:F
    :cond_c5
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1905
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    goto :goto_b5

    .line 1908
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v3           #distanceSqure:I
    .end local v6           #oldX:F
    .end local v7           #oldY:F
    :cond_ce
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1909
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    goto :goto_b5
.end method

.method private updatePointCloudPosition(FF)V
    .registers 4
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->setCenter(FF)V

    .line 1452
    return-void
.end method

.method private updateTargetPosition(IFF)V
    .registers 6
    .parameter "i"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1410
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getSliceAngle()F

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getAngle(FI)F

    move-result v0

    .line 1411
    .local v0, angle:F
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPosition(IFFF)V

    .line 1412
    return-void
.end method

.method private updateTargetPosition(IFFF)V
    .registers 11
    .parameter "i"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"

    .prologue
    const/high16 v5, 0x4000

    .line 1415
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getRingWidth()F

    move-result v4

    div-float v0, v4, v5

    .line 1416
    .local v0, placementRadiusX:F
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getRingHeight()F

    move-result v4

    div-float v1, v4, v5

    .line 1417
    .local v1, placementRadiusY:F
    if-ltz p1, :cond_32

    .line 1418
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1419
    .local v3, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1420
    .local v2, targetIcon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1421
    invoke-virtual {v2, p3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1422
    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setX(F)V

    .line 1423
    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setY(F)V

    .line 1425
    .end local v2           #targetIcon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v3           #targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    :cond_32
    return-void
.end method

.method private updateTargetPositions(FF)V
    .registers 4
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1428
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPositions(FFZ)V

    .line 1429
    return-void
.end method

.method private updateTargetPositions(FFZ)V
    .registers 8
    .parameter "centerX"
    .parameter "centerY"
    .parameter "skipActive"

    .prologue
    .line 1432
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1433
    .local v2, size:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getSliceAngle()F

    move-result v0

    .line 1435
    .local v0, alpha:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v2, :cond_1d

    .line 1436
    if-eqz p3, :cond_13

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    if-eq v1, v3, :cond_1a

    .line 1437
    :cond_13
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getAngle(FI)F

    move-result v3

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPosition(IFFF)V

    .line 1435
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1440
    :cond_1d
    return-void
.end method

.method private vibrate()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 763
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1f

    .line 766
    .local v0, hapticEnabled:Z
    :goto_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1e

    .line 767
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 769
    :cond_1e
    return-void

    .line 763
    .end local v0           #hapticEnabled:Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "v"
    .parameter "canvas"

    .prologue
    .line 2245
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2247
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2248
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;Z)V

    .line 2249
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2251
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1675
    const/4 v0, 0x0

    .line 1676
    .local v0, handled:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 1677
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1679
    :cond_9
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :goto_c
    return v1

    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_c
.end method

.method public doShakeAnimation()V
    .registers 2

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v0, :cond_9

    .line 2469
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->beginShakeAnimation()V

    .line 2471
    :cond_9
    return-void
.end method

.method public getDirectionDescriptionsResourceId()I
    .registers 2

    .prologue
    .line 878
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getResourceIdForTarget(I)I
    .registers 5
    .parameter "index"

    .prologue
    .line 1552
    if-ltz p1, :cond_13

    .line 1553
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1554
    .local v0, drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    .line 1558
    .end local v0           #drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .local v1, resId:I
    :goto_d
    return v1

    .line 1554
    .end local v1           #resId:I
    .restart local v0       #drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_d

    .line 1556
    .end local v0           #drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_13
    const/4 v1, -0x1

    .restart local v1       #resId:I
    goto :goto_d
.end method

.method protected getScaledSuggestedMinimumHeight()I
    .registers 5

    .prologue
    .line 523
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getScaledSuggestedMinimumWidth()I
    .registers 5

    .prologue
    .line 515
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .registers 2

    .prologue
    .line 857
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .registers 5
    .parameter "resourceId"

    .prologue
    .line 1577
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 1578
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1579
    .local v1, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_18

    .line 1583
    .end local v0           #i:I
    .end local v1           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :goto_17
    return v0

    .line 1577
    .restart local v0       #i:I
    .restart local v1       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1583
    .end local v1           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public getTargetResourceId()I
    .registers 2

    .prologue
    .line 836
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetResourceId:I

    return v0
.end method

.method public getWaveCenterX()F
    .registers 2

    .prologue
    .line 2459
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    return v0
.end method

.method public getWaveCenterY()F
    .registers 2

    .prologue
    .line 2464
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1727
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1728
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    .line 1729
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1734
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1735
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    .line 1736
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setTouchRecepient(Landroid/view/View;)V

    .line 1737
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 1456
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1457
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1458
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1459
    .local v1, ntargets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v1, :cond_23

    .line 1460
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1461
    .local v2, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v2, :cond_20

    .line 1462
    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1459
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1465
    .end local v2           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_23
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1466
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v3, :cond_35

    .line 1467
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1468
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateHandleDrawablePositions(Z)V

    .line 1470
    :cond_35
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1198
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1200
    .local v0, action:I
    packed-switch v0, :pswitch_data_2c

    .line 1211
    :goto_14
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1212
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1214
    .end local v0           #action:I
    :cond_1a
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1215
    return v2

    .line 1202
    .restart local v0       #action:I
    :pswitch_1e
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_14

    .line 1205
    :pswitch_23
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_14

    .line 1208
    :pswitch_28
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_14

    .line 1200
    :pswitch_data_2c
    .packed-switch 0x7
        :pswitch_23
        :pswitch_14
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1372
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1373
    sub-int v5, p4, p2

    .line 1374
    .local v5, width:I
    sub-int v0, p5, p3

    .line 1378
    .local v0, height:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getRingWidth()F

    move-result v4

    .line 1379
    .local v4, placementWidth:F
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getRingHeight()F

    move-result v3

    .line 1380
    .local v3, placementHeight:F
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHorizontalInset:I

    int-to-float v6, v6

    int-to-float v7, v5

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1382
    .local v1, newWaveCenterX:F
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVerticalInset:I

    int-to-float v6, v6

    int-to-float v7, v0

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1385
    .local v2, newWaveCenterY:F
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInitialLayout:Z

    if-eqz v6, :cond_40

    .line 1386
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->stopAndHideWaveAnimation()V

    .line 1387
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideTargets(ZZ)V

    .line 1388
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInitialLayout:Z

    .line 1391
    :cond_40
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1392
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1394
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->setScale(F)V

    .line 1396
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1397
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1399
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPositions(FF)V

    .line 1400
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updatePointCloudPosition(FF)V

    .line 1401
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlowPosition(FF)V

    .line 1403
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    .line 1404
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    .line 1406
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dump()V

    .line 1407
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 1348
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 1349
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 1350
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 1352
    .local v0, computedHeight:I
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->computeScaleFactor(IIII)F

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    .line 1355
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getScaledSuggestedMinimumWidth()I

    move-result v5

    .line 1356
    .local v5, scaledWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getScaledSuggestedMinimumHeight()I

    move-result v4

    .line 1358
    .local v4, scaledHeight:I
    sub-int v6, v1, v5

    sub-int v7, v0, v4

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->computeInsets(II)V

    .line 1359
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setMeasuredDimension(II)V

    .line 1360
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x6

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1943
    const-string v5, "MediatekGlowPadView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTouch event.action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getX()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getY()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getRawX()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getRawY()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", v="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mCurrentNewEventView="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mDragViewDoingTouch="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewDoingTouch:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mGlowPadViewState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    if-eqz v5, :cond_8b

    .line 1987
    .end local p1
    :cond_8a
    :goto_8a
    return v0

    .restart local p1
    :cond_8b
    move-object v8, p1

    .line 1950
    check-cast v8, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 1951
    .local v8, newEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eqz v5, :cond_96

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-ne p1, v5, :cond_8a

    .line 1954
    :cond_96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 1955
    .local v6, action:I
    if-nez v6, :cond_c5

    .line 1956
    check-cast p1, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 1958
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    neg-float v10, v10

    float-to-int v10, v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    neg-float v11, v11

    float-to-int v11, v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 1960
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->computeOwnerNewEventViewMotionOffset(Landroid/view/View;)V

    .line 1961
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v0, v10, v0

    neg-int v0, v0

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v10, v10, v9

    neg-int v10, v10

    invoke-virtual {v5, v0, v10}, Landroid/graphics/Point;->offset(II)V

    .line 1963
    :cond_c5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p2, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1965
    const-string v0, "MediatekGlowPadView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouch event.getX()="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", event.getY()="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mPoint.x="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mPoint.y="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 1970
    .local v7, handled:Z
    const-string v0, "MediatekGlowPadView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouch handled="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mTapTimeOut="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTapTimeOut:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mTouchTriggered="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    if-nez v7, :cond_166

    .line 1973
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 1974
    .local v2, eventX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 1975
    .local v3, eventY:I
    if-ne v6, v9, :cond_16f

    .line 1976
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    if-eqz v0, :cond_169

    .line 1977
    const/4 v1, 0x5

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    .end local v2           #eventX:I
    .end local v3           #eventY:I
    :cond_166
    :goto_166
    move v0, v9

    .line 1987
    goto/16 :goto_8a

    .restart local v2       #eventX:I
    .restart local v3       #eventY:I
    :cond_169
    move-object v0, p0

    move v5, v4

    .line 1979
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    goto :goto_166

    .line 1981
    :cond_16f
    const/4 v0, 0x3

    if-ne v6, v0, :cond_166

    .line 1982
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    const/4 v5, 0x7

    if-eq v0, v5, :cond_166

    move-object v0, p0

    move v5, v4

    .line 1983
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    goto :goto_166
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 983
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 986
    .local v0, action:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchDropped:Z

    .line 987
    .local v2, shouldDropTouch:Z
    packed-switch v0, :pswitch_data_92

    .line 1002
    :cond_b
    :goto_b
    :pswitch_b
    if-eqz v2, :cond_38

    .line 1049
    :cond_d
    :goto_d
    return v3

    .line 990
    :pswitch_e
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    if-ltz v4, :cond_b

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    const/4 v5, 0x7

    if-ge v4, v5, :cond_b

    .line 991
    const-string v4, "MediatekGlowPadView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent return directly mDragViewState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchDropped:Z

    .line 993
    const/4 v2, 0x1

    goto :goto_b

    .line 999
    :pswitch_35
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchDropped:Z

    goto :goto_b

    .line 1006
    :cond_38
    const/4 v1, 0x0

    .line 1007
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_a4

    .line 1048
    :cond_3c
    :goto_3c
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->invalidate()V

    .line 1049
    if-nez v1, :cond_d

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_d

    .line 1010
    :pswitch_46
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** DOWN ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 1012
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1013
    const/4 v1, 0x1

    .line 1014
    goto :goto_3c

    .line 1017
    :pswitch_55
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** MOVE ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1019
    const/4 v1, 0x1

    .line 1020
    goto :goto_3c

    .line 1024
    :pswitch_61
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** UP ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActionCancel:Z

    .line 1027
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1028
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 1029
    const/4 v1, 0x1

    .line 1030
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v4, :cond_3c

    .line 1031
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showAllNewEventViews()V

    goto :goto_3c

    .line 1036
    :pswitch_79
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** CANCEL ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActionCancel:Z

    .line 1039
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1040
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 1041
    const/4 v1, 0x1

    .line 1042
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v4, :cond_3c

    .line 1043
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showAllNewEventViews()V

    goto :goto_3c

    .line 987
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_e
        :pswitch_35
        :pswitch_b
        :pswitch_35
        :pswitch_b
        :pswitch_e
        :pswitch_35
    .end packed-switch

    .line 1007
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_46
        :pswitch_61
        :pswitch_55
        :pswitch_79
        :pswitch_3c
        :pswitch_46
        :pswitch_61
    .end packed-switch
.end method

.method public ping()V
    .registers 1

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->pingInternal()V

    .line 900
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->doShakeAnimation()V

    .line 901
    return-void
.end method

.method public pingInternal()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 904
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFeedbackCount:I

    if-lez v4, :cond_34

    .line 905
    const/4 v0, 0x1

    .line 906
    .local v0, doWaveAnimation:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 909
    .local v3, waveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->size()I

    move-result v4

    if-lez v4, :cond_2f

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 910
    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    .line 911
    .local v1, t:J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v1, v4

    if-gez v4, :cond_2f

    .line 912
    const/4 v0, 0x0

    .line 916
    .end local v1           #t:J
    :cond_2f
    if-eqz v0, :cond_34

    .line 917
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->startWaveAnimation()V

    .line 920
    .end local v0           #doWaveAnimation:Z
    .end local v3           #waveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;
    :cond_34
    return-void
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 14
    .parameter "component"
    .parameter "name"
    .parameter "existingResId"

    .prologue
    .line 1620
    if-nez p3, :cond_4

    const/4 v5, 0x0

    .line 1648
    :cond_3
    :goto_3
    return v5

    .line 1622
    :cond_4
    const/4 v5, 0x0

    .line 1623
    .local v5, replaced:Z
    if-eqz p1, :cond_25

    .line 1625
    :try_start_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1627
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1629
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_25

    .line 1630
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1631
    .local v1, iconResId:I
    if-eqz v1, :cond_25

    .line 1632
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1633
    .local v6, res:Landroid/content/res/Resources;
    invoke-direct {p0, v6, p3, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_24} :catch_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_24} :catch_55

    move-result v5

    .line 1644
    .end local v1           #iconResId:I
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_25
    :goto_25
    if-nez v5, :cond_3

    .line 1646
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, p3, p3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    goto :goto_3

    .line 1636
    :catch_31
    move-exception v0

    .line 1637
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "MediatekGlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1639
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_55
    move-exception v3

    .line 1640
    .local v3, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "MediatekGlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method public reset(Z)V
    .registers 8
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 954
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 955
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    .line 956
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->stopAndHideWaveAnimation()V

    .line 957
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideTargets(ZZ)V

    .line 958
    const/4 v0, 0x0

    invoke-direct {p0, v2, v2, v4, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 960
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 961
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 962
    const/4 v1, 0x7

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    .line 964
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/Tweener;->reset()V

    .line 965
    return-void
.end method

.method public resumeAnimations()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 495
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 866
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptionsResourceId:I

    .line 867
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 868
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 870
    :cond_b
    return-void
.end method

.method public setEnableTarget(IZ)V
    .registers 6
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 1562
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 1563
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1564
    .local v1, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 1565
    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setEnabled(Z)V

    .line 1569
    .end local v1           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1a
    return-void

    .line 1562
    .restart local v1       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setHandleDrawableImage(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 815
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v1, :cond_d

    .line 816
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 818
    :cond_d
    return-void
.end method

.method public setLockScreenView(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;)V
    .registers 2
    .parameter "lockScreenLayout"

    .prologue
    .line 1764
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    .line 1765
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    .line 1474
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 845
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptionsResourceId:I

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 849
    :cond_b
    return-void
.end method

.method public setTargetResources(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_7

    .line 829
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewTargetResources:I

    .line 833
    :goto_6
    return-void

    .line 831
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->internalSetTargetResources(I)V

    goto :goto_6
.end method

.method public setTouchRecepient(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1662
    if-eqz p1, :cond_c

    .line 1663
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    .line 1664
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    .line 1665
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->refreshPositions()V

    .line 1670
    :goto_b
    return-void

    .line 1667
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    .line 1668
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    goto :goto_b
.end method

.method public setVibrateEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 887
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_15

    .line 888
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 892
    :goto_14
    return-void

    .line 890
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_14
.end method

.method public suspendAnimations()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 486
    return-void
.end method

.method public syncUnReadEventView(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V
    .registers 9
    .parameter "unReadEventView"

    .prologue
    const/4 v6, 0x0

    .line 1768
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    .line 1769
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1770
    .local v2, newEventViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_19

    .line 1771
    :cond_11
    const-string v3, "MediatekGlowPadView"

    const-string v4, "syncUnReadEventView get empty newEventViews"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :goto_18
    return-void

    .line 1774
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1775
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    if-ge v1, v0, :cond_2c

    .line 1776
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1775
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1778
    :cond_2c
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSimpleOnGestureListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;

    .line 1779
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSimpleOnGestureListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1780
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1782
    const/high16 v3, 0x4040

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlop:I

    .line 1783
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlop:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlopSqure:I

    .line 1784
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventBitmapWidth()I

    move-result v3

    int-to-float v4, v3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventBitmapHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragSnapMargin:F

    goto :goto_18
.end method
