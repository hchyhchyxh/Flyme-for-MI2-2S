.class Lcom/android/settings_ext/applications/InstalledAppDetails$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "InstalledAppDetails.java"


# instance fields
.field final synthetic Ge:Lcom/android/settings_ext/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$ClearCacheObserver;->Ge:Lcom/android/settings_ext/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$ClearCacheObserver;->Ge:Lcom/android/settings_ext/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->c(Lcom/android/settings_ext/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 230
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 231
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$ClearCacheObserver;->Ge:Lcom/android/settings_ext/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->c(Lcom/android/settings_ext/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method