.class Lcom/android/settings_ext/wifi/ac;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic avy:Lcom/android/settings_ext/wifi/aa;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/aa;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings_ext/wifi/ac;->avy:Lcom/android/settings_ext/wifi/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ac;->avy:Lcom/android/settings_ext/wifi/aa;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/aa;->b(Lcom/android/settings_ext/wifi/aa;)Lcom/android/settings_ext/wifi/T;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings_ext/wifi/T;->bi(Z)V

    .line 151
    return-void
.end method