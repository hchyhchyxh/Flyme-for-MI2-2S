.class Lcom/android/settings_ext/display/x;
.super Landroid/database/ContentObserver;
.source "PaperModeFragment.java"


# instance fields
.field final synthetic VF:Lcom/android/settings_ext/display/PaperModeFragment;

.field final synthetic VG:Lcom/android/settings_ext/display/PaperModePreference;

.field final synthetic VH:Lcom/android/settings_ext/display/PaperModePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/PaperModeFragment;Landroid/os/Handler;Lcom/android/settings_ext/display/PaperModePreference;Lcom/android/settings_ext/display/PaperModePreference;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings_ext/display/x;->VF:Lcom/android/settings_ext/display/PaperModeFragment;

    iput-object p3, p0, Lcom/android/settings_ext/display/x;->VG:Lcom/android/settings_ext/display/PaperModePreference;

    iput-object p4, p0, Lcom/android/settings_ext/display/x;->VH:Lcom/android/settings_ext/display/PaperModePreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 118
    iget-object v3, p0, Lcom/android/settings_ext/display/x;->VG:Lcom/android/settings_ext/display/PaperModePreference;

    iget-object v0, p0, Lcom/android/settings_ext/display/x;->VF:Lcom/android/settings_ext/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings_ext/display/PaperModeFragment;->a(Lcom/android/settings_ext/display/PaperModeFragment;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings_ext/display/PaperModePreference;->setChecked(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ext/display/x;->VH:Lcom/android/settings_ext/display/PaperModePreference;

    iget-object v3, p0, Lcom/android/settings_ext/display/x;->VF:Lcom/android/settings_ext/display/PaperModeFragment;

    invoke-static {v3}, Lcom/android/settings_ext/display/PaperModeFragment;->a(Lcom/android/settings_ext/display/PaperModeFragment;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings_ext/display/PaperModePreference;->setChecked(Z)V

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 118
    goto :goto_0

    :cond_1
    move v1, v2

    .line 119
    goto :goto_1
.end method