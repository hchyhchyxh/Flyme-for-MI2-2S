.class public Lcom/android/settings_ext/cloud/push/j;
.super Ljava/lang/Object;
.source "ExistCompatibility.java"


# instance fields
.field private QP:Ljava/lang/String;

.field private QQ:Z

.field private QR:Ljava/util/Set;

.field private mMessage:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ext/cloud/push/j;->QR:Ljava/util/Set;

    .line 65
    return-void
.end method

.method public aF(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings_ext/cloud/push/j;->QP:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public aw(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings_ext/cloud/push/j;->QQ:Z

    .line 57
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/j;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/j;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/j;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public nF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/j;->QP:Ljava/lang/String;

    return-object v0
.end method

.method public nG()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings_ext/cloud/push/j;->QQ:Z

    return v0
.end method

.method public nH()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/j;->QR:Ljava/util/Set;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings_ext/cloud/push/j;->mMessage:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/settings_ext/cloud/push/j;->mPackageName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings_ext/cloud/push/j;->mTitle:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExistCompatibility : PackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/cloud/push/j;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/cloud/push/j;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/cloud/push/j;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Tricker = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/cloud/push/j;->QP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Precise = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ext/cloud/push/j;->QQ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Versions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/cloud/push/j;->QR:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method