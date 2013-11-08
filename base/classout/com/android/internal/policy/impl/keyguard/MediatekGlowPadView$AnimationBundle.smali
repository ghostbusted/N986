.class Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "MediatekGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 169
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_15

    .line 170
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 171
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 173
    .end local v0           #anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->clear()V

    .line 174
    return-void
.end method

.method public setSuspended(Z)V
    .registers 2
    .parameter "suspend"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->mSuspended:Z

    .line 187
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 159
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_5

    .line 165
    :cond_4
    return-void

    .line 160
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 161
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_4

    .line 162
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 163
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 178
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_15

    .line 179
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 180
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 182
    .end local v0           #anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->clear()V

    .line 183
    return-void
.end method
