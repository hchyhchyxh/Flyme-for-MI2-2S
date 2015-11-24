.class public Lcom/android/settings_ext/users/RestrictedProfileSettings;
.super Lcom/android/settings_ext/users/AppRestrictionsFragment;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Lcom/android/settings_ext/users/EditUserInfoController$OnContentChangedCallback;


# instance fields
.field private amq:Landroid/widget/ImageView;

.field private amr:Landroid/widget/TextView;

.field private ams:Landroid/widget/ImageView;

.field private amt:Lcom/android/settings_ext/users/EditUserInfoController;

.field private mHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/settings_ext/users/EditUserInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amt:Lcom/android/settings_ext/users/EditUserInfoController;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/users/RestrictedProfileSettings;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->removeUser()V

    return-void
.end method

.method private b(Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 103
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 107
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeUser()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ext/users/RestrictedProfileSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/users/RestrictedProfileSettings$2;-><init>(Lcom/android/settings_ext/users/RestrictedProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amq:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amr:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->c(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amq:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amr:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x7f1002cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->ams:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->ams:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amt:Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings_ext/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->showDialog(I)V

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->ams:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 128
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amt:Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->j(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 136
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amt:Lcom/android/settings_ext/users/EditUserInfoController;

    iget-object v1, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amq:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amr:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0901ac

    iget-object v6, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->alv:Landroid/os/UserHandle;

    move-object v1, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ext/users/EditUserInfoController;->a(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings_ext/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 140
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->alv:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    new-instance v2, Lcom/android/settings_ext/users/RestrictedProfileSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/users/RestrictedProfileSettings$1;-><init>(Lcom/android/settings_ext/users/RestrictedProfileSettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->alv:Landroid/os/UserHandle;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->b(Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 91
    if-nez v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->gW()V

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings_ext/users/RestrictedProfileSettings;->sm()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amt:Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings_ext/users/RestrictedProfileSettings;->amt:Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings_ext/users/EditUserInfoController;->ss()V

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    return-void
.end method