.class Lcom/android/settings_ext/toggleposition/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragGridView.java"


# instance fields
.field final synthetic akI:Lcom/android/settings_ext/toggleposition/DragGridView;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/toggleposition/DragGridView;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/settings_ext/toggleposition/f;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/settings_ext/toggleposition/f;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/toggleposition/DragGridView;->b(Lcom/android/settings_ext/toggleposition/DragGridView;Z)Z

    .line 551
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings_ext/toggleposition/f;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/toggleposition/DragGridView;->b(Lcom/android/settings_ext/toggleposition/DragGridView;Z)Z

    .line 546
    return-void
.end method