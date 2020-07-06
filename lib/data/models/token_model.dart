import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:invoiceninja_flutter/data/models/company_model.dart';
import 'package:invoiceninja_flutter/data/models/entities.dart';
import 'package:invoiceninja_flutter/data/models/models.dart';
import 'package:invoiceninja_flutter/redux/app/app_state.dart';
import 'package:invoiceninja_flutter/utils/formatting.dart';

part 'token_model.g.dart';

abstract class TokenListResponse
    implements Built<TokenListResponse, TokenListResponseBuilder> {
  factory TokenListResponse([void updates(TokenListResponseBuilder b)]) =
      _$TokenListResponse;

  TokenListResponse._();

  @override
  @memoized
  int get hashCode;

  BuiltList<TokenEntity> get data;

  static Serializer<TokenListResponse> get serializer =>
      _$tokenListResponseSerializer;
}

abstract class TokenItemResponse
    implements Built<TokenItemResponse, TokenItemResponseBuilder> {
  factory TokenItemResponse([void updates(TokenItemResponseBuilder b)]) =
      _$TokenItemResponse;

  TokenItemResponse._();

  @override
  @memoized
  int get hashCode;

  TokenEntity get data;

  static Serializer<TokenItemResponse> get serializer =>
      _$tokenItemResponseSerializer;
}

class TokenFields {
  static const String name = 'name';
  static const String custom1 = 'custom1';
  static const String custom2 = 'custom2';
}

abstract class TokenEntity extends Object
    with BaseEntity, SelectableEntity
    implements Built<TokenEntity, TokenEntityBuilder> {
  factory TokenEntity({String id, AppState state}) {
    return _$TokenEntity._(
      id: id ?? BaseEntity.nextId,
      isChanged: false,
      name: '',
      token: '',
      updatedAt: 0,
      archivedAt: 0,
      isDeleted: false,
      createdAt: 0,
      assignedUserId: '',
      createdUserId: '',
    );
  }

  TokenEntity._();

  @override
  @memoized
  int get hashCode;

  @override
  EntityType get entityType {
    return EntityType.token;
  }

  // TODO remove this
  @override
  @nullable
  String get id;

  String get token;

  String get name;

  String get obscuredToken => base64Encode(utf8.encode(token));

  static String unobscureToken(String value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    return utf8.decode(base64Decode(value));
  }

  @override
  String get listDisplayName {
    return name;
  }

  int compareTo(TokenEntity token, String sortField, bool sortAscending) {
    int response = 0;
    final TokenEntity tokenA = sortAscending ? this : token;
    final TokenEntity tokenB = sortAscending ? token : this;

    switch (sortField) {
      case TokenFields.name:
        response =
            tokenA.name.toLowerCase().compareTo(tokenB.name.toLowerCase());
        break;
      default:
        print('## ERROR: sort by token.$sortField is not implemented');
        break;
    }

    return response;
  }

  @override
  bool matchesFilter(String filter) {
    if (filter == null || filter.isEmpty) {
      return true;
    }
    filter = filter.toLowerCase();

    if (name.toLowerCase().contains(filter)) {
      return true;
    }

    return false;
  }

  @override
  String matchesFilterValue(String filter) {
    if (filter == null || filter.isEmpty) {
      return null;
    }

    return null;
  }

  @override
  List<EntityAction> getActions(
      {UserCompanyEntity userCompany,
      ClientEntity client,
      bool includeEdit = false,
      bool multiselect = false}) {
    final actions = <EntityAction>[];

    // TODO remove ??
    if (!(isDeleted ?? false)) {
      if (includeEdit && userCompany.canEditEntity(this)) {
        actions.add(EntityAction.edit);
      }
    }

    if (actions.isNotEmpty) {
      actions.add(null);
    }

    return actions..addAll(super.getActions(userCompany: userCompany));
  }

  @override
  double get listDisplayAmount => null;

  @override
  FormatNumberType get listDisplayAmountType => null;

  static Serializer<TokenEntity> get serializer => _$tokenEntitySerializer;
}
