// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblOneSignalOptionsXveSve1azStruct extends BaseStruct {
  TblOneSignalOptionsXveSve1azStruct({
    String? isPushEnabled,
    String? lastOptedIn,
    String? lastPushId,
    String? lastPushToken,
    String? notificationClickHandlerAction,
    String? notificationClickHandlerMatch,
    String? notificationPermission,
    String? optedOut,
    String? pageTitle,
    String? persistNotification,
    String? previousExternalId,
    String? previousOneSignalId,
    String? promptDismissCount,
    String? subscriptionCreatedAt,
    String? webhookscors,
    String? webhooksnotificationclicked,
    String? webhooksnotificationdismissed,
    String? webhooksnotificationwillDisplay,
  })  : _isPushEnabled = isPushEnabled,
        _lastOptedIn = lastOptedIn,
        _lastPushId = lastPushId,
        _lastPushToken = lastPushToken,
        _notificationClickHandlerAction = notificationClickHandlerAction,
        _notificationClickHandlerMatch = notificationClickHandlerMatch,
        _notificationPermission = notificationPermission,
        _optedOut = optedOut,
        _pageTitle = pageTitle,
        _persistNotification = persistNotification,
        _previousExternalId = previousExternalId,
        _previousOneSignalId = previousOneSignalId,
        _promptDismissCount = promptDismissCount,
        _subscriptionCreatedAt = subscriptionCreatedAt,
        _webhookscors = webhookscors,
        _webhooksnotificationclicked = webhooksnotificationclicked,
        _webhooksnotificationdismissed = webhooksnotificationdismissed,
        _webhooksnotificationwillDisplay = webhooksnotificationwillDisplay;

  // "isPushEnabled" field.
  String? _isPushEnabled;
  String get isPushEnabled => _isPushEnabled ?? '';
  set isPushEnabled(String? val) => _isPushEnabled = val;

  bool hasIsPushEnabled() => _isPushEnabled != null;

  // "lastOptedIn" field.
  String? _lastOptedIn;
  String get lastOptedIn => _lastOptedIn ?? '';
  set lastOptedIn(String? val) => _lastOptedIn = val;

  bool hasLastOptedIn() => _lastOptedIn != null;

  // "lastPushId" field.
  String? _lastPushId;
  String get lastPushId => _lastPushId ?? '';
  set lastPushId(String? val) => _lastPushId = val;

  bool hasLastPushId() => _lastPushId != null;

  // "lastPushToken" field.
  String? _lastPushToken;
  String get lastPushToken => _lastPushToken ?? '';
  set lastPushToken(String? val) => _lastPushToken = val;

  bool hasLastPushToken() => _lastPushToken != null;

  // "notificationClickHandlerAction" field.
  String? _notificationClickHandlerAction;
  String get notificationClickHandlerAction =>
      _notificationClickHandlerAction ?? '';
  set notificationClickHandlerAction(String? val) =>
      _notificationClickHandlerAction = val;

  bool hasNotificationClickHandlerAction() =>
      _notificationClickHandlerAction != null;

  // "notificationClickHandlerMatch" field.
  String? _notificationClickHandlerMatch;
  String get notificationClickHandlerMatch =>
      _notificationClickHandlerMatch ?? '';
  set notificationClickHandlerMatch(String? val) =>
      _notificationClickHandlerMatch = val;

  bool hasNotificationClickHandlerMatch() =>
      _notificationClickHandlerMatch != null;

  // "notificationPermission" field.
  String? _notificationPermission;
  String get notificationPermission => _notificationPermission ?? '';
  set notificationPermission(String? val) => _notificationPermission = val;

  bool hasNotificationPermission() => _notificationPermission != null;

  // "optedOut" field.
  String? _optedOut;
  String get optedOut => _optedOut ?? '';
  set optedOut(String? val) => _optedOut = val;

  bool hasOptedOut() => _optedOut != null;

  // "pageTitle" field.
  String? _pageTitle;
  String get pageTitle => _pageTitle ?? '';
  set pageTitle(String? val) => _pageTitle = val;

  bool hasPageTitle() => _pageTitle != null;

  // "persistNotification" field.
  String? _persistNotification;
  String get persistNotification => _persistNotification ?? '';
  set persistNotification(String? val) => _persistNotification = val;

  bool hasPersistNotification() => _persistNotification != null;

  // "previousExternalId" field.
  String? _previousExternalId;
  String get previousExternalId => _previousExternalId ?? '';
  set previousExternalId(String? val) => _previousExternalId = val;

  bool hasPreviousExternalId() => _previousExternalId != null;

  // "previousOneSignalId" field.
  String? _previousOneSignalId;
  String get previousOneSignalId => _previousOneSignalId ?? '';
  set previousOneSignalId(String? val) => _previousOneSignalId = val;

  bool hasPreviousOneSignalId() => _previousOneSignalId != null;

  // "promptDismissCount" field.
  String? _promptDismissCount;
  String get promptDismissCount => _promptDismissCount ?? '';
  set promptDismissCount(String? val) => _promptDismissCount = val;

  bool hasPromptDismissCount() => _promptDismissCount != null;

  // "subscriptionCreatedAt" field.
  String? _subscriptionCreatedAt;
  String get subscriptionCreatedAt => _subscriptionCreatedAt ?? '';
  set subscriptionCreatedAt(String? val) => _subscriptionCreatedAt = val;

  bool hasSubscriptionCreatedAt() => _subscriptionCreatedAt != null;

  // "webhookscors" field.
  String? _webhookscors;
  String get webhookscors => _webhookscors ?? '';
  set webhookscors(String? val) => _webhookscors = val;

  bool hasWebhookscors() => _webhookscors != null;

  // "webhooksnotificationclicked" field.
  String? _webhooksnotificationclicked;
  String get webhooksnotificationclicked => _webhooksnotificationclicked ?? '';
  set webhooksnotificationclicked(String? val) =>
      _webhooksnotificationclicked = val;

  bool hasWebhooksnotificationclicked() => _webhooksnotificationclicked != null;

  // "webhooksnotificationdismissed" field.
  String? _webhooksnotificationdismissed;
  String get webhooksnotificationdismissed =>
      _webhooksnotificationdismissed ?? '';
  set webhooksnotificationdismissed(String? val) =>
      _webhooksnotificationdismissed = val;

  bool hasWebhooksnotificationdismissed() =>
      _webhooksnotificationdismissed != null;

  // "webhooksnotificationwillDisplay" field.
  String? _webhooksnotificationwillDisplay;
  String get webhooksnotificationwillDisplay =>
      _webhooksnotificationwillDisplay ?? '';
  set webhooksnotificationwillDisplay(String? val) =>
      _webhooksnotificationwillDisplay = val;

  bool hasWebhooksnotificationwillDisplay() =>
      _webhooksnotificationwillDisplay != null;

  static TblOneSignalOptionsXveSve1azStruct fromMap(
          Map<String, dynamic> data) =>
      TblOneSignalOptionsXveSve1azStruct(
        isPushEnabled: data['isPushEnabled'] as String?,
        lastOptedIn: data['lastOptedIn'] as String?,
        lastPushId: data['lastPushId'] as String?,
        lastPushToken: data['lastPushToken'] as String?,
        notificationClickHandlerAction:
            data['notificationClickHandlerAction'] as String?,
        notificationClickHandlerMatch:
            data['notificationClickHandlerMatch'] as String?,
        notificationPermission: data['notificationPermission'] as String?,
        optedOut: data['optedOut'] as String?,
        pageTitle: data['pageTitle'] as String?,
        persistNotification: data['persistNotification'] as String?,
        previousExternalId: data['previousExternalId'] as String?,
        previousOneSignalId: data['previousOneSignalId'] as String?,
        promptDismissCount: data['promptDismissCount'] as String?,
        subscriptionCreatedAt: data['subscriptionCreatedAt'] as String?,
        webhookscors: data['webhookscors'] as String?,
        webhooksnotificationclicked:
            data['webhooksnotificationclicked'] as String?,
        webhooksnotificationdismissed:
            data['webhooksnotificationdismissed'] as String?,
        webhooksnotificationwillDisplay:
            data['webhooksnotificationwillDisplay'] as String?,
      );

  static TblOneSignalOptionsXveSve1azStruct? maybeFromMap(dynamic data) => data
          is Map
      ? TblOneSignalOptionsXveSve1azStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isPushEnabled': _isPushEnabled,
        'lastOptedIn': _lastOptedIn,
        'lastPushId': _lastPushId,
        'lastPushToken': _lastPushToken,
        'notificationClickHandlerAction': _notificationClickHandlerAction,
        'notificationClickHandlerMatch': _notificationClickHandlerMatch,
        'notificationPermission': _notificationPermission,
        'optedOut': _optedOut,
        'pageTitle': _pageTitle,
        'persistNotification': _persistNotification,
        'previousExternalId': _previousExternalId,
        'previousOneSignalId': _previousOneSignalId,
        'promptDismissCount': _promptDismissCount,
        'subscriptionCreatedAt': _subscriptionCreatedAt,
        'webhookscors': _webhookscors,
        'webhooksnotificationclicked': _webhooksnotificationclicked,
        'webhooksnotificationdismissed': _webhooksnotificationdismissed,
        'webhooksnotificationwillDisplay': _webhooksnotificationwillDisplay,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isPushEnabled': serializeParam(
          _isPushEnabled,
          ParamType.String,
        ),
        'lastOptedIn': serializeParam(
          _lastOptedIn,
          ParamType.String,
        ),
        'lastPushId': serializeParam(
          _lastPushId,
          ParamType.String,
        ),
        'lastPushToken': serializeParam(
          _lastPushToken,
          ParamType.String,
        ),
        'notificationClickHandlerAction': serializeParam(
          _notificationClickHandlerAction,
          ParamType.String,
        ),
        'notificationClickHandlerMatch': serializeParam(
          _notificationClickHandlerMatch,
          ParamType.String,
        ),
        'notificationPermission': serializeParam(
          _notificationPermission,
          ParamType.String,
        ),
        'optedOut': serializeParam(
          _optedOut,
          ParamType.String,
        ),
        'pageTitle': serializeParam(
          _pageTitle,
          ParamType.String,
        ),
        'persistNotification': serializeParam(
          _persistNotification,
          ParamType.String,
        ),
        'previousExternalId': serializeParam(
          _previousExternalId,
          ParamType.String,
        ),
        'previousOneSignalId': serializeParam(
          _previousOneSignalId,
          ParamType.String,
        ),
        'promptDismissCount': serializeParam(
          _promptDismissCount,
          ParamType.String,
        ),
        'subscriptionCreatedAt': serializeParam(
          _subscriptionCreatedAt,
          ParamType.String,
        ),
        'webhookscors': serializeParam(
          _webhookscors,
          ParamType.String,
        ),
        'webhooksnotificationclicked': serializeParam(
          _webhooksnotificationclicked,
          ParamType.String,
        ),
        'webhooksnotificationdismissed': serializeParam(
          _webhooksnotificationdismissed,
          ParamType.String,
        ),
        'webhooksnotificationwillDisplay': serializeParam(
          _webhooksnotificationwillDisplay,
          ParamType.String,
        ),
      }.withoutNulls;

  static TblOneSignalOptionsXveSve1azStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblOneSignalOptionsXveSve1azStruct(
        isPushEnabled: deserializeParam(
          data['isPushEnabled'],
          ParamType.String,
          false,
        ),
        lastOptedIn: deserializeParam(
          data['lastOptedIn'],
          ParamType.String,
          false,
        ),
        lastPushId: deserializeParam(
          data['lastPushId'],
          ParamType.String,
          false,
        ),
        lastPushToken: deserializeParam(
          data['lastPushToken'],
          ParamType.String,
          false,
        ),
        notificationClickHandlerAction: deserializeParam(
          data['notificationClickHandlerAction'],
          ParamType.String,
          false,
        ),
        notificationClickHandlerMatch: deserializeParam(
          data['notificationClickHandlerMatch'],
          ParamType.String,
          false,
        ),
        notificationPermission: deserializeParam(
          data['notificationPermission'],
          ParamType.String,
          false,
        ),
        optedOut: deserializeParam(
          data['optedOut'],
          ParamType.String,
          false,
        ),
        pageTitle: deserializeParam(
          data['pageTitle'],
          ParamType.String,
          false,
        ),
        persistNotification: deserializeParam(
          data['persistNotification'],
          ParamType.String,
          false,
        ),
        previousExternalId: deserializeParam(
          data['previousExternalId'],
          ParamType.String,
          false,
        ),
        previousOneSignalId: deserializeParam(
          data['previousOneSignalId'],
          ParamType.String,
          false,
        ),
        promptDismissCount: deserializeParam(
          data['promptDismissCount'],
          ParamType.String,
          false,
        ),
        subscriptionCreatedAt: deserializeParam(
          data['subscriptionCreatedAt'],
          ParamType.String,
          false,
        ),
        webhookscors: deserializeParam(
          data['webhookscors'],
          ParamType.String,
          false,
        ),
        webhooksnotificationclicked: deserializeParam(
          data['webhooksnotificationclicked'],
          ParamType.String,
          false,
        ),
        webhooksnotificationdismissed: deserializeParam(
          data['webhooksnotificationdismissed'],
          ParamType.String,
          false,
        ),
        webhooksnotificationwillDisplay: deserializeParam(
          data['webhooksnotificationwillDisplay'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TblOneSignalOptionsXveSve1azStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblOneSignalOptionsXveSve1azStruct &&
        isPushEnabled == other.isPushEnabled &&
        lastOptedIn == other.lastOptedIn &&
        lastPushId == other.lastPushId &&
        lastPushToken == other.lastPushToken &&
        notificationClickHandlerAction ==
            other.notificationClickHandlerAction &&
        notificationClickHandlerMatch == other.notificationClickHandlerMatch &&
        notificationPermission == other.notificationPermission &&
        optedOut == other.optedOut &&
        pageTitle == other.pageTitle &&
        persistNotification == other.persistNotification &&
        previousExternalId == other.previousExternalId &&
        previousOneSignalId == other.previousOneSignalId &&
        promptDismissCount == other.promptDismissCount &&
        subscriptionCreatedAt == other.subscriptionCreatedAt &&
        webhookscors == other.webhookscors &&
        webhooksnotificationclicked == other.webhooksnotificationclicked &&
        webhooksnotificationdismissed == other.webhooksnotificationdismissed &&
        webhooksnotificationwillDisplay ==
            other.webhooksnotificationwillDisplay;
  }

  @override
  int get hashCode => const ListEquality().hash([
        isPushEnabled,
        lastOptedIn,
        lastPushId,
        lastPushToken,
        notificationClickHandlerAction,
        notificationClickHandlerMatch,
        notificationPermission,
        optedOut,
        pageTitle,
        persistNotification,
        previousExternalId,
        previousOneSignalId,
        promptDismissCount,
        subscriptionCreatedAt,
        webhookscors,
        webhooksnotificationclicked,
        webhooksnotificationdismissed,
        webhooksnotificationwillDisplay
      ]);
}

TblOneSignalOptionsXveSve1azStruct createTblOneSignalOptionsXveSve1azStruct({
  String? isPushEnabled,
  String? lastOptedIn,
  String? lastPushId,
  String? lastPushToken,
  String? notificationClickHandlerAction,
  String? notificationClickHandlerMatch,
  String? notificationPermission,
  String? optedOut,
  String? pageTitle,
  String? persistNotification,
  String? previousExternalId,
  String? previousOneSignalId,
  String? promptDismissCount,
  String? subscriptionCreatedAt,
  String? webhookscors,
  String? webhooksnotificationclicked,
  String? webhooksnotificationdismissed,
  String? webhooksnotificationwillDisplay,
}) =>
    TblOneSignalOptionsXveSve1azStruct(
      isPushEnabled: isPushEnabled,
      lastOptedIn: lastOptedIn,
      lastPushId: lastPushId,
      lastPushToken: lastPushToken,
      notificationClickHandlerAction: notificationClickHandlerAction,
      notificationClickHandlerMatch: notificationClickHandlerMatch,
      notificationPermission: notificationPermission,
      optedOut: optedOut,
      pageTitle: pageTitle,
      persistNotification: persistNotification,
      previousExternalId: previousExternalId,
      previousOneSignalId: previousOneSignalId,
      promptDismissCount: promptDismissCount,
      subscriptionCreatedAt: subscriptionCreatedAt,
      webhookscors: webhookscors,
      webhooksnotificationclicked: webhooksnotificationclicked,
      webhooksnotificationdismissed: webhooksnotificationdismissed,
      webhooksnotificationwillDisplay: webhooksnotificationwillDisplay,
    );
