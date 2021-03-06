.class public Lcom/sprint/internal/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field public static final CDMA_SLOT0:I = 0x64

.field public static final CDMA_SLOT1:I = 0x1

.field public static final DATA_NOT_ALLOWED:I = 0x3e9

.field public static final DATA_UNAVAILABLE:I = 0x3e8

.field private static final DBG:Z = false

.field public static final DEFAULT:I = 0x0

.field public static final DSA_PKGNAME:Ljava/lang/String; = "com.sprint.dsa"

#the value of this static final field might be set in the static constructor
.field public static final IS_SPRINT_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_VM_PROJECT:Z = false

.field public static final NETTYPE_1XRTT:I = 0x7

.field public static final NETTYPE_CDMA:I = 0x4

.field public static final NETTYPE_EDGE:I = 0x2

.field public static final NETTYPE_EHRPD:I = 0xe

.field public static final NETTYPE_EVDO_0:I = 0x5

.field public static final NETTYPE_EVDO_A:I = 0x6

.field public static final NETTYPE_EVDO_B:I = 0xc

.field public static final NETTYPE_FAIL:I = -0x1

.field public static final NETTYPE_FAIL_AUTH:I = -0x2

.field public static final NETTYPE_FAIL_ROUTE:I = -0x3

.field public static final NETTYPE_GPRS:I = 0x1

.field public static final NETTYPE_HSDPA:I = 0x8

.field public static final NETTYPE_HSPA:I = 0xa

.field public static final NETTYPE_HSUPA:I = 0x9

.field public static final NETTYPE_IDEN:I = 0xb

.field public static final NETTYPE_LTE:I = 0xd

.field public static final NETTYPE_UMTS:I = 0x3

.field public static final NETTYPE_UNKNOWN:I = 0x0

.field public static final NETTYPE_WIFI:I = 0x11

.field public static final NETTYPE_WIMAX:I = 0x16

.field public static final OMADM_PKGNAME:Ljava/lang/String; = "com.htc.android.omadm"

.field static final PORT:I = 0x19df

.field private static TAG:Ljava/lang/String; = null

.field public static final TELESPREE_SLOT:I = 0x20000001

.field public static final UPDATER_PKGNAME:Ljava/lang/String; = "com.sprint.ce.updater"

.field public static final WIFI:I = 0x2

.field public static final WIMAX:I = 0x3

.field private static strDefPort:Ljava/lang/String;

.field private static strDefProxy:Ljava/lang/String;


# instance fields
.field private PermissionPass:Z

.field private Release_Slot1_Checking:Z

.field private mContext:Landroid/content/Context;

.field private mMIPSwitcher:Lcom/sprint/internal/MIPSwitcher;

.field mTM:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;

.field mWifi:Landroid/net/wifi/WifiManager;

.field message:Ljava/lang/String;

.field requestSocket:Ljava/net/Socket;

.field private signaturePass:Z

.field private strPort:Ljava/lang/String;

.field private strProxy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "HTC-DSA-ConnectionManager"

    sput-object v0, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    .line 57
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_SPRINT_PROJECT:Z

    sput-boolean v0, Lcom/sprint/internal/ConnectionManager;->IS_SPRINT_PROJECT:Z

    .line 58
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    sput-boolean v0, Lcom/sprint/internal/ConnectionManager;->IS_VM_PROJECT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "ctxt"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v4, p0, Lcom/sprint/internal/ConnectionManager;->Release_Slot1_Checking:Z

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/ConnectionManager;->message:Ljava/lang/String;

    .line 90
    iput-boolean v3, p0, Lcom/sprint/internal/ConnectionManager;->signaturePass:Z

    .line 91
    iput-boolean v3, p0, Lcom/sprint/internal/ConnectionManager;->PermissionPass:Z

    .line 94
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-object v0, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionManager - Caller: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {p1}, Lcom/sprint/internal/ConnectionManager;->checkCallerSignature(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/internal/ConnectionManager;->signaturePass:Z

    .line 101
    iget-boolean v0, p0, Lcom/sprint/internal/ConnectionManager;->signaturePass:Z

    if-nez v0, :cond_2

    .line 102
    sget-object v0, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signature fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "com.sprint.internal.permission.CONNECTIONMANAGER"

    invoke-static {v0}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iput-boolean v4, p0, Lcom/sprint/internal/ConnectionManager;->PermissionPass:Z

    .line 117
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/internal/ConnectionManager;->mUri:Landroid/net/Uri;

    .line 120
    new-instance v0, Lcom/sprint/internal/MIPSwitcher;

    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/internal/MIPSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/internal/ConnectionManager;->mMIPSwitcher:Lcom/sprint/internal/MIPSwitcher;

    .line 123
    sget-boolean v0, Lcom/sprint/internal/ConnectionManager;->IS_VM_PROJECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.telespree.android.client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iput-boolean v3, p0, Lcom/sprint/internal/ConnectionManager;->Release_Slot1_Checking:Z

    goto/16 :goto_0

    .line 113
    :cond_3
    sget-object v0, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "****** require CONNECTIONMANAGER permission-getString!!****** "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private CheckProfileSwitch(I)V
    .locals 10
    .parameter "Profile"

    .prologue
    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, info:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 204
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v0, 0x1

    .line 205
    .local v0, bCheckState:Z
    const/4 v4, -0x1

    .line 206
    .local v4, result:I
    const/4 v6, 0x5

    .line 207
    .local v6, timeout:I
    iget-object v7, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cm:Landroid/net/ConnectivityManager;
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 209
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 212
    :cond_0
    new-instance v2, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v7, ":XCMD"

    invoke-direct {v2, v7}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    invoke-virtual {v2}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 215
    :goto_0
    if-eqz v0, :cond_5

    .line 216
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 217
    const-string v7, "C017"

    invoke-virtual {v2, v7}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, strMIP:Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 219
    if-ne p1, v4, :cond_1

    .line 220
    const/4 v0, 0x0

    .line 221
    sget-object v7, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CheckProfileSwitch: Switch Profile success. ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    sget-boolean v7, Lcom/sprint/internal/ConnectionManager;->IS_VM_PROJECT:Z

    if-eqz v7, :cond_2

    if-nez p1, :cond_2

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    .line 225
    const/4 v0, 0x0

    .line 226
    sget-object v7, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CheckProfileSwitch: Switch Profile success. ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    if-eqz v3, :cond_3

    .line 230
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_3

    .line 231
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-nez v7, :cond_3

    .line 232
    const/4 v0, 0x0

    .line 233
    sget-object v7, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v8, "CheckProfileSwitch: info.isAvailable() is false"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_3
    const/4 v7, 0x1

    if-lt v6, v7, :cond_4

    .line 238
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 241
    :cond_4
    const/4 v0, 0x0

    .line 242
    sget-object v7, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v8, "CheckProfileSwitch: timeout."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v5           #strMIP:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/sprint/internal/ConnectionManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static checkCallerSignature(Landroid/content/Context;)Z
    .locals 16
    .parameter "caller"

    .prologue
    .line 471
    const-string v11, "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

    .line 474
    .local v11, sprintKey:Ljava/lang/String;
    const-string v10, "3082048130820369a003020102020900e7331f29e9d30143300d06092a864886f70d0101050500308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d301e170d3039303330313133343431355a170d3336303731373133343431355a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a278c94d68c907bf1ea198d3180b15c98cda4eef58ac8c035a885435673cd07621544d39b7b881a97bfe138faf10d23f5ea81c6651fd40abde14e8023cf7eb5f7830896e30563affe177ce7b0942d451b14da2ed3f48f8659755aacfa551eda79ce95a8b9cf94ede0501651995ef9d7344b4725137ae8ecd090399a6b22664e0c1fc3699fa55f62d5b290560d8bbf33cb804a7803ed49322a5117ef3c430fa66089218832852a8ba96a3554234515fc800545f1d160274a737b0af0eaf0576a40d378c7833e07f0624cbd6cc82ced8ff78b95670510560284492766381aed1f333f8ffea0bdde7cf37f0340cc45fa7ffda6f7d4d0129b60789db1671f389d0ab020103a381ef3081ec301d0603551d0e04160414acd68584abeffb3373e2f196757f34f36301bc783081bc0603551d230481b43081b18014acd68584abeffb3373e2f196757f34f36301bc78a1818da4818a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d820900e7331f29e9d30143300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010035bb7e2967477e72b7901b8da80f3cf9a4695769dbaaa6eed21662ad05d8587f06f6d5c78ef517ef4a928ebaa7105962403397def53c496fd3d4f54b0639d1fe5b6d37bb8fb5fe527d5c01215a25509ea987889fa3d7b6cc1117f37ef71769a5da2a8f5554365b805929daaeec6324c621215d26b0116ce56a22b2ab192c012741571d9e753f47448b9f12370eb59aa894153ea009d5c34ffd9946f62adb423caa28ac48e82078af2393dffe378a5cca802aa76595d89a666f1d0ef42bb22b7c974cfd0dd64c52beeb331b733ffada27c2c7020ce63c0a6f859603262f5c08f70c0e7fbcf5418b13d3575220c8f2f4cc3ff8a151a6e638c3084ca3aacf3b7729"

    .line 477
    .local v10, releaseKey:Ljava/lang/String;
    const-string v0, "3082048130820369a003020102020900c68e97bdcb5c96b9300d06092a864886f70d0101050500308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d301e170d3039303330313133343433315a170d3336303731373133343433315a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bb5a9285c16871159ce5a18007c626f34232787cfe647bc90fdd56965a6dab9256d4eadd1a0d321c1e5977df9d21fcda871e8ee811e845dcfb8478fa55bc61e1f72b88ee38ab16a63ed7361a432bc72fb8b4d544a5416960a50a244abfc5fc07bc987c3a7c9e196845aa09f38c6f28e8bd74faeaf21892e81bbe1eac717901ed9241f5d07e2c126b7968bec4ab490da9fd83ac752d0bafdbc6fd45bda6b9ada4fed07fa4b964afd3d27bfa57f902b878ac1c5b348ad60dcec522b69fbd436c9764d76d4b2b59509afdb342dc429a550cbf38c80f21b87abab57e22ed5ea79b6ca02f7b0127e2f1f5e3e615e020c7ab8a2b336342bc78388193cbeac1accba2fb020103a381ef3081ec301d0603551d0e04160414656d23a32b79700a81c079331af9a0d3ae9377093081bc0603551d230481b43081b18014656d23a32b79700a81c079331af9a0d3ae937709a1818da4818a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d820900c68e97bdcb5c96b9300c0603551d13040530030101ff300d06092a864886f70d010105050003820101005051a8f4d9e73a632c204e0a9b9dc0ab86f57b5a29c18c7b888d09df985241ca77ff2cef84de2fac5cb4d03de2d506dd8c55647de5d95345e2529a981c700b45038cc2fab68fe364cd040f43f6924aa355553d295cabb0378abc2d6fa8f8d0ef72dd02a3f2b047d26296fa7b4cd809c5255c91457b61cc77e875daaf447c757630ae92fc9ad3dc595881929c02cf4db47e67dcbb60b6877c3489484b6425ab96598be3f3838ff9ea4cb7c80f34d7f7afdd97a6b92e9a9a0ee66e6b7e593feb2d045d9c20de0a59a0e451458d8c058497d003c4289c29042af26d8933236d5ce6700ea34c6fee9775145e1ce99e9e61de9d17a9a13b8f43348672712a9e65e552"

    .line 480
    .local v0, IMreleaseKey:Ljava/lang/String;
    const-string v12, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    .line 484
    .local v12, sprintKey01:Ljava/lang/String;
    const-string v1, "308203863082026ea00302010202044cbf70a0300d06092a864886f70d0101050500308184310b3009060355040613025553310b3009060355040813024341311430120603550407130b4c6f7320416e67656c6573310f300d060355040a1306537072696e7431283026060355040b131f536572766963652044656c69766572792c20507265706169642047726f7570311730150603550403130e4d6f62696c652044657669636573301e170d3130313032303232343334345a170d3338303330373232343334345a308184310b3009060355040613025553310b3009060355040813024341311430120603550407130b4c6f7320416e67656c6573310f300d060355040a1306537072696e7431283026060355040b131f536572766963652044656c69766572792c20507265706169642047726f7570311730150603550403130e4d6f62696c65204465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100c8260ec6c14a48603f722c066342b610eb723217a9feb04675f933d52babc3de9e1b4ea08e101a05acd25e4b00f0d78bd35702429a8690f52a1e7dcbac9bac35014a5ff2834860a47fdddc4a1f4fe9337d61a94315bd0c8d7d8576b9932478343a1722b355bd908378884530bcd1933903ec01eede4f614382ba5fb5a71d18833d2ea19f1670c5083936a18e851b7f8b12286003ada8cc5276d2d477ea2397187cc49354dfa0edba4c780a0c36156d1ace5dc02d873f45f452c934c9a1dcd7111904b9471909a1b437f17ca2cf87d56608e19ba4528c6698ca8eabab9894f45b60a0dccc19d52cd3b8747f9e700802a67bc44814c38cbc6cf3ebb38c8002d4770203010001300d06092a864886f70d010105050003820101002eca26340f71f65d94d931cc341e44c89dcbfdb66841e0cc9b44784e4eaa1a06e52586a6b31ddc546f6c5118fe6f84a850df4f8313a0d1ef4a528367c3a0b7f35a4d6528f6a9fd6d9482e889b5165e2ceec2f0d7248d75d03ce304a1c346ebdd2d5aee842e1d15b79eefcb9ecdf09d7f4373e3a0ad6db16c6671e0372d5d92bbf779700ee3441a48a9e563f40b4314de2306dd0b242fafcfc4e92bfa2aae4dcff49a258f908a6df6e046c2ca58d938ae523b9aaff3d39014cd02b0b88f53bdf249c13cddfd1a13148514f9e95dd3485ee64522db35e8e4142a9cc54ecf08d0aeeb646e08b841b21cdf3957288bb24568420f8ab54e62baaa270f2681df4f8c72"

    .line 486
    .local v1, SPGKey01:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 489
    .local v8, mPm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v13, "com.android.phone"

    const/16 v14, 0x40

    invoke-virtual {v8, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 490
    .local v6, mAndroidPkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 492
    .local v9, platformKey:[Landroid/content/pm/Signature;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x40

    invoke-virtual {v8, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 494
    .local v7, mPkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 497
    .local v2, callerKey:[Landroid/content/pm/Signature;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v13, v9

    if-ge v4, v13, :cond_2

    .line 499
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    array-length v13, v2

    if-ge v5, v13, :cond_1

    .line 501
    aget-object v13, v9, v4

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    aget-object v14, v2, v5

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 503
    const/4 v13, 0x1

    .line 569
    .end local v2           #callerKey:[Landroid/content/pm/Signature;
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #mAndroidPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #mPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #platformKey:[Landroid/content/pm/Signature;
    :goto_2
    return v13

    .line 499
    .restart local v2       #callerKey:[Landroid/content/pm/Signature;
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v6       #mAndroidPkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v7       #mPkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v9       #platformKey:[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 497
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 511
    .end local v5           #j:I
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_3
    array-length v13, v2

    if-ge v5, v13, :cond_4

    .line 514
    aget-object v13, v2, v5

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 516
    const/4 v13, 0x1

    goto :goto_2

    .line 511
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 522
    :cond_4
    const/4 v5, 0x0

    :goto_4
    array-length v13, v2

    if-ge v5, v13, :cond_6

    .line 525
    aget-object v13, v2, v5

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 527
    const/4 v13, 0x1

    goto :goto_2

    .line 522
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 532
    :cond_6
    sget-boolean v13, Lcom/sprint/internal/ConnectionManager;->IS_SPRINT_PROJECT:Z

    if-eqz v13, :cond_c

    .line 534
    const/4 v5, 0x0

    :goto_5
    array-length v13, v2

    if-ge v5, v13, :cond_8

    .line 537
    aget-object v13, v2, v5

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 539
    const/4 v13, 0x1

    goto :goto_2

    .line 534
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 544
    :cond_8
    const/4 v5, 0x0

    :goto_6
    array-length v13, v2

    if-ge v5, v13, :cond_a

    .line 547
    aget-object v13, v2, v5

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 549
    const/4 v13, 0x1

    goto :goto_2

    .line 544
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 552
    :cond_a
    sget-object v13, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sprint ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 553
    :cond_c
    sget-boolean v13, Lcom/sprint/internal/ConnectionManager;->IS_VM_PROJECT:Z

    if-eqz v13, :cond_b

    .line 554
    const/4 v5, 0x0

    :goto_7
    array-length v13, v2

    if-ge v5, v13, :cond_b

    .line 557
    aget-object v13, v2, v5

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_d

    .line 559
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 554
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 566
    .end local v2           #callerKey:[Landroid/content/pm/Signature;
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #mAndroidPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #mPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #platformKey:[Landroid/content/pm/Signature;
    :catch_0
    move-exception v3

    .line 567
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    sget-object v13, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "check signature fail["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method private getMipProfile()I
    .locals 6

    .prologue
    .line 172
    new-instance v0, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v3, ":XCMD"

    invoke-direct {v0, v3}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    invoke-virtual {v0}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 174
    const-string v3, "C017"

    invoke-virtual {v0, v3}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, strMIP:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, result:I
    sget-object v3, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMipProfile(): result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-boolean v3, Lcom/sprint/internal/ConnectionManager;->IS_SPRINT_PROJECT:Z

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 179
    iget-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sprint/internal/ConnectionManager;->IsMobileConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    const/16 v1, 0x64

    .line 185
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/sprint/internal/ConnectionManager;->IS_VM_PROJECT:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sprint/internal/ConnectionManager;->IsMobileConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    const v1, 0x20000001

    .line 192
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    .line 193
    return v1

    .line 182
    :cond_2
    const/16 v1, 0x3e8

    goto :goto_0

    .line 189
    :cond_3
    const/16 v1, 0x3e8

    goto :goto_1
.end method

.method public static isLiveConnection(Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 2
    .parameter "detailedState"

    .prologue
    const/4 v0, 0x1

    .line 287
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p0, v1, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p0, v1, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq p0, v1, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method IsMobileConnected(Landroid/content/Context;)Z
    .locals 6
    .parameter "mContext"

    .prologue
    .line 268
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 269
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 270
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 271
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, strTypeName:Ljava/lang/String;
    sget-object v3, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strTypeName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 275
    const/4 v3, 0x1

    .line 283
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #strTypeName:Ljava/lang/String;
    :goto_0
    return v3

    .line 278
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_0
    sget-object v3, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "info is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 281
    :cond_2
    sget-object v3, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "cm is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method IsWifiConnected(Landroid/content/Context;)Z
    .locals 6
    .parameter "mContext"

    .prologue
    const/4 v3, 0x1

    .line 250
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 251
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 253
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, strTypeName:Ljava/lang/String;
    const-string v4, "WIFI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_0

    .line 263
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #strTypeName:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getDataProfile()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/ConnectionManagerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 138
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 167
    :cond_0
    :goto_0
    return v2

    .line 139
    :cond_1
    iget-boolean v4, p0, Lcom/sprint/internal/ConnectionManager;->signaturePass:Z

    if-nez v4, :cond_2

    .line 140
    new-instance v4, Lcom/sprint/internal/ConnectionManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verify "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " signature fail."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_2
    iget-boolean v4, p0, Lcom/sprint/internal/ConnectionManager;->PermissionPass:Z

    if-nez v4, :cond_3

    .line 143
    new-instance v4, Lcom/sprint/internal/ConnectionManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verify "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " permission fail."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :cond_3
    const-string v3, ""

    .line 150
    .local v3, strNetStat:Ljava/lang/String;
    iget-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 151
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    iget-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mTM:Landroid/telephony/TelephonyManager;

    .line 154
    iget-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mWifi:Landroid/net/wifi/WifiManager;

    .line 156
    iget-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/sprint/internal/ConnectionManager;->IsWifiConnected(Landroid/content/Context;)Z

    move-result v0

    .line 158
    .local v0, Connected:Z
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGprsState()I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 159
    :cond_4
    const/16 v2, 0x3e9

    goto/16 :goto_0

    .line 160
    :cond_5
    iget-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGprsState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 161
    const/16 v2, 0x3e8

    goto/16 :goto_0

    .line 162
    :cond_6
    iget-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v0, :cond_0

    .line 165
    :cond_7
    invoke-direct {p0}, Lcom/sprint/internal/ConnectionManager;->getMipProfile()I

    move-result v2

    .line 167
    .local v2, result:I
    goto/16 :goto_0
.end method

.method public getPort()Ljava/lang/String;
    .locals 3

    .prologue
    .line 462
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_proxy_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, proxyUrl:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 464
    const-string v1, "0"

    .line 466
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 3

    .prologue
    .line 454
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 459
    :goto_0
    return-object v1

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_proxy_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, proxyUrl:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 457
    const-string v1, ""

    goto :goto_0

    .line 459
    :cond_1
    const/4 v1, 0x0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 380
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    .line 429
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-boolean v1, p0, Lcom/sprint/internal/ConnectionManager;->signaturePass:Z

    if-nez v1, :cond_1

    .line 382
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_1
    iget-boolean v1, p0, Lcom/sprint/internal/ConnectionManager;->PermissionPass:Z

    if-nez v1, :cond_2

    .line 386
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :cond_2
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "release()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sprint/internal/ConnectionManager;->requestDataProfile(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public releaseAdminConnection()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/ConnectionManagerException;
        }
    .end annotation

    .prologue
    .line 1057
    iget-boolean v2, p0, Lcom/sprint/internal/ConnectionManager;->signaturePass:Z

    if-nez v2, :cond_0

    .line 1058
    new-instance v2, Lcom/sprint/internal/ConnectionManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " signature fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1060
    :cond_0
    iget-boolean v2, p0, Lcom/sprint/internal/ConnectionManager;->PermissionPass:Z

    if-nez v2, :cond_1

    .line 1061
    new-instance v2, Lcom/sprint/internal/ConnectionManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " permission fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1063
    :cond_1
    const/4 v0, 0x0

    .line 1064
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cm:Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1065
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 1066
    const/4 v2, 0x0

    const-string v3, "enableFOTA"

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 1067
    .local v1, rslt:I
    sget-object v2, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopUsingNetworkFeature--FEATURE_ENABLE_FOTA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    .end local v1           #rslt:I
    :goto_0
    return-void

    .line 1069
    :cond_2
    sget-object v2, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, "releaseAdminConnection : cm is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseDSAProxy()V
    .locals 2

    .prologue
    .line 449
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sprint/internal/ConnectionManager;->setDSAProxy(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public requestAdminConnection(Landroid/os/Handler;Ljava/net/InetAddress;)V
    .locals 4
    .parameter "mHandler"
    .parameter "ip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/ConnectionManagerException;
        }
    .end annotation

    .prologue
    .line 640
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-boolean v1, p0, Lcom/sprint/internal/ConnectionManager;->signaturePass:Z

    if-nez v1, :cond_1

    .line 643
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_1
    iget-boolean v1, p0, Lcom/sprint/internal/ConnectionManager;->PermissionPass:Z

    if-nez v1, :cond_2

    .line 648
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 653
    :cond_3
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "either the handle or the IP address is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 657
    :cond_4
    move-object v0, p2

    .line 659
    .local v0, ip_local:Ljava/net/InetAddress;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sprint/internal/ConnectionManager$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/sprint/internal/ConnectionManager$1;-><init>(Lcom/sprint/internal/ConnectionManager;Ljava/net/InetAddress;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public requestDataProfile(I)V
    .locals 5
    .parameter "dataconnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/ConnectionManagerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 312
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-boolean v1, p0, Lcom/sprint/internal/ConnectionManager;->signaturePass:Z

    if-nez v1, :cond_2

    .line 315
    new-instance v1, Lcom/sprint/internal/ConnectionManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_2
    iget-boolean v1, p0, Lcom/sprint/internal/ConnectionManager;->PermissionPass:Z

    if-nez v1, :cond_3

    .line 318
    new-instance v1, Lcom/sprint/internal/ConnectionManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_3
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_SPRINT_PROJECT:Z

    if-nez v1, :cond_0

    .line 326
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDataProfile: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mWifi:Landroid/net/wifi/WifiManager;

    .line 329
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi state: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    if-nez p1, :cond_4

    .line 339
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataconnection: [DEFAULT], isWifiEnabled: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    const/4 v0, 0x1

    .line 345
    .local v0, nProfile:I
    invoke-virtual {p0, v0}, Lcom/sprint/internal/ConnectionManager;->switchMIP(I)V

    .line 349
    iget-boolean v1, p0, Lcom/sprint/internal/ConnectionManager;->Release_Slot1_Checking:Z

    if-eqz v1, :cond_0

    .line 350
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "CheckProfileSwitch(SLOT1)..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-direct {p0, v0}, Lcom/sprint/internal/ConnectionManager;->CheckProfileSwitch(I)V

    .line 352
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "CheckProfileSwitch(SLOT1)...done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 356
    .end local v0           #nProfile:I
    :cond_4
    const/4 v0, -0x1

    .line 357
    .restart local v0       #nProfile:I
    const/16 v1, 0x64

    if-eq p1, v1, :cond_5

    const v1, 0x20000001

    if-ne p1, v1, :cond_6

    .line 358
    :cond_5
    const/4 v0, 0x0

    .line 359
    :cond_6
    if-ne p1, v4, :cond_7

    .line 360
    const/4 v0, 0x1

    .line 363
    :cond_7
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 365
    invoke-virtual {p0, v0}, Lcom/sprint/internal/ConnectionManager;->switchMIP(I)V

    .line 367
    iget-boolean v1, p0, Lcom/sprint/internal/ConnectionManager;->Release_Slot1_Checking:Z

    if-nez v1, :cond_8

    if-eq v0, v4, :cond_0

    .line 368
    :cond_8
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckProfileSwitch("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0, v0}, Lcom/sprint/internal/ConnectionManager;->CheckProfileSwitch(I)V

    .line 370
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckProfileSwitch("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")...done."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public requestDataProfile(II)V
    .locals 0
    .parameter "dataconnection"
    .parameter "mode"

    .prologue
    .line 300
    return-void
.end method

.method public setDSAProxy(Ljava/lang/String;I)V
    .locals 3
    .parameter "strIP"
    .parameter "iPort"

    .prologue
    .line 435
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    .line 446
    :goto_0
    return-void

    .line 437
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, proxyUrl:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_proxy_url"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 441
    .end local v0           #proxyUrl:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "Invalid Proxy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v0, ":0"

    .restart local v0       #proxyUrl:Ljava/lang/String;
    goto :goto_1
.end method

.method public switchMIP(I)V
    .locals 3
    .parameter "reqMip"

    .prologue
    .line 577
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    .line 603
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/sprint/internal/ConnectionManager;->getMipProfile()I

    move-result v0

    .line 579
    .local v0, curMip:I
    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const v1, 0x20000001

    if-ne v0, v1, :cond_4

    .line 580
    :cond_1
    const/4 v0, 0x0

    .line 585
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mMIPSwitcher:Lcom/sprint/internal/MIPSwitcher;

    if-nez v1, :cond_3

    .line 586
    sget-object v1, Lcom/sprint/internal/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "swithcMIP()...mMIPSwitcher is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v1, Lcom/sprint/internal/MIPSwitcher;

    iget-object v2, p0, Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sprint/internal/MIPSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mMIPSwitcher:Lcom/sprint/internal/MIPSwitcher;

    .line 590
    :cond_3
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mMIPSwitcher:Lcom/sprint/internal/MIPSwitcher;

    sput p1, Lcom/sprint/internal/MIPSwitcher;->staReqMIPindex:I

    .line 593
    if-nez p1, :cond_5

    .line 596
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mMIPSwitcher:Lcom/sprint/internal/MIPSwitcher;

    invoke-virtual {v1}, Lcom/sprint/internal/MIPSwitcher;->connectMIP0()Z

    goto :goto_0

    .line 581
    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 582
    const/4 v0, 0x1

    goto :goto_1

    .line 600
    :cond_5
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mMIPSwitcher:Lcom/sprint/internal/MIPSwitcher;

    iget-boolean v2, p0, Lcom/sprint/internal/ConnectionManager;->Release_Slot1_Checking:Z

    invoke-virtual {v1, v2}, Lcom/sprint/internal/MIPSwitcher;->disconnectMIP0(Z)I

    .line 601
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mMIPSwitcher:Lcom/sprint/internal/MIPSwitcher;

    const/4 v1, -0x1

    sput v1, Lcom/sprint/internal/MIPSwitcher;->staReqMIPindex:I

    goto :goto_0
.end method
