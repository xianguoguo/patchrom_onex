.class public Lcom/htc/server/WirelessDisplayService;
.super Lcom/htc/service/IWirelessDisplayService$Stub;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;,
        Lcom/htc/server/WirelessDisplayService$InfoListener;,
        Lcom/htc/server/WirelessDisplayService$WivuThread;,
        Lcom/htc/server/WirelessDisplayService$HdmiReceiver;,
        Lcom/htc/server/WirelessDisplayService$CallReceiver;,
        Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;,
        Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;,
        Lcom/htc/server/WirelessDisplayService$WifiReceiver;,
        Lcom/htc/server/WirelessDisplayService$ScreenReceiver;,
        Lcom/htc/server/WirelessDisplayService$H;
    }
.end annotation


# static fields
.field private static final APP_LOCK:I = 0x47

.field private static final APP_PAUSE:I = 0x2c

.field private static final CALL_ONLY:I = 0x4b

.field private static final CALL_PAUSE:I = 0x2e

.field private static final DBG:Z = true

.field private static final DONGLE_INFO_CACHE_SIZE:I = 0x1e

.field private static final ENVIRONMENT_DONGLE_STATE_MANY_UNDONGLE_FOUND:I = 0x3

.field private static final ENVIRONMENT_DONGLE_STATE_NO_DONGLE:I = 0x0

.field private static final ENVIRONMENT_DONGLE_STATE_ONE_UNCONFIG_DONGLE_FOUND:I = 0x2

.field private static final ENVIRONMENT_DONGLE_STATE_READY_TO_USE_DONGLE_FOUND:I = 0x1

.field private static final ERROR_RESTART:I = 0x36

.field private static final HANDLE_BIND_CONFIG_SERVICE:I = 0xb

.field private static final HANDLE_CHANGE_STATE:I = 0x1

.field private static final HANDLE_CONFIUGRE_STATE_CHANGED:I = 0xd

.field private static final HANDLE_FINGER_GESTURE:I = 0x6f

.field private static final HANDLE_FINGER_GESTURE_DIRECTION:I = 0x71

.field private static final HANDLE_GET_DEVICE_IP:I = 0x2

.field private static final HANDLE_PROCESS_WFDSERVICE:I = 0x70

.field private static final HANDLE_STOP_DIS:I = 0x3

.field private static final HANDLE_STOP_TRANSMIT:I = 0x6

.field private static final HANDLE_TIMEOUT_STOP:I = 0x4

.field private static final HANDLE_TURN_OFF_CONCURRENT_HOTSPOT:I = 0x10

.field private static final HANDLE_UNBIND_CONFIG_SERVICE:I = 0xc

.field private static final HANDLE_WIFI_DIS:I = 0x5

.field private static final HANDLE_WIFI_FULL_SCAN:I = 0x11

.field private static final HANDLE_WIFI_SCAN_RESULT_AVAILABLE:I = 0x9

.field private static final HANDLE_WRITE_CONCURRENT_MAC_ADDRESS:I = 0xf

.field private static final INTENT_CONFIG_DONGLE:Ljava/lang/String; = "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

.field private static final INTENT_CONFIG_DONGLES_LIST:Ljava/lang/String; = "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

.field private static final INTENT_CONFIG_DONGLES_LIST_NORMAL:Ljava/lang/String; = "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

.field private static final INTENT_EXTRA_OUTPUTTV_RESULT:Ljava/lang/String; = "com.android.internal.app.intent.extra.OUTPUTTV_RESULT"

.field private static final INTENT_NOTIFY_DLNA_MIRROR_OFF:Ljava/lang/String; = "com.android.internal.app.intent.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

.field private static final INTENT_NOTIFY_RECONNECT_DFS_WIFI:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFY_RECONNECT_DFS_WIFI"

.field private static final INTENT_NOTIFY_UNCONFIG_DONGLE_FOUND:Ljava/lang/String; = "com.android.internal.app.intent.WIRELESS_DISPLAY_NOTIFY_UNCONFIG_DONGLE_FOUND"

.field private static final INTENT_WIRELESS_DISPLAY_MIRROR_RESULT:Ljava/lang/String; = "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

.field private static final INTENT_WIRELESS_DISPLAY_OUTPUTTV_RESULT:Ljava/lang/String; = "com.android.internal.app.intent.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

.field private static final INTENT_WIRELESS_DISPLAY_OUTPUTTV_SHOW:Ljava/lang/String; = "com.android.internal.app.intent.WIRELESS_DISPLAY_OUTPUTTV_SHOW"

.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final LOCK_ONLY:I = 0x48

.field private static final LOCK_PAUSE:I = 0x2d

.field private static final MAX_DONGLE:I = 0x4

.field private static final MAX_DONGLE_WAIT:I = 0x15f90

.field private static final MEDIA_PAUSE_RESUME:I = 0x29

.field private static final MEDIA_START_STOP:I = 0x33

.field private static final MIRROR_OFF_TIMEOUT:I = 0x927c0

.field private static final NORMAL:I = 0x49

.field private static final OUTPUTTV_ACTIVITY_RESULT_NO:I = 0x0

.field private static final OUTPUTTV_ACTIVITY_RESULT_YES:I = 0x1

.field private static final PAUSE:I = 0x2b

.field private static final PEER_LIST:I = 0x18

.field private static final REQ_DISCOVERY:I = 0x20

.field private static final REQ_DIS_STATUS:I = 0x22

.field private static final REQ_HRT_BEAT_SELECT:I = 0x26

.field private static final REQ_JOIN_GROUP:I = 0x28

.field private static final REQ_PEER_SELECT:I = 0x25

.field private static final REQ_PLUGGED:I = 0x21

.field private static final REQ_PLU_STATUS:I = 0x23

.field private static final REQ_SET_INTERFACE:I = 0x27

.field private static final REQ_STOP_DIS:I = 0x24

.field private static final RESUME:I = 0x2a

.field private static final RES_DISCOVERY:I = 0x3f

.field private static final RES_HRTBEAT:I = 0x41

.field private static final RES_PEER_INFO:I = 0x42

.field private static final RES_PLUGGED:I = 0x3e

.field private static final RES_ROTATION:I = 0x40

.field private static final SCREEN_CALL:I = 0x4a

.field private static final SCREEN_OFF_TIMEOUT:I = 0x1d4c0

.field private static final SEND_WIVU_COMMAND:I = 0x1f

.field private static final SRV_DLNA:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginService"

.field private static final START:I = 0x34

.field private static final STOP:I = 0x35

.field private static final SWUPGRADE:I = 0x19

.field private static final TAG:Ljava/lang/String; = "WirelessDisplayService"

.field private static final TIMEOUT_OUT_OF_RANGE:I = 0x4e20

.field private static final WFDSERVICE_START_CONFIG_DONGLE:I = 0x1

.field private static final WFDSERVICE_START_MIRROR:I = 0x0

.field private static final WIVUSTART:I = 0x16

.field private static final WIVUSTOP:I = 0x17

.field private static final WIVU_REQUEST:I = 0x15

.field private static final WIVU_RESPONSE:I = 0x3d

.field private static cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mAudioPattern:Ljava/util/regex/Pattern;

.field private static final mBssidPattern:Ljava/util/regex/Pattern;

.field private static mHandler:Lcom/htc/server/WirelessDisplayService$H;

.field private static final mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mIPv4Pattern:Ljava/util/regex/Pattern;

.field private static final mVideoPattern:Ljava/util/regex/Pattern;

.field private static mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

.field private static needToSwitch:Ljava/lang/Boolean;

.field private static pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final DELAY_RESTART_MR:I

.field private final DELAY_START_MR:I

.field private final FAILED:I

.field private final SUCCESS:I

.field private final VIDEOHEIGHT:I

.field private final VIDEOWIDTH:I

.field private callOnGoing:Z

.field private curDongle:Ljava/lang/String;

.field private dialogResult:I

.field private isResume:Z

.field private lastDongle:Ljava/lang/String;

.field private mAP_M_MacAddress:Ljava/lang/String;

.field private final mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAudioPort:Ljava/lang/String;

.field private mAutoConfigConnection:Landroid/content/ServiceConnection;

.field private mAutoConfigService:Landroid/os/IBinder;

.field private mBeatFailCount:I

.field private mBitrate:I

.field private final mCallScreenException:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mContext:Landroid/content/Context;

.field private mCurNetworkInterface:Ljava/lang/String;

.field private final mDongleInfoCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDongleIp:Ljava/lang/String;

.field private final mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFrameRate:I

.field private mGroupNumber:Ljava/lang/String;

.field private final mInfoListener:Lcom/htc/server/WirelessDisplayService$InfoListener;

.field private volatile mInitComplete:Z

.field private mInterval:F

.field private mIpAndPort:Ljava/lang/String;

.field private mIsBoundToAutoConfigService:Z

.field private final mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNotifyUpgrade:Ljava/lang/Boolean;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private final mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

.field private mRecording:Z

.field private mSoftapInterface:Ljava/lang/String;

.field private mThread:Landroid/os/HandlerThread;

.field private mVideoPort:Ljava/lang/String;

.field private mWfdServiceRetryCount:I

.field private mWiFiInterface:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScanCount:I

.field private mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

.field private screenOn:Z

.field private tempDongle:Ljava/lang/String;

.field private tempFingerIndicator:I

.field private wivuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 270
    const-string v0, "(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mIPv4Pattern:Ljava/util/regex/Pattern;

    .line 272
    const-string v0, "AUDIO=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mAudioPattern:Ljava/util/regex/Pattern;

    .line 273
    const-string v0, "VIDEO=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mVideoPattern:Ljava/util/regex/Pattern;

    .line 274
    const-string v0, "((?:[0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    .line 276
    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 337
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 341
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 346
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 351
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 356
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 361
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 366
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 379
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 385
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 426
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 465
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    .line 3762
    const-string v0, "wivu"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3763
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18
    .parameter "context"

    .prologue
    .line 1667
    invoke-direct/range {p0 .. p0}, Lcom/htc/service/IWirelessDisplayService$Stub;-><init>()V

    .line 110
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z

    .line 259
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->DELAY_START_MR:I

    .line 260
    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->DELAY_RESTART_MR:I

    .line 261
    new-instance v14, Ljava/util/ArrayList;

    const/4 v15, 0x4

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v14}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    .line 287
    const-string v14, "wlan0"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 305
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v15, 0x49

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 314
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v15, 0x49

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mCallScreenException:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 327
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 329
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 330
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 371
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mNotifyUpgrade:Ljava/lang/Boolean;

    .line 390
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mBeatFailCount:I

    .line 395
    const/16 v14, 0xa

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    .line 400
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    .line 415
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 417
    const-string v14, ""

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 459
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    .line 474
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->screenOn:Z

    .line 478
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    .line 482
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 1881
    new-instance v14, Lcom/htc/server/WirelessDisplayService$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/server/WirelessDisplayService$10;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;

    .line 2631
    const-string v14, "192.168.1.1:5634/5638"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;

    .line 3569
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 3570
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 3571
    const v14, 0x2dc6c0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mBitrate:I

    .line 3572
    const/16 v14, 0x1e

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mFrameRate:I

    .line 3573
    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->mInterval:F

    .line 3574
    new-instance v14, Lcom/htc/server/WirelessDisplayService$InfoListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/htc/server/WirelessDisplayService$InfoListener;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mInfoListener:Lcom/htc/server/WirelessDisplayService$InfoListener;

    .line 3575
    new-instance v14, Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    .line 3578
    const/16 v14, 0x3c0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->VIDEOWIDTH:I

    .line 3579
    const/16 v14, 0x220

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->VIDEOHEIGHT:I

    .line 3580
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->SUCCESS:I

    .line 3581
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayService;->FAILED:I

    .line 1670
    new-instance v14, Lcom/htc/server/WirelessDisplayNotification;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/htc/server/WirelessDisplayNotification;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    .line 1673
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    .line 1674
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->init()V

    .line 1676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    const-string v15, "wifi"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1677
    new-instance v14, Ljava/util/Hashtable;

    const/16 v15, 0x1e

    invoke-direct {v14, v15}, Ljava/util/Hashtable;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    .line 1679
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$1;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "android.net.wifi.SCAN_RESULTS"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1688
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$2;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "android.net.wifi.DONGLE_SCAN_RESULTS"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$3;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.wifidisplay.NOTIFY_CONCURRENT_MODE_ENABLED"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1734
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$4;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.wifidisplay.NOTIFY_DONGLE_FIRMWARE_UPGRADE"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1748
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$5;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.wifidisplay.NOTIFY_RECONNECT_DFS_WIFI"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1761
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$6;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    const-string v17, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1777
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$7;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.wifidisplay.SWITCH_ON_OFF_MIRROR_MODE"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1799
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$8;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.wifidisplay.CONFIGURE_STATE_CHANGED_ACTION"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1812
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/htc/server/WirelessDisplayService$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/server/WirelessDisplayService$9;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.htc.action.MULTIPLE_FINGER_SWIPE_EVENT"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1831
    new-instance v5, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-direct {v5, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v5, filter:Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1833
    const-string v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1835
    new-instance v11, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14}, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 1836
    .local v11, mReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v11, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1842
    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1843
    .local v13, wifiFilter:Landroid/content/IntentFilter;
    const-string v14, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v13, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1845
    new-instance v12, Lcom/htc/server/WirelessDisplayService$WifiReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lcom/htc/server/WirelessDisplayService$WifiReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 1846
    .local v12, mWifiReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1850
    new-instance v2, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1851
    .local v2, callFilter:Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v2, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1853
    new-instance v7, Lcom/htc/server/WirelessDisplayService$CallReceiver;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/server/WirelessDisplayService$CallReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    .line 1854
    .local v7, mCallReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1858
    new-instance v6, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-direct {v6, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1860
    .local v6, hdmiFilter:Landroid/content/IntentFilter;
    new-instance v10, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    .line 1861
    .local v10, mHdmiReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1864
    new-instance v4, Landroid/content/IntentFilter;

    const-string v14, "com.android.internal.app.intent.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

    invoke-direct {v4, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1866
    .local v4, dialogFilter:Landroid/content/IntentFilter;
    new-instance v9, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v14}, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 1867
    .local v9, mDialogResultReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v9, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1869
    new-instance v3, Landroid/content/IntentFilter;

    const-string v14, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v3, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1871
    .local v3, connectivityFilter:Landroid/content/IntentFilter;
    new-instance v8, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 1872
    .local v8, mConnectivityReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1875
    const-string v14, "wifi.softapconcurrent.interface"

    const-string v15, "wlan1"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    .line 1876
    const-string v14, "wifi.interface"

    const-string v15, "wlan0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;

    .line 1877
    const-string v14, "/data/misc/wifidisplay.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 1878
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->clearDongleCache()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/server/WirelessDisplayService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/server/WirelessDisplayService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V

    return-void
.end method

.method static synthetic access$2000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->binder_finishService()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/server/WirelessDisplayService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    return-void
.end method

.method static synthetic access$2400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2500()Lcom/htc/server/WirelessDisplayService$H;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2900()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mIPv4Pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return p1
.end method

.method static synthetic access$310(Lcom/htc/server/WirelessDisplayService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return v0
.end method

.method static synthetic access$3100()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mAudioPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mVideoPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3700()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3702(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    sput-object p0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mNotifyUpgrade:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4502(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return v0
.end method

.method static synthetic access$4702(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return p1
.end method

.method static synthetic access$4710(Lcom/htc/server/WirelessDisplayService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/server/WirelessDisplayService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/server/WirelessDisplayService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I

    return p1
.end method

.method static synthetic access$5300(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getEnvironmentDongleState()I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/htc/server/WirelessDisplayService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->screenOn:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/htc/server/WirelessDisplayService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayService;->screenOn:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/server/WirelessDisplayService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->setDialogResult(I)V

    return-void
.end method

.method static synthetic access$5900()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    return-object v0
.end method

.method static synthetic access$6000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    sput-object p0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    return-object p0
.end method

.method static synthetic access$6100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->initInThread()V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    return-object p1
.end method

.method private binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 1912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1913
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1915
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wifidisplay.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1916
    if-eqz p1, :cond_0

    .line 1917
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1918
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/htc/service/DongleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1923
    :goto_0
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1924
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1931
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1933
    return-void

    .line 1921
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1925
    :catch_0
    move-exception v2

    .line 1930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1930
    throw v2

    .line 1927
    :catch_1
    move-exception v2

    .line 1930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1
.end method

.method private binder_finishService()V
    .locals 5

    .prologue
    .line 1936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1937
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1939
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wifidisplay.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1940
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1941
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1950
    return-void

    .line 1947
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1947
    throw v2

    .line 1942
    :catch_0
    move-exception v2

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1944
    :catch_1
    move-exception v2

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private binder_setMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 1894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1895
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1897
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wifidisplay.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1899
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1900
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1907
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1909
    return-void

    .line 1906
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1906
    throw v2

    .line 1901
    :catch_0
    move-exception v2

    .line 1906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1903
    :catch_1
    move-exception v2

    .line 1906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private clearDongleCache()V
    .locals 5

    .prologue
    .line 2281
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2282
    const-string v2, "WirelessDisplayService"

    const-string v3, "clearDongleCache: Wivulist is already empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :cond_0
    return-void

    .line 2285
    :cond_1
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2286
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2288
    .local v0, element:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2290
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearDongleCache removing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    goto :goto_0
.end method

.method private constructDongleInfoFromWifi(Z)V
    .locals 33
    .parameter "isDongleScan"

    .prologue
    .line 2070
    const-string v28, "WirelessDisplayService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "constructDongleInfoFromWifi() dongleScan = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiManager;->getDongleScanList()Ljava/util/List;

    move-result-object v21

    .line 2075
    .local v21, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2077
    .local v8, dongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    if-eqz v21, :cond_e

    .line 2079
    const/4 v13, 0x0

    .local v13, ii:I
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v13, v0, :cond_0

    .line 2080
    const-string v29, "WirelessDisplayService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Wifi Scan Result:"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/wifi/ScanResult;

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2085
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 2086
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v18

    .line 2087
    .local v18, macs:Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2088
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2089
    .local v17, mac:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 2090
    const-string v28, "WirelessDisplayService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "constructDongleInfoFromWifi: remove:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2094
    .end local v17           #mac:Ljava/lang/String;
    .end local v18           #macs:Ljava/util/Enumeration;
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .restart local v18       #macs:Ljava/util/Enumeration;
    :cond_2
    :try_start_1
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2096
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/ScanResult;

    .line 2097
    .local v20, result:Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "[DONGLE-"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 2101
    const/4 v6, 0x0

    .line 2103
    .local v6, dongle:Lcom/htc/service/DongleInfo;
    const/16 v16, 0x0

    .line 2104
    .local v16, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2105
    .local v2, aph:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2106
    .local v3, apm:Ljava/lang/String;
    const/16 v23, 0x0

    .line 2107
    .local v23, staBssid:Ljava/lang/String;
    const/16 v27, 0x0

    .line 2110
    .local v27, version:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2111
    .local v22, ssid:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2112
    .local v4, bssid:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v12, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2113
    .local v12, ieInfo:Ljava/lang/String;
    const-string v24, ""

    .line 2118
    .local v24, state:Ljava/lang/String;
    :try_start_2
    const-string v28, "[DONGLE-"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 2119
    .local v26, subStr:Ljava/lang/String;
    const-string v28, "[DONGLE-"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 2121
    const-string v28, "-"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2122
    .local v15, items:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v28, v0

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    .line 2124
    const/16 v28, 0x1

    aget-object v27, v15, v28

    .line 2125
    const/16 v28, 0x2

    aget-object v24, v15, v28

    .line 2126
    const/16 v28, 0x3

    aget-object v2, v15, v28

    .line 2127
    const/16 v28, 0x4

    aget-object v3, v15, v28

    .line 2129
    sget-object v28, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    const/16 v29, 0x5

    aget-object v29, v15, v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 2130
    .local v19, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 2131
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 2132
    :cond_4
    const-string v28, "WirelessDisplayService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "staBssid:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    .end local v15           #items:[Ljava/lang/String;
    .end local v19           #matcher:Ljava/util/regex/Matcher;
    :cond_5
    :goto_3
    move-object/from16 v16, v23

    .line 2144
    const-string v28, "WPS"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 2145
    const/16 v25, 0x1

    .line 2161
    .local v25, status:I
    :goto_4
    if-eqz v16, :cond_11

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v6, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v6

    .line 2164
    .end local v6           #dongle:Lcom/htc/service/DongleInfo;
    .local v7, dongle:Lcom/htc/service/DongleInfo;
    :goto_5
    if-nez v7, :cond_10

    .line 2165
    :try_start_3
    new-instance v6, Lcom/htc/service/DongleInfo;

    invoke-direct {v6}, Lcom/htc/service/DongleInfo;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2166
    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v6       #dongle:Lcom/htc/service/DongleInfo;
    const/16 v28, 0x0

    :try_start_4
    move/from16 v0, v28

    iput-boolean v0, v6, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 2167
    const/16 v28, 0x0

    move/from16 v0, v28

    iput-boolean v0, v6, Lcom/htc/service/DongleInfo;->isConnectable:Z

    .line 2168
    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 2169
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    iput-wide v0, v6, Lcom/htc/service/DongleInfo;->capabilities:J

    .line 2172
    :goto_6
    iput-object v4, v6, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    .line 2173
    move-object/from16 v0, v22

    iput-object v0, v6, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 2174
    move-object/from16 v0, v22

    iput-object v0, v6, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 2175
    move/from16 v0, v25

    iput v0, v6, Lcom/htc/service/DongleInfo;->status:I

    .line 2176
    move-object/from16 v0, v27

    iput-object v0, v6, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    .line 2177
    iput-object v2, v6, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    .line 2178
    iput-object v3, v6, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    .line 2181
    const-string v28, "[DLNA-"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2182
    .local v5, dlnaIndex:I
    if-lez v5, :cond_6

    .line 2184
    add-int/lit8 v28, v5, 0x6

    add-int/lit8 v29, v5, 0xe

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2185
    .local v10, hexStr:Ljava/lang/String;
    const/16 v28, 0x10

    move/from16 v0, v28

    invoke-static {v10, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v6, Lcom/htc/service/DongleInfo;->capabilities:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2190
    .end local v5           #dlnaIndex:I
    .end local v10           #hexStr:Ljava/lang/String;
    .end local v25           #status:I
    .end local v26           #subStr:Ljava/lang/String;
    :cond_6
    :goto_7
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_7

    .line 2191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    const-string v28, "WirelessDisplayService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Adding dongle info: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v6}, Lcom/htc/service/DongleInfo;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_7
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2134
    .restart local v15       #items:[Ljava/lang/String;
    .restart local v26       #subStr:Ljava/lang/String;
    :cond_8
    :try_start_5
    array-length v0, v15

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_5

    .line 2135
    const/16 v28, 0x1

    aget-object v27, v15, v28

    .line 2136
    move-object/from16 v24, v26

    goto/16 :goto_3

    .line 2139
    .end local v15           #items:[Ljava/lang/String;
    :cond_9
    move-object/from16 v24, v22

    goto/16 :goto_3

    .line 2146
    :cond_a
    const-string v28, "UNCFG"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 2148
    const/16 v25, 0x4

    .restart local v25       #status:I
    goto/16 :goto_4

    .line 2149
    .end local v25           #status:I
    :cond_b
    const-string v28, "CFG"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v28

    if-eqz v28, :cond_c

    .line 2151
    const/16 v25, 0x3

    .restart local v25       #status:I
    goto/16 :goto_4

    .line 2153
    .end local v25           #status:I
    :cond_c
    const/16 v25, 0x2

    .restart local v25       #status:I
    goto/16 :goto_4

    .line 2158
    .end local v25           #status:I
    :cond_d
    const/16 v25, 0x0

    .restart local v25       #status:I
    goto/16 :goto_4

    .line 2187
    .end local v25           #status:I
    .end local v26           #subStr:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2188
    .local v9, e:Ljava/lang/Exception;
    :goto_8
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 2198
    .end local v2           #aph:Ljava/lang/String;
    .end local v3           #apm:Ljava/lang/String;
    .end local v4           #bssid:Ljava/lang/String;
    .end local v6           #dongle:Lcom/htc/service/DongleInfo;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #ieInfo:Ljava/lang/String;
    .end local v13           #ii:I
    .end local v16           #key:Ljava/lang/String;
    .end local v18           #macs:Ljava/util/Enumeration;
    .end local v20           #result:Landroid/net/wifi/ScanResult;
    .end local v22           #ssid:Ljava/lang/String;
    .end local v23           #staBssid:Ljava/lang/String;
    .end local v24           #state:Ljava/lang/String;
    .end local v27           #version:Ljava/lang/String;
    :cond_e
    new-instance v14, Landroid/content/Intent;

    const-string v28, "com.htc.MIRROR_DISPLAY_DONGLE_AVAILABLE"

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2199
    .local v14, intent:Landroid/content/Intent;
    const/high16 v28, 0x1000

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2200
    const-string v28, "WirelessDisplayService"

    const-string v29, "Sending intent: MIRROR_DISPLAY_DONGLE_AVAILABLE_ACTION"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2203
    sget-object v28, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 2204
    sget-object v28, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v29, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v30, 0x6f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v29 .. v32}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2207
    :cond_f
    sget-object v28, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2209
    return-void

    .line 2187
    .end local v14           #intent:Landroid/content/Intent;
    .restart local v2       #aph:Ljava/lang/String;
    .restart local v3       #apm:Ljava/lang/String;
    .restart local v4       #bssid:Ljava/lang/String;
    .restart local v7       #dongle:Lcom/htc/service/DongleInfo;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #ieInfo:Ljava/lang/String;
    .restart local v13       #ii:I
    .restart local v16       #key:Ljava/lang/String;
    .restart local v18       #macs:Ljava/util/Enumeration;
    .restart local v20       #result:Landroid/net/wifi/ScanResult;
    .restart local v22       #ssid:Ljava/lang/String;
    .restart local v23       #staBssid:Ljava/lang/String;
    .restart local v24       #state:Ljava/lang/String;
    .restart local v25       #status:I
    .restart local v26       #subStr:Ljava/lang/String;
    .restart local v27       #version:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v6, v7

    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v6       #dongle:Lcom/htc/service/DongleInfo;
    goto :goto_8

    .end local v6           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v7       #dongle:Lcom/htc/service/DongleInfo;
    :cond_10
    move-object v6, v7

    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v6       #dongle:Lcom/htc/service/DongleInfo;
    goto/16 :goto_6

    :cond_11
    move-object v7, v6

    .end local v6           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v7       #dongle:Lcom/htc/service/DongleInfo;
    goto/16 :goto_5
.end method

.method private fallBackFromAppPause()V
    .locals 6

    .prologue
    .line 2759
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2760
    .local v0, curState:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fallBackFromAppPause: curState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_0

    .line 2762
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2763
    .local v1, msgEna:Landroid/os/Message;
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v2, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2765
    .end local v1           #msgEna:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private getDialogResult()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3297
    const-string v1, "WirelessDisplayService"

    const-string v2, "getDialogResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    iget v1, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    if-ne v1, v0, :cond_0

    .line 3301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEnvironmentDongleState()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1961
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v0

    .line 1962
    .local v0, size:I
    if-nez v0, :cond_1

    .line 1963
    const/4 v1, 0x0

    .line 1971
    :cond_0
    :goto_0
    return v1

    .line 1964
    :cond_1
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1966
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1967
    const/4 v1, 0x2

    goto :goto_0

    .line 1968
    :cond_2
    if-le v0, v1, :cond_3

    .line 1969
    const/4 v1, 0x3

    goto :goto_0

    .line 1971
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private gotoPauseState()V
    .locals 3

    .prologue
    .line 3716
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 3717
    const-string v1, "WirelessDisplayService"

    const-string v2, "gotoPauseState() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->setRTPPause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3725
    :cond_0
    :goto_0
    const-string v1, "WirelessDisplayService"

    const-string v2, "gotoPauseState() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    return-void

    .line 3720
    :catch_0
    move-exception v0

    .line 3721
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "WirelessDisplayService"

    const-string v2, "mRecorder.pause(null - Runtime exception caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 2040
    new-instance v0, Lcom/htc/server/WirelessDisplayService$11;

    const-string v1, "WirelessDisplayService"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/WirelessDisplayService$11;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    .line 2047
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2049
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 2050
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2052
    :try_start_1
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2053
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2057
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 2058
    return-void

    .line 2057
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private initInThread()V
    .locals 2

    .prologue
    .line 2061
    new-instance v0, Lcom/htc/server/WirelessDisplayService$H;

    invoke-direct {v0, p0}, Lcom/htc/server/WirelessDisplayService$H;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    .line 2063
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 2064
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z

    .line 2065
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2066
    monitor-exit v1

    .line 2067
    return-void

    .line 2066
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private mirrorOnOffDirection(II)I
    .locals 4
    .parameter "absoluteDirection"
    .parameter "relativeDirection"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1980
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    move p2, p1

    .line 1990
    .end local p2
    :cond_1
    :goto_0
    return p2

    .line 1982
    .restart local p2
    :cond_2
    if-eq p2, v0, :cond_1

    if-eq p2, v1, :cond_1

    .line 1984
    if-ne p1, v2, :cond_3

    if-ne p2, v2, :cond_3

    move p2, v0

    .line 1985
    goto :goto_0

    .line 1986
    :cond_3
    if-ne p1, v3, :cond_4

    if-ne p2, v3, :cond_4

    move p2, v1

    .line 1987
    goto :goto_0

    .line 1989
    :cond_4
    const-string v0, "WirelessDisplayService"

    const-string v2, "should not be here,intent value Fail"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 1990
    goto :goto_0
.end method

.method private notifyWHDMI()V
    .locals 3

    .prologue
    .line 2434
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MIRROR_DONGLE_LIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2435
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2436
    const-string v1, "WirelessDisplayService"

    const-string v2, "Sending intent: MIRROR_DONGLE_LIST_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2438
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    .line 2439
    return-void
.end method

.method private static onCallbackEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2625
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallbackEvent()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v0, :cond_0

    .line 2627
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v0, p0}, Lcom/htc/server/WirelessDisplayService$WivuThread;->transactEvent(Ljava/lang/String;)V

    .line 2629
    :cond_0
    return-void
.end method

.method private readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filePath"

    .prologue
    .line 2476
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readConfigFile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2478
    .local v6, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 2479
    .local v1, in:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 2480
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 2483
    .local v3, line:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2484
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 2485
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2486
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2487
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2488
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading config is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    goto :goto_0

    .line 2490
    :catch_0
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .line 2491
    .end local v2           #in:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2495
    if-eqz v1, :cond_0

    .line 2497
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2502
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 2504
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2510
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 2495
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v2, :cond_3

    .line 2497
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 2502
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 2504
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_4
    :goto_5
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .line 2509
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2492
    :catch_1
    move-exception v0

    .line 2493
    .local v0, e:Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2495
    if-eqz v1, :cond_5

    .line 2497
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 2502
    :cond_5
    :goto_7
    if-eqz v4, :cond_1

    .line 2504
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    .line 2505
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_3

    .line 2495
    :catchall_0
    move-exception v7

    :goto_8
    if-eqz v1, :cond_6

    .line 2497
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 2502
    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    .line 2504
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 2495
    :cond_7
    :goto_a
    throw v7

    .line 2498
    :catch_3
    move-exception v8

    goto :goto_9

    .line 2505
    :catch_4
    move-exception v8

    goto :goto_a

    .line 2498
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v7

    goto :goto_2

    .local v0, e:Ljava/io/IOException;
    :catch_6
    move-exception v7

    goto :goto_7

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v7

    goto :goto_4

    .line 2505
    :catch_8
    move-exception v7

    goto :goto_5

    .line 2495
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_8

    .line 2492
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_a
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_6

    .line 2490
    :catch_b
    move-exception v0

    goto/16 :goto_1

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3694
    const-string v1, "WirelessDisplayService"

    const-string v2, "releaseMediaRecorder() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 3696
    const-string v1, "WirelessDisplayService"

    const-string v2, "releaseMediaRecorder! Recorder != null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3698
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3700
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3705
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3709
    :goto_1
    iput-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 3711
    :cond_0
    return-void

    .line 3701
    :catch_0
    move-exception v0

    .line 3702
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "WirelessDisplayService"

    const-string v2, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3706
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 3707
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v1, "WirelessDisplayService"

    const-string v2, "mRecorder.release() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setDialogResult(I)V
    .locals 3
    .parameter "userChoose"

    .prologue
    .line 3305
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialogResult, userChoose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 3307
    return-void
.end method

.method private setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ip"
    .parameter "audio"
    .parameter "video"

    .prologue
    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;

    .line 2636
    return-void
.end method

.method private setMirrorModeState(II)V
    .locals 12
    .parameter "mirrorState"
    .parameter "err"

    .prologue
    const/16 v11, 0x26

    const/4 v10, 0x3

    const/16 v7, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2212
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 2213
    .local v2, previousState:I
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMirrorModeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isWifiDFS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    if-ne v2, p1, :cond_0

    .line 2275
    :goto_0
    return-void

    .line 2216
    :cond_0
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2219
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2220
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2221
    const-string v4, "mirror_display_state"

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2222
    const-string v4, "mirror_display_status"

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2223
    const-string v4, "mirror_error_message"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2225
    if-eq p1, v9, :cond_1

    if-ne p1, v10, :cond_3

    .line 2227
    :cond_1
    if-ne p1, v9, :cond_6

    .line 2228
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2229
    iput-boolean v8, p0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 2231
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v4, v11, :cond_2

    .line 2232
    const-string v4, "WirelessDisplayService"

    const-string v5, "NV workaround: Resume NV Eack when leaving Wireless Display"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->wivuNVEackState(I)I

    .line 2236
    :cond_2
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2237
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v4, v7, v8, v8}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2238
    .local v1, msg:Landroid/os/Message;
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v4, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2260
    .end local v1           #msg:Landroid/os/Message;
    :goto_1
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    .line 2266
    :cond_3
    if-eq p1, v10, :cond_4

    const/4 v4, 0x7

    if-eq p1, v4, :cond_4

    const/16 v4, 0x8

    if-eq p1, v4, :cond_4

    const/4 v4, 0x2

    if-ne p1, v4, :cond_8

    .line 2267
    :cond_4
    const-string v4, "WirelessDisplayService"

    const-string v5, "Disable wifi background/roming scanning during Mirror Mode."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v9}, Landroid/net/wifi/WifiManager;->setWifiDisplayUnscan(Z)Z

    .line 2274
    :goto_2
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2241
    :cond_5
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v5, v7, v8, v8}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0x927c0

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 2244
    :cond_6
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2245
    iput-boolean v9, p0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 2246
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v4, v7}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 2248
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v4, v11, :cond_7

    .line 2249
    const-string v4, "WirelessDisplayService"

    const-string v5, "NV workaround: Disable NV Eack during Wireless Display"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->wivuNVEackState(I)I

    .line 2253
    :cond_7
    const-string v4, "WirelessDisplayService"

    const-string v5, "Pre Load DLNA Services for Mirror Mode Enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    :try_start_0
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2256
    :catch_0
    move-exception v3

    .line 2257
    .local v3, se:Ljava/lang/SecurityException;
    const-string v4, "WirelessDisplayService"

    const-string v5, "Pre Load DLNA Services occur SecurityException "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2270
    .end local v3           #se:Ljava/lang/SecurityException;
    :cond_8
    const-string v4, "WirelessDisplayService"

    const-string v5, "Resume wifi background/roming scanning during Mirror Mode."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiManager;->setWifiDisplayUnscan(Z)Z

    goto :goto_2
.end method

.method private startDisplayRecorder(Ljava/lang/String;)I
    .locals 18
    .parameter "ipAndPort"

    .prologue
    .line 3583
    const-string v14, "WirelessDisplayService"

    const-string v15, "startDisplayRecorder - start"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v14, :cond_1

    .line 3586
    new-instance v14, Landroid/media/MediaRecorder;

    invoke-direct {v14}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 3587
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 3595
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 3596
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 3597
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v15, 0xb

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 3598
    const-string v14, "WirelessDisplayService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IP/Port is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3600
    .local v11, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14, v11}, Landroid/media/MediaRecorder;->setRTPParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3620
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const v15, 0xfa00

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 3621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v15, 0x1f40

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 3622
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 3623
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 3625
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/server/WirelessDisplayService;->mBitrate:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 3626
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/server/WirelessDisplayService;->mInterval:F

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoIFrameInterval(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3631
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/server/WirelessDisplayService;->mFrameRate:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 3633
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 3634
    .local v4, display:Landroid/view/Display;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 3635
    .local v9, outSize:Landroid/graphics/Point;
    invoke-virtual {v4, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3636
    const-string v14, "WirelessDisplayService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RealScreenSize: width = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "height = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    const/16 v13, 0x3c0

    .line 3639
    .local v13, vdoWidth:I
    const/16 v12, 0x220

    .line 3640
    .local v12, vdoHeight:I
    const v14, 0x7f800

    int-to-long v1, v14

    .line 3641
    .local v1, defaultRes:J
    iget v14, v9, Landroid/graphics/Point;->x:I

    iget v15, v9, Landroid/graphics/Point;->y:I

    mul-int/2addr v14, v15

    int-to-long v5, v14

    .line 3644
    .local v5, displayRes:J
    const-string v14, "ro.board.platform"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3645
    .local v3, device:Ljava/lang/String;
    const-string v14, "WirelessDisplayService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Platform is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    const-wide/16 v14, 0x3

    mul-long/2addr v14, v1

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    cmp-long v14, v14, v5

    if-gez v14, :cond_0

    .line 3647
    const/16 v13, 0x500

    .line 3648
    const-string v14, "tegra"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3649
    const/16 v12, 0x2d0

    .line 3654
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14, v13, v12}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 3655
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 3658
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->prepare(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3670
    :try_start_3
    sget-object v14, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    if-nez v14, :cond_3

    .line 3671
    const-string v14, "WirelessDisplayService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Need Delay Mirror Media, DLNA: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , isResume"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setDLNADelay(Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3681
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/WirelessDisplayService;->mInfoListener:Lcom/htc/server/WirelessDisplayService$InfoListener;

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3682
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/WirelessDisplayService;->mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3683
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14}, Landroid/media/MediaRecorder;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 3689
    const-string v14, "WirelessDisplayService"

    const-string v15, "startDisplayRecorder - end"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    const/4 v14, 0x0

    .end local v1           #defaultRes:J
    .end local v3           #device:Ljava/lang/String;
    .end local v4           #display:Landroid/view/Display;
    .end local v5           #displayRes:J
    .end local v9           #outSize:Landroid/graphics/Point;
    .end local v11           #tmp:Ljava/lang/String;
    .end local v12           #vdoHeight:I
    .end local v13           #vdoWidth:I
    :goto_3
    return v14

    .line 3589
    :cond_1
    const-string v14, "WirelessDisplayService"

    const-string v15, "Media Recorder already running"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    const/4 v14, 0x0

    goto :goto_3

    .line 3602
    :catch_0
    move-exception v8

    .line 3603
    .local v8, exception:Ljava/lang/Exception;
    const-string v14, "WirelessDisplayService"

    const-string v15, "mRecorder.setParameters() failed"

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3604
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 3605
    const/4 v14, -0x1

    goto :goto_3

    .line 3627
    .end local v8           #exception:Ljava/lang/Exception;
    .restart local v11       #tmp:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 3628
    .restart local v8       #exception:Ljava/lang/Exception;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 3629
    const-string v14, "WirelessDisplayService"

    const-string v15, "mRecorder.setParameters() failed"

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3650
    .end local v8           #exception:Ljava/lang/Exception;
    .restart local v1       #defaultRes:J
    .restart local v3       #device:Ljava/lang/String;
    .restart local v4       #display:Landroid/view/Display;
    .restart local v5       #displayRes:J
    .restart local v9       #outSize:Landroid/graphics/Point;
    .restart local v12       #vdoHeight:I
    .restart local v13       #vdoWidth:I
    :cond_2
    const-string v14, "msm8960"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3651
    const/16 v12, 0x2e0

    goto/16 :goto_1

    .line 3659
    :catch_2
    move-exception v7

    .line 3660
    .local v7, ex:Ljava/lang/Exception;
    const-string v14, "WirelessDisplayService"

    const-string v15, "mRecorder.prepare() failed"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3661
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 3662
    const/4 v14, -0x1

    goto :goto_3

    .line 3674
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setDLNADelay(Z)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 3676
    :catch_3
    move-exception v10

    .line 3677
    .local v10, rex:Ljava/lang/RuntimeException;
    const-string v14, "WirelessDisplayService"

    const-string v15, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v14, v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3684
    .end local v10           #rex:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v7

    .line 3685
    .restart local v7       #ex:Ljava/lang/Exception;
    const-string v14, "WirelessDisplayService"

    const-string v15, "mRecorder.prepare() setOnInfoListener/start"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3686
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 3687
    const/4 v14, -0x1

    goto :goto_3
.end method

.method private stopDisplayRecorder()I
    .locals 2

    .prologue
    .line 3756
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 3757
    const-string v0, "WirelessDisplayService"

    const-string v1, "stopDisplayRecorder end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    const/4 v0, 0x0

    return v0
.end method

.method private updateNotification()V
    .locals 8

    .prologue
    .line 2591
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 2596
    .local v3, mirrorOn:Z
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mNotifyUpgrade:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2597
    if-eqz v3, :cond_0

    .line 2598
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v1

    .line 2599
    .local v1, dongleInfo:Lcom/htc/service/DongleInfo;
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    invoke-virtual {v1}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/service/DongleInfo;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/server/WirelessDisplayNotification;->notifyFirmwareUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    .end local v1           #dongleInfo:Lcom/htc/service/DongleInfo;
    :cond_0
    :goto_0
    return-void

    .line 2602
    :cond_1
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v0

    .line 2603
    .local v0, dongleCount:I
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    .line 2605
    .local v4, wifiOn:Z
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 2616
    .local v2, mDongleInfos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    invoke-virtual {v5, v3, v0, v4, v2}, Lcom/htc/server/WirelessDisplayNotification;->updateNotification(ZIZLjava/util/List;)V

    goto :goto_0
.end method

.method private updateWivuList([Ljava/lang/String;)V
    .locals 13
    .parameter "macs"

    .prologue
    .line 2304
    const/4 v9, 0x1

    aget-object v9, p1, v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2305
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:ther is no dongle in list"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2308
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2309
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2310
    .local v1, element:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2312
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removing:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    .line 2316
    :cond_1
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2317
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    .line 2319
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList: curDongle is been removed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, -0x6

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 2321
    .local v7, m2:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2326
    .end local v7           #m2:Landroid/os/Message;
    :cond_2
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    .line 2327
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    goto :goto_0

    .line 2331
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 2332
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    .line 2390
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    return-void

    .line 2334
    :cond_5
    const/4 v9, 0x1

    aget-object v9, p1, v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2335
    .local v0, addrs:[Ljava/lang/String;
    array-length v6, v0

    .line 2336
    .local v6, length:I
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWivuList:Total Dongles in Network:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v6, v9, :cond_9

    .line 2340
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:Add New Dongle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v6, :cond_6

    .line 2342
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v10, v0, v5

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 2343
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get dongle info:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    aget-object v10, v0, v5

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDongleInfo(Ljava/lang/String;)I

    .line 2379
    .end local v5           #j:I
    :cond_6
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 2380
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v9, v0

    if-ge v3, v9, :cond_4

    .line 2381
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MAC Addr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    aget-object v10, v0, v3

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 2384
    .local v8, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2385
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWivuList: Add dongle to WIvu list:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v10, v0, v3

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2380
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2341
    .end local v3           #i:I
    .end local v8           #matcher:Ljava/util/regex/Matcher;
    .restart local v5       #j:I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 2349
    .end local v5           #j:I
    :cond_9
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_6

    .line 2350
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:Remove dongle from List"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_3
    if-ge v5, v6, :cond_a

    .line 2353
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v10, v0, v5

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2352
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2355
    :cond_a
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2356
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2357
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2358
    .local v2, element2:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2360
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWivuList:removing:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    .line 2366
    :cond_c
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2367
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d

    .line 2369
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, -0x6

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 2370
    .restart local v7       #m2:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2371
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList2: curDongle is been removed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    .end local v7           #m2:Landroid/os/Message;
    :cond_d
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    .line 2374
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    goto :goto_4
.end method

.method private updteDongleInfo(Ljava/lang/String;)V
    .locals 9
    .parameter "stat"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2398
    if-nez p1, :cond_1

    .line 2431
    :cond_0
    :goto_0
    return-void

    .line 2400
    :cond_1
    const-string v4, "WirelessDisplayService"

    const-string v5, "updteDongleInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    const-string v4, "VALUE="

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2404
    .local v3, sep:[Ljava/lang/String;
    array-length v4, v3

    if-le v4, v7, :cond_0

    .line 2405
    aget-object v4, v3, v7

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2406
    .local v2, infos:[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v7, :cond_0

    .line 2407
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2408
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updteDongleInfo: Modifying WIFI scan list ip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 2410
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    iput-boolean v7, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 2411
    aget-object v4, v2, v7

    iput-object v4, v0, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 2428
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :goto_1
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    goto :goto_0

    .line 2414
    :cond_2
    const-string v4, "WirelessDisplayService"

    const-string v5, "updteDongleInfo: New dongle is added"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    new-instance v1, Lcom/htc/service/DongleInfo;

    invoke-direct {v1}, Lcom/htc/service/DongleInfo;-><init>()V

    .line 2416
    .local v1, dongle2:Lcom/htc/service/DongleInfo;
    aget-object v4, v2, v7

    iput-object v4, v1, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 2417
    const-string v4, "UNKNOWN"

    iput-object v4, v1, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 2418
    array-length v4, v2

    if-le v4, v6, :cond_3

    .line 2419
    aget-object v4, v2, v6

    iput-object v4, v1, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 2420
    aget-object v4, v2, v6

    iput-object v4, v1, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 2422
    :cond_3
    iput v6, v1, Lcom/htc/service/DongleInfo;->status:I

    .line 2423
    aget-object v4, v2, v8

    iput-object v4, v1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 2424
    iput-boolean v7, v1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 2425
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    aget-object v5, v2, v8

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static native wivuIpcExit()I
.end method

.method static native wivuIpcInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native wivuNVEackState(I)I
.end method

.method static native wivuSQoSStart()Z
.end method

.method static native wivuSQoSStop()Z
.end method

.method private writeConcurrentAPMacAddress()Z
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 2442
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sys/class/net/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/address"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2443
    .local v2, mConcurrent_AP_MAC_FilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/misc/wifidisplay.conf"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2444
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1b6

    invoke-static {v7, v8, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2445
    const/4 v5, 0x0

    .line 2446
    .local v5, writer:Ljava/io/FileWriter;
    const/4 v4, 0x0

    .line 2448
    .local v4, ret:Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2449
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2450
    new-instance v6, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2451
    .end local v5           #writer:Ljava/io/FileWriter;
    .local v6, writer:Ljava/io/FileWriter;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 2452
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configuration file doesn\'t exist, create a new one, mAP_M_MACAdderss: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 2454
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2456
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2457
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v6

    .line 2463
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :goto_0
    const/4 v4, 0x1

    .line 2464
    :try_start_2
    const-string v7, "WirelessDisplayService"

    const-string v8, "writeConcurrentAPMacAddress() done."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    :goto_1
    return v4

    .line 2460
    :cond_1
    const-string v7, "/data/misc/wifidisplay.conf"

    invoke-direct {p0, v7}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2461
    .local v3, previousResult:Ljava/lang/String;
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writeConcurrentAPMacAddress already existed, MAC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2465
    .end local v3           #previousResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2466
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const/4 v4, 0x0

    .line 2471
    goto :goto_1

    .line 2468
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 2469
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    const/4 v4, 0x0

    goto :goto_1

    .line 2468
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 2465
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public getConnectedDongleIP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2842
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2845
    :goto_0
    return-object v0

    .line 2844
    :cond_0
    sget-object v1, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    monitor-enter v1

    .line 2845
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 2846
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectedDongleIPLong()J
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2854
    const-string v9, "WirelessDisplayService"

    const-string v10, "getConnectedDongleIPLong"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    const-wide/16 v2, 0x0

    .line 2857
    .local v2, num:J
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    if-nez v9, :cond_0

    move-wide v4, v2

    .line 2885
    .end local v2           #num:J
    .local v4, num:J
    :goto_0
    return-wide v4

    .line 2859
    .end local v4           #num:J
    .restart local v2       #num:J
    :cond_0
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    monitor-enter v10

    .line 2861
    :try_start_0
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 2862
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    const-string v11, "\\."

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2863
    .local v0, addrArray:[Ljava/lang/String;
    const/16 v6, 0x20

    .line 2865
    .local v6, offset:I
    array-length v9, v0

    add-int/lit8 v1, v9, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 2869
    add-int/lit8 v6, v6, -0x8

    .line 2871
    aget-object v9, v0, v1

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2875
    .local v7, token:J
    const-wide/16 v11, 0x0

    cmp-long v9, v7, v11

    if-ltz v9, :cond_1

    const-wide/16 v11, 0x100

    cmp-long v9, v7, v11

    if-ltz v9, :cond_4

    .line 2876
    :cond_1
    const-wide/16 v2, -0x1

    .line 2881
    .end local v7           #token:J
    :cond_2
    const-string v9, "WirelessDisplayService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "long value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    .end local v0           #addrArray:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v6           #offset:I
    :cond_3
    monitor-exit v10

    move-wide v4, v2

    .line 2885
    .end local v2           #num:J
    .restart local v4       #num:J
    goto :goto_0

    .line 2879
    .end local v4           #num:J
    .restart local v0       #addrArray:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #num:J
    .restart local v6       #offset:I
    .restart local v7       #token:J
    :cond_4
    shl-long v11, v7, v6

    add-long/2addr v2, v11

    .line 2865
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2883
    .end local v0           #addrArray:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v6           #offset:I
    .end local v7           #token:J
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public getDLNAPreloadEnable()Z
    .locals 3

    .prologue
    .line 3323
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDLNAPreloadEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getDefaultDongle()Lcom/htc/service/DongleInfo;
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 3125
    const/4 v1, 0x0

    .line 3127
    .local v1, dong:Lcom/htc/service/DongleInfo;
    :try_start_0
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3128
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultDongle , curDongle Bssid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v1, v0

    move-object v6, v1

    .line 3174
    :goto_0
    return-object v6

    .line 3132
    :cond_0
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3133
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/service/DongleInfo;

    .line 3134
    .local v6, tempLastDongle:Lcom/htc/service/DongleInfo;
    if-eqz v6, :cond_2

    .line 3135
    iget v7, v6, Lcom/htc/service/DongleInfo;->status:I

    if-eq v7, v9, :cond_1

    iget-boolean v7, v6, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 3136
    :cond_1
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultDongle , lastDongle Bssid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3170
    .end local v6           #tempLastDongle:Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v4

    .line 3171
    .local v4, npe:Ljava/lang/NullPointerException;
    const-string v7, "WirelessDisplayService"

    const-string v8, "NullPointerException, getDefaultDongle : null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    const/4 v6, 0x0

    goto :goto_0

    .line 3142
    .end local v4           #npe:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3143
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 3144
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 3145
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 3146
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v1, v0

    .line 3147
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultDongle form wivu , Bssid :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/htc/service/DongleInfo;->getBssid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 3168
    const-string v7, "WirelessDisplayService"

    const-string v8, "getDefaultDongle : null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v6, v1

    .line 3174
    goto/16 :goto_0

    .line 3143
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3154
    .end local v3           #i:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 3155
    .local v2, dongleList:Ljava/util/List;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 3156
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 3157
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/DongleInfo;

    .line 3158
    .local v5, pair_dongle:Lcom/htc/service/DongleInfo;
    iget v7, v5, Lcom/htc/service/DongleInfo;->status:I

    if-ne v7, v9, :cond_7

    .line 3159
    move-object v1, v5

    .line 3160
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultDongle form paired , Bssid :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/htc/service/DongleInfo;->getBssid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3155
    .end local v5           #pair_dongle:Lcom/htc/service/DongleInfo;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public getDiscoveryDongleList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2944
    const-string v4, "WirelessDisplayService"

    const-string v5, "getDiscoveryDongleList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2946
    .local v3, sendToAPP:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    monitor-enter v5

    .line 2947
    :try_start_0
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 2948
    .local v2, macs:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2949
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2950
    .local v1, mac:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 2951
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 2952
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2956
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    .end local v1           #mac:Ljava/lang/String;
    .end local v2           #macs:Ljava/util/Enumeration;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #macs:Ljava/util/Enumeration;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2957
    return-object v3
.end method

.method public getFingerGestureEnable()Z
    .locals 3

    .prologue
    .line 3311
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFingerGestureEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMirrorDisplayStatus()Z
    .locals 5

    .prologue
    .line 2827
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2828
    .local v0, curstate:I
    const/4 v1, 0x0

    .line 2829
    .local v1, ret:Z
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMirrorDisplayStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "curState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2831
    :cond_0
    const/4 v1, 0x0

    .line 2838
    :goto_0
    return v1

    .line 2833
    :cond_1
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2834
    const/4 v1, 0x1

    goto :goto_0

    .line 2836
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMirrorModeState()I
    .locals 1

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getunConfigDongleList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2964
    const-string v3, "WirelessDisplayService"

    const-string v4, "getunConfigDongleList()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2966
    .local v2, unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/DongleInfo;

    .line 2967
    .local v1, info:Lcom/htc/service/DongleInfo;
    iget v3, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 2968
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2971
    .end local v1           #info:Lcom/htc/service/DongleInfo;
    :cond_2
    return-object v2
.end method

.method public mirrorModeStartStop(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    .line 2900
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v5

    .line 2901
    .local v5, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v3

    .line 2902
    .local v3, pid:I
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2903
    const-string v6, "WirelessDisplayService"

    const-string v7, "MHL/HDMI is Plugged"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->msgHDMIToast()V

    .line 2905
    const/4 v6, 0x0

    .line 2935
    :cond_0
    :goto_0
    return v6

    .line 2907
    :cond_1
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mirrorModeStartStop:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Pid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,Uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 2910
    :cond_3
    const-string v7, "WirelessDisplayService"

    const-string v8, "Already in the target state"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2914
    :cond_4
    const/4 v4, -0x1

    .line 2915
    .local v4, ret:I
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v7, :cond_6

    .line 2917
    const/4 v0, -0x1

    .line 2919
    .local v0, arg:I
    if-eqz p1, :cond_5

    .line 2920
    const/4 v0, 0x1

    .line 2921
    :cond_5
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v8, 0x1f

    const/16 v9, 0x21

    invoke-virtual {v7, v8, v9, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2922
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2924
    .end local v0           #arg:I
    .end local v1           #m:Landroid/os/Message;
    :cond_6
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2925
    if-nez p1, :cond_7

    .line 2926
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2929
    :cond_7
    if-nez p1, :cond_0

    .line 2930
    const-string v7, "WirelessDisplayService"

    const-string v8, "Notify DLNA Service mirror mode off"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.internal.app.intent.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2932
    .local v2, notifyDLNA:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public mirrorNow()V
    .locals 7

    .prologue
    .line 3336
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 3337
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 3338
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mirrorNow uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x6f

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3340
    return-void
.end method

.method public msgHDMIToast()V
    .locals 2

    .prologue
    .line 3108
    const-string v0, "WirelessDisplayService"

    const-string v1, "msgHDMIToast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    return-void
.end method

.method public notifyUserUnConfigDoneleResult(Z)V
    .locals 14
    .parameter "result"

    .prologue
    .line 1999
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v7

    .line 2000
    .local v7, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v6

    .line 2001
    .local v6, pid:I
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v9

    .line 2003
    .local v9, unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    const-string v10, "WirelessDisplayService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyUserUnConfigDoneleResult, result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Pid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", unConfigDongleCount "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    if-eqz p1, :cond_2

    .line 2005
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 2006
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/service/DongleInfo;

    if-eqz v10, :cond_0

    .line 2007
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2008
    .local v4, notifyConfigToolToConfig:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/service/DongleInfo;

    .line 2009
    .local v8, unConfigDongle:Lcom/htc/service/DongleInfo;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2010
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "DONGLE_MAC"

    iget-object v11, v8, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2012
    const/high16 v10, 0x1000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2014
    :try_start_0
    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2035
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #notifyConfigToolToConfig:Landroid/content/Intent;
    .end local v8           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :cond_0
    :goto_0
    return-void

    .line 2015
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #notifyConfigToolToConfig:Landroid/content/Intent;
    .restart local v8       #unConfigDongle:Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v0

    .line 2016
    .local v0, ae:Landroid/content/ActivityNotFoundException;
    const-string v10, "WirelessDisplayService"

    const-string v11, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2020
    .end local v0           #ae:Landroid/content/ActivityNotFoundException;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #notifyConfigToolToConfig:Landroid/content/Intent;
    .end local v8           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2021
    .local v5, notifyConfigerTool:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2023
    :try_start_1
    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2024
    :catch_1
    move-exception v0

    .line 2025
    .restart local v0       #ae:Landroid/content/ActivityNotFoundException;
    const-string v10, "WirelessDisplayService"

    const-string v11, "ActivityNotFoundException, intent: notifyConfigerTool"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2030
    .end local v0           #ae:Landroid/content/ActivityNotFoundException;
    .end local v5           #notifyConfigerTool:Landroid/content/Intent;
    :cond_2
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v11, 0xb

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 2031
    .local v2, msgBindWfdService:Landroid/os/Message;
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v10, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2032
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v11, 0x70

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2033
    .local v3, msgUseWfdService:Landroid/os/Message;
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v11, 0xc8

    invoke-virtual {v10, v3, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public playOnTV(Z)I
    .locals 12
    .parameter "enable"

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 2768
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v5

    .line 2769
    .local v5, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v2

    .line 2770
    .local v2, pid:I
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playOnTV(), value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,Uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    const/4 v4, -0x1

    .line 2773
    .local v4, ret:I
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 2776
    .local v3, previousState:I
    if-ne v3, v9, :cond_1

    .line 2777
    const/4 v4, -0x1

    .line 2817
    :cond_0
    :goto_0
    return v4

    .line 2778
    :cond_1
    if-eqz p1, :cond_5

    .line 2779
    if-ne v3, v11, :cond_4

    .line 2781
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/16 v7, 0x49

    if-ne v6, v7, :cond_3

    .line 2782
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v7, 0x1f

    const/16 v8, 0x21

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2784
    .local v1, msg2:Landroid/os/Message;
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v6, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2792
    .end local v1           #msg2:Landroid/os/Message;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2789
    :cond_3
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_2

    .line 2790
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v7, 0x48

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 2793
    :cond_4
    if-ne v3, v10, :cond_0

    .line 2794
    const/4 v4, 0x0

    goto :goto_0

    .line 2797
    :cond_5
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    .line 2806
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v11, v7}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2807
    .local v0, msg:Landroid/os/Message;
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v6, v0}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2809
    .end local v0           #msg:Landroid/os/Message;
    :cond_6
    if-ne v3, v10, :cond_7

    .line 2811
    const/4 v4, 0x0

    goto :goto_0

    .line 2812
    :cond_7
    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 2814
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public popDialog()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 3257
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v4

    .line 3258
    .local v4, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v2

    .line 3259
    .local v2, pid:I
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "popDialog , getDefaultOption"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/app/OutputTVActivity;->getDefaultOption(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isPopDialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,Uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/app/OutputTVActivity;->getDefaultOption(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 3292
    :goto_0
    return v5

    .line 3269
    :cond_0
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3270
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getDialogResult()Z

    move-result v5

    goto :goto_0

    .line 3273
    :cond_1
    iput v9, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 3275
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.internal.app.intent.WIRELESS_DISPLAY_OUTPUTTV_SHOW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3276
    .local v3, popDialogIntent:Landroid/content/Intent;
    const-string v6, "WirelessDisplayService"

    const-string v7, "Sending intent: INTENT_WIRELESS_DISPLAY_OUTPUTTV_SHOW"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3279
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v6, 0x33

    if-ge v1, v6, :cond_2

    .line 3280
    iget v6, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    if-eq v6, v9, :cond_3

    .line 3281
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user click, dialogResult: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    :cond_2
    :goto_2
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3292
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getDialogResult()Z

    move-result v5

    goto :goto_0

    .line 3285
    :cond_3
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3279
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3286
    :catch_0
    move-exception v0

    .line 3287
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "WirelessDisplayService"

    const-string v7, "sleep() error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public requestWivuDiscovery(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "nwif"
    .parameter "group"
    .parameter "auto"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2977
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v4

    .line 2978
    .local v4, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v3

    .line 2979
    .local v3, pid:I
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestWivuDiscovery() interface = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", group = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,Uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    const/4 v0, -0x1

    .line 2981
    .local v0, arg2:I
    if-eqz p3, :cond_0

    .line 2982
    const-string v5, "WirelessDisplayService"

    const-string v6, "auto is TRUE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    const/4 v0, 0x1

    .line 2984
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2988
    :cond_0
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-nez v5, :cond_2

    .line 2989
    new-instance v5, Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-direct {v5, p0, p1, p2}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 2990
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 2991
    const-string v5, "WirelessDisplayService"

    const-string v6, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 2995
    :cond_1
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x1f

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2996
    .local v1, msg1:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v1, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3020
    .end local v1           #msg1:Landroid/os/Message;
    :goto_0
    return-void

    .line 2999
    :cond_2
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getWivuInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3000
    const-string v5, "WirelessDisplayService"

    const-string v6, "Re-create wivu thread due to different network interface detected."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3003
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 3004
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3005
    new-instance v5, Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-direct {v5, p0, p1, p2}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3006
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 3007
    const-string v5, "WirelessDisplayService"

    const-string v6, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3011
    :cond_3
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x1f

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3012
    .local v2, msg2:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v2, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3016
    .end local v2           #msg2:Landroid/os/Message;
    :cond_4
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x1f

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3017
    .restart local v1       #msg1:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v5, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public selectDongle(Ljava/lang/String;)V
    .locals 17
    .parameter "Bssid"

    .prologue
    .line 3025
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v12

    .line 3026
    .local v12, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v9

    .line 3027
    .local v9, pid:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 3029
    .local v4, curState:I
    const-string v13, "WirelessDisplayService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "selectDongle:Bssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " state:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Pid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,Uid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    if-nez p1, :cond_0

    .line 3102
    :goto_0
    return-void

    .line 3032
    :cond_0
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3033
    const-string v13, "WirelessDisplayService"

    const-string v14, "MHL/HDMI is Plugged"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    invoke-virtual/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->msgHDMIToast()V

    goto :goto_0

    .line 3038
    :cond_1
    move-object/from16 v2, p1

    .line 3039
    .local v2, bssid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3040
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/DongleInfo;

    .line 3041
    .local v3, curDong:Lcom/htc/service/DongleInfo;
    if-nez v3, :cond_4

    .line 3042
    const-string v13, "WirelessDisplayService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "curDong is nULL why? :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v13, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/DongleInfo;

    .line 3044
    .local v5, don2:Lcom/htc/service/DongleInfo;
    if-nez v5, :cond_2

    .line 3045
    const-string v13, "WirelessDisplayService"

    const-string v14, "don2 is nULL why?"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    .end local v3           #curDong:Lcom/htc/service/DongleInfo;
    .end local v5           #don2:Lcom/htc/service/DongleInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const/4 v13, 0x3

    if-eq v4, v13, :cond_3

    const/4 v13, 0x2

    if-eq v4, v13, :cond_3

    const/4 v13, 0x6

    if-ne v4, v13, :cond_6

    .line 3066
    :cond_3
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle: Switching Dongle"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    invoke-virtual {v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3068
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    const/16 v15, 0x21

    const/16 v16, -0x1

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 3069
    .local v10, plug:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 3070
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    sput-object v13, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    .line 3071
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    goto/16 :goto_0

    .line 3047
    .end local v10           #plug:Landroid/os/Message;
    .restart local v3       #curDong:Lcom/htc/service/DongleInfo;
    :cond_4
    iget-boolean v13, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3049
    const/4 v13, 0x1

    if-ne v4, v13, :cond_5

    .line 3050
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle:Using MirrorStartStop"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    .line 3053
    :cond_5
    const-string v13, "WirelessDisplayService"

    const-string v14, "Dongle is Already Selected"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3073
    .end local v3           #curDong:Lcom/htc/service/DongleInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3075
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle:wivulist contains the dongle"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3077
    .local v1, b:Landroid/os/Bundle;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    const/16 v15, 0x25

    const/16 v16, -0x1

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 3078
    .local v6, m:Landroid/os/Message;
    const-string v13, "dongle_bssid"

    invoke-virtual {v1, v13, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v6, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3080
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3081
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 3082
    .local v8, m2:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 3083
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3085
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, -0x6

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    .line 3086
    .local v11, timeOut2:Landroid/os/Message;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v14, 0x15f90

    invoke-virtual {v13, v11, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3093
    .end local v1           #b:Landroid/os/Bundle;
    .end local v6           #m:Landroid/os/Message;
    .end local v8           #m2:Landroid/os/Message;
    .end local v11           #timeOut2:Landroid/os/Message;
    :cond_7
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle: Dongle is not in Wivu List"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    .line 3095
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 3096
    .local v7, m1:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 3098
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, -0x6

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 3099
    .restart local v8       #m2:Landroid/os/Message;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v14, 0x15f90

    invoke-virtual {v13, v8, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public setDLNAPreloadEnable(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 3328
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 3329
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 3330
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDLNAPreloadEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3332
    return-void
.end method

.method public setFingerGestureEnable(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 3316
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 3317
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 3318
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFingerGestureEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3320
    return-void
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 12
    .parameter "nwif"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 3191
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v6

    .line 3192
    .local v6, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v4

    .line 3193
    .local v4, pid:I
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 3194
    .local v1, curState:I
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setInterface:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Pid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,Uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curState"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    if-eqz p1, :cond_1

    .line 3196
    move-object v2, p1

    .line 3197
    .local v2, local:Ljava/lang/String;
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-nez v7, :cond_2

    .line 3198
    new-instance v7, Lcom/htc/server/WirelessDisplayService$WivuThread;

    const-string v8, "3655"

    invoke-direct {v7, p0, v2, v8}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3199
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v7}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 3200
    const-string v7, "WirelessDisplayService"

    const-string v8, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    const/4 v7, 0x0

    sput-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 3204
    :cond_0
    iput-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 3236
    .end local v2           #local:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3206
    .restart local v2       #local:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 3207
    const-string v7, "WirelessDisplayService"

    const-string v8, "setInterface:Interface change"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3209
    const-string v7, "WirelessDisplayService"

    const-string v8, "setInterface:clearing dongle lists: Change in interface"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    const/16 v7, 0x8

    if-ne v1, v7, :cond_3

    .line 3211
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3212
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v7, v10}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3217
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v8, 0x0

    invoke-virtual {v7, v10, v10, v8}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 3218
    .local v3, msg:Landroid/os/Message;
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v7, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3221
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3222
    .local v0, b:Landroid/os/Bundle;
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v8, 0x1f

    const/16 v9, 0x27

    invoke-virtual {v7, v8, v9, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 3223
    .local v5, setif:Landroid/os/Message;
    const-string v7, "interface"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3225
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 3227
    iput-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 3228
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 3229
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->clear()V

    goto :goto_0
.end method

.method public setL2peApInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "ssid"

    .prologue
    .line 3183
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 3184
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 3185
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setL2peApInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    const-string v2, "sys.wfd.ap"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3187
    return-void
.end method

.method public setMirrorDisplayOnOff(Z)I
    .locals 13
    .parameter "enable"

    .prologue
    .line 2639
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v8

    .line 2640
    .local v8, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v5

    .line 2643
    .local v5, pid:I
    const/4 v7, -0x1

    .line 2644
    .local v7, ret:I
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    .line 2645
    .local v6, previousState:I
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2647
    .local v0, condState:I
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setMirrorDisplayOnOff(), value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Pid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,Uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", State="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " condState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    .line 2650
    const-string v9, "WirelessDisplayService"

    const-string v10, "Mirror is DISABLED already"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    const/4 v7, -0x1

    .line 2755
    :cond_0
    :goto_0
    return v7

    .line 2652
    :cond_1
    if-eqz p1, :cond_d

    .line 2653
    const/4 v9, 0x7

    if-ne v6, v9, :cond_6

    .line 2655
    const/4 v9, 0x4

    if-ne v0, v9, :cond_3

    .line 2656
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v10, 0x1f

    const/16 v11, 0x21

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 2657
    .local v2, msg2:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v9, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2658
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2659
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V

    .line 2673
    .end local v2           #msg2:Landroid/os/Message;
    :cond_2
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2661
    :cond_3
    const/4 v9, 0x6

    if-ne v0, v9, :cond_4

    .line 2662
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2663
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2664
    :cond_4
    const/4 v9, 0x7

    if-ne v0, v9, :cond_5

    .line 2665
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2666
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2667
    :cond_5
    const/4 v9, 0x5

    if-ne v0, v9, :cond_2

    .line 2668
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2669
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2671
    .local v4, msgTimeOut:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v10, 0x1d4c0

    invoke-virtual {v9, v4, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 2674
    .end local v4           #msgTimeOut:Landroid/os/Message;
    :cond_6
    const/4 v9, 0x2

    if-ne v6, v9, :cond_7

    .line 2675
    const/4 v7, 0x0

    goto :goto_0

    .line 2676
    :cond_7
    const/4 v9, 0x4

    if-ne v6, v9, :cond_a

    .line 2678
    const/4 v9, 0x5

    if-ne v0, v9, :cond_8

    .line 2679
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2680
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2681
    :cond_8
    const/4 v9, 0x7

    if-ne v0, v9, :cond_9

    .line 2682
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2683
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2684
    :cond_9
    const/4 v9, 0x4

    if-ne v0, v9, :cond_0

    .line 2685
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v10, 0x29

    const/16 v11, 0x2a

    const/16 v12, 0x2d

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2686
    .local v1, msg:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v1, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2687
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2688
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2690
    .end local v1           #msg:Landroid/os/Message;
    :cond_a
    const/16 v9, 0x9

    if-ne v6, v9, :cond_0

    .line 2691
    const/4 v9, 0x6

    if-ne v0, v9, :cond_b

    .line 2692
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2693
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2694
    :cond_b
    const/4 v9, 0x7

    if-ne v0, v9, :cond_c

    .line 2695
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2696
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2697
    :cond_c
    const/4 v9, 0x4

    if-ne v0, v9, :cond_0

    .line 2698
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v10, 0x29

    const/16 v11, 0x2a

    const/16 v12, 0x2e

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2699
    .restart local v1       #msg:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v1, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2700
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2701
    const-string v9, "WirelessDisplayService"

    const-string v10, "setMirrorDisplayOnOff:mAppCallScreen:0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2705
    .end local v1           #msg:Landroid/os/Message;
    :cond_d
    const/4 v9, 0x3

    if-ne v6, v9, :cond_f

    .line 2707
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x1

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2708
    .restart local v1       #msg:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v9, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2712
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2713
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v10, 0x29

    const/16 v11, 0x2b

    const/16 v12, 0x2c

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2714
    .local v3, msgPause:Landroid/os/Message;
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 2715
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v9, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2718
    .end local v3           #msgPause:Landroid/os/Message;
    :cond_e
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2719
    const-string v9, "WirelessDisplayService"

    const-string v10, "mAppCallScreen:4"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2729
    .end local v1           #msg:Landroid/os/Message;
    :cond_f
    const/4 v9, 0x2

    if-ne v6, v9, :cond_10

    .line 2731
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2732
    :cond_10
    const/4 v9, 0x4

    if-ne v6, v9, :cond_13

    .line 2734
    const/4 v9, 0x1

    if-ne v0, v9, :cond_12

    .line 2735
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2736
    const-string v9, "WirelessDisplayService"

    const-string v10, "mAppCallScreen:5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    :cond_11
    :goto_2
    const-string v9, "WirelessDisplayService"

    const-string v10, "When screen is locked DLNA should not call any function"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 2737
    :cond_12
    const/4 v9, 0x3

    if-ne v0, v9, :cond_11

    .line 2738
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2739
    const-string v9, "WirelessDisplayService"

    const-string v10, "mAppCallScreen:7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2743
    :cond_13
    const/16 v9, 0x9

    if-ne v6, v9, :cond_0

    .line 2744
    const/4 v9, 0x2

    if-ne v0, v9, :cond_15

    .line 2745
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2746
    const-string v9, "WirelessDisplayService"

    const-string v10, "mAppCallScreen:6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :cond_14
    :goto_3
    const-string v9, "WirelessDisplayService"

    const-string v10, "When in Call DLNA should not call any function"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 2747
    :cond_15
    const/4 v9, 0x3

    if-ne v0, v9, :cond_14

    .line 2748
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2749
    const-string v9, "WirelessDisplayService"

    const-string v10, "mAppCallScreen:7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public stopWivuDiscovery()V
    .locals 8

    .prologue
    .line 3239
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v3

    .line 3240
    .local v3, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 3241
    .local v1, pid:I
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopWivuDiscovery(), Pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,Uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v5, 0x1f

    const/16 v6, 0x21

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3247
    .local v2, plug:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3249
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3250
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3252
    return-void
.end method
