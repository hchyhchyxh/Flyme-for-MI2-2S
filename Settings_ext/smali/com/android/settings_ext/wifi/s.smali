.class Lcom/android/settings_ext/wifi/s;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

.field final synthetic ath:Lcom/android/settings_ext/b/f;

.field final synthetic gV:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;Lcom/android/settings_ext/b/f;Landroid/net/NetworkTemplate;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings_ext/wifi/s;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    iput-object p2, p0, Lcom/android/settings_ext/wifi/s;->ath:Lcom/android/settings_ext/b/f;

    iput-object p3, p0, Lcom/android/settings_ext/wifi/s;->gV:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings_ext/wifi/s;->ath:Lcom/android/settings_ext/b/f;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/s;->gV:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ext/b/f;->a(Landroid/net/NetworkTemplate;Z)V

    .line 271
    return-void
.end method