.class final Lcom/google/common/collect/U;
.super Lcom/google/common/collect/S;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/R;


# instance fields
.field aBd:Lcom/google/common/collect/R;

.field aBe:Lcom/google/common/collect/R;

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V
    .locals 2

    .prologue
    .line 1321
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/S;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/R;)V

    .line 1326
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/U;->time:J

    .line 1338
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/U;->aBd:Lcom/google/common/collect/R;

    .line 1351
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->xA()Lcom/google/common/collect/R;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/U;->aBe:Lcom/google/common/collect/R;

    .line 1322
    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 1

    .prologue
    .line 1335
    iput-wide p1, p0, Lcom/google/common/collect/U;->time:J

    .line 1336
    return-void
.end method

.method public g(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/google/common/collect/U;->aBd:Lcom/google/common/collect/R;

    .line 1349
    return-void
.end method

.method public h(Lcom/google/common/collect/R;)V
    .locals 0

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/google/common/collect/U;->aBe:Lcom/google/common/collect/R;

    .line 1362
    return-void
.end method

.method public xG()J
    .locals 2

    .prologue
    .line 1330
    iget-wide v0, p0, Lcom/google/common/collect/U;->time:J

    return-wide v0
.end method

.method public xH()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/common/collect/U;->aBd:Lcom/google/common/collect/R;

    return-object v0
.end method

.method public xI()Lcom/google/common/collect/R;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/common/collect/U;->aBe:Lcom/google/common/collect/R;

    return-object v0
.end method