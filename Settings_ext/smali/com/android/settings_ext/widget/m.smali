.class Lcom/android/settings_ext/widget/m;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenView.java"


# instance fields
.field final synthetic aqZ:Lcom/android/settings_ext/widget/ScreenView;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/widget/ScreenView;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/settings_ext/widget/m;->aqZ:Lcom/android/settings_ext/widget/ScreenView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/settings_ext/widget/m;->aqZ:Lcom/android/settings_ext/widget/ScreenView;

    invoke-static {v0}, Lcom/android/settings_ext/widget/ScreenView;->b(Lcom/android/settings_ext/widget/ScreenView;)Lcom/android/settings_ext/widget/u;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/u;->setVisibility(I)V

    .line 585
    return-void
.end method