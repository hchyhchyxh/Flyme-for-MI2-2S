.class Lcom/android/settings_ext/sound/v;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic ajH:Lcom/android/settings_ext/sound/BatchMediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/sound/BatchMediaPlayer;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings_ext/sound/v;->ajH:Lcom/android/settings_ext/sound/BatchMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/sound/v;->ajH:Lcom/android/settings_ext/sound/BatchMediaPlayer;

    invoke-static {v0}, Lcom/android/settings_ext/sound/BatchMediaPlayer;->d(Lcom/android/settings_ext/sound/BatchMediaPlayer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/sound/v;->ajH:Lcom/android/settings_ext/sound/BatchMediaPlayer;

    invoke-static {v0}, Lcom/android/settings_ext/sound/BatchMediaPlayer;->e(Lcom/android/settings_ext/sound/BatchMediaPlayer;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/sound/v;->ajH:Lcom/android/settings_ext/sound/BatchMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/sound/BatchMediaPlayer;->stop(I)V

    goto :goto_0
.end method