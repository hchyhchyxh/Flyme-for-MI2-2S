.class public Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnablerActivity;
.super Lcom/android/settings_ext/gh;
.source "InputMethodAndSubtypeEnablerActivity.java"


# static fields
.field private static final abt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnablerActivity;->abt:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings_ext/gh;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ext/gh;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const-string v1, ":settings:show_fragment"

    sget-object v2, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnablerActivity;->abt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    :cond_0
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnablerActivity;->abt:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings_ext/gh;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnablerActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 35
    :cond_0
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnablerActivity;->finish()V

    .line 40
    const/4 v0, 0x1

    return v0
.end method