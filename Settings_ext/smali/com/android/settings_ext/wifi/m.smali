.class Lcom/android/settings_ext/wifi/m;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic atf:Lcom/android/settings_ext/wifi/l;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/l;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ext/wifi/m;->atf:Lcom/android/settings_ext/wifi/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/wifi/m;->atf:Lcom/android/settings_ext/wifi/l;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/l;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->h(Z)V

    .line 138
    return-void
.end method