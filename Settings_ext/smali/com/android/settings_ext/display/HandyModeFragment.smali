.class public Lcom/android/settings_ext/display/HandyModeFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "HandyModeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field UH:Lmiui/util/HandyModeUtils;

.field UI:Landroid/preference/CheckBoxPreference;

.field UJ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UJ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public j(F)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 67
    :goto_0
    if-ge v3, v4, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    .line 69
    invoke-virtual {v0}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 67
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 69
    goto :goto_1

    .line 71
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings_ext/display/HandyModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/HandyModeUtils;->getInstance(Landroid/content/Context;)Lmiui/util/HandyModeUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UH:Lmiui/util/HandyModeUtils;

    .line 32
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/HandyModeFragment;->addPreferencesFromResource(I)V

    .line 34
    const-string v0, "handy_mode_enter_ask"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/HandyModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UI:Landroid/preference/CheckBoxPreference;

    .line 35
    iget-object v0, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 36
    iget-object v2, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UI:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UH:Lmiui/util/HandyModeUtils;

    invoke-virtual {v0}, Lmiui/util/HandyModeUtils;->isEnterDirect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ext/display/HandyModeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ext/display/HandyModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00c4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {p0}, Lcom/android/settings_ext/display/HandyModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b00c5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 41
    array-length v5, v3

    move v0, v1

    .line 42
    :goto_1
    if-ge v0, v5, :cond_2

    .line 43
    aget-object v6, v4, v0

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 44
    iget-object v7, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UH:Lmiui/util/HandyModeUtils;

    invoke-virtual {v7, v6}, Lmiui/util/HandyModeUtils;->isValidSize(F)Z

    move-result v6

    if-nez v6, :cond_1

    .line 42
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 36
    goto :goto_0

    .line 46
    :cond_1
    new-instance v6, Lmiui/preference/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/display/HandyModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 47
    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Lmiui/preference/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v6, v1}, Lmiui/preference/RadioButtonPreference;->setPersistent(Z)V

    .line 50
    invoke-virtual {v6, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 51
    iget-object v7, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UJ:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UH:Lmiui/util/HandyModeUtils;

    invoke-virtual {v0}, Lmiui/util/HandyModeUtils;->getSize()F

    move-result v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/HandyModeFragment;->j(F)V

    .line 57
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 75
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 76
    iget-object v2, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UH:Lmiui/util/HandyModeUtils;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lmiui/util/HandyModeUtils;->setEnterDirect(Z)V

    .line 77
    return v1

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/HandyModeFragment;->j(F)V

    .line 84
    iget-object v1, p0, Lcom/android/settings_ext/display/HandyModeFragment;->UH:Lmiui/util/HandyModeUtils;

    invoke-virtual {v1, v0}, Lmiui/util/HandyModeUtils;->setSize(F)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onStart()V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ext/display/HandyModeFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f090b09

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 63
    return-void
.end method