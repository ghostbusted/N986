.class public Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
.super Landroid/widget/RelativeLayout;
.source "LockScreenNewEventView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_COUNT:I = 0x63

.field private static final MAX_COUNT_STRING:Ljava/lang/String; = "99+"

.field private static final TAG:Ljava/lang/String; = "NewEventView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

.field private mNumberText:Ljava/lang/String;

.field private mResourceId:I

.field private mTopParentView:Landroid/view/ViewGroup;

.field private mUnReadImageView:Landroid/widget/ImageView;

.field private mUnReadTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mContext:Landroid/content/Context;

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setDrawingCacheEnabled(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public getFakeCenterX()I
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getFakeCenterY()I
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    if-eqz v0, :cond_b

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 156
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNewEventBitmapHeight()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 120
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getNewEventBitmapWidth()I
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 112
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getNewEventImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getResourceId()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mResourceId:I

    return v0
.end method

.method public init(I)V
    .registers 6
    .parameter "drawableId"

    .prologue
    const/high16 v3, 0x3f00

    .line 65
    const-string v1, "NewEventView"

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mResourceId:I

    .line 67
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setPivotY(F)V

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setPivotX(F)V

    .line 71
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 60
    const v0, 0x20e002c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadTextView:Landroid/widget/TextView;

    .line 61
    const v0, 0x20e002b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    .line 62
    return-void
.end method

.method public registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/keyguard/UnReadObserver;)V
    .registers 6
    .parameter "uri"
    .parameter "unReadObserver"

    .prologue
    .line 135
    if-eqz p2, :cond_12

    .line 136
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    :cond_12
    return-void
.end method

.method public final setNumber(I)V
    .registers 5
    .parameter "count"

    .prologue
    .line 78
    const-string v0, "NewEventView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNumber count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-gtz p1, :cond_1f

    .line 82
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setViewVisibility(I)V

    .line 94
    :goto_1e
    return-void

    .line 86
    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setViewVisibility(I)V

    .line 88
    const/16 v0, 0x63

    if-le p1, v0, :cond_33

    .line 89
    const-string v0, "99+"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mNumberText:Ljava/lang/String;

    .line 93
    :goto_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mNumberText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 91
    :cond_33
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mNumberText:Ljava/lang/String;

    goto :goto_2b
.end method

.method public setTopParent(Landroid/view/ViewGroup;)V
    .registers 2
    .parameter "parentView"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mTopParentView:Landroid/view/ViewGroup;

    .line 98
    return-void
.end method

.method public setViewVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mTopParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public unRegisterNewEventObserver()V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    if-eqz v0, :cond_11

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    :cond_11
    return-void
.end method

.method public updateQueryBaseTime(J)V
    .registers 4
    .parameter "newBaseTime"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->updateQueryBaseTime(J)V

    .line 150
    return-void
.end method
