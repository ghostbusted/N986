.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "KeyguardSimPinPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TN"
.end annotation


# instance fields
.field final mHide:Ljava/lang/Runnable;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mWM:Landroid/view/WindowManagerImpl;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 1080
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 1064
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mShow:Ljava/lang/Runnable;

    .line 1070
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 1076
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 1081
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 1082
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1083
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1084
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1086
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1087
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1088
    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1089
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1090
    return-void
.end method


# virtual methods
.method public handleHide()V
    .registers 3

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 1149
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1156
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    .line 1158
    :cond_1e
    return-void
.end method

.method public handleShow()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f80

    .line 1117
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerImpl;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    .line 1118
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget v0, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mGravity:I

    .line 1119
    .local v0, gravity:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1120
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_21

    .line 1121
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 1123
    :cond_21
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-ne v1, v2, :cond_2b

    .line 1124
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 1126
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1127
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    if-eqz v1, :cond_57

    .line 1128
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 1132
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1137
    :cond_4c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1139
    :cond_57
    return-void
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1110
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1100
    return-void
.end method
