.class Lcom/android/settings_ext/wifi/aS;
.super Landroid/content/BroadcastReceiver;
.source "WpsDialog.java"


# instance fields
.field final synthetic axt:Lcom/android/settings_ext/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WpsDialog;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings_ext/wifi/aS;->axt:Lcom/android/settings_ext/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aS;->axt:Lcom/android/settings_ext/wifi/WpsDialog;

    invoke-static {v0, p1, p2}, Lcom/android/settings_ext/wifi/WpsDialog;->a(Lcom/android/settings_ext/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V

    .line 133
    return-void
.end method