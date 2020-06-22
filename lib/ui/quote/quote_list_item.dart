import 'package:flutter_redux/flutter_redux.dart';
import 'package:invoiceninja_flutter/constants.dart';
import 'package:invoiceninja_flutter/redux/app/app_actions.dart';
import 'package:invoiceninja_flutter/redux/app/app_state.dart';
import 'package:invoiceninja_flutter/ui/app/actions_menu_button.dart';
import 'package:invoiceninja_flutter/ui/app/entities/entity_status_chip.dart';
import 'package:invoiceninja_flutter/ui/app/entity_state_label.dart';
import 'package:invoiceninja_flutter/utils/formatting.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invoiceninja_flutter/data/models/models.dart';
import 'package:invoiceninja_flutter/ui/app/dismissible_entity.dart';
import 'package:invoiceninja_flutter/utils/localization.dart';

class QuoteListItem extends StatelessWidget {
  const QuoteListItem({
    @required this.user,
    @required this.onEntityAction,
    @required this.onTap,
    @required this.onLongPress,
    @required this.quote,
    @required this.client,
    @required this.filter,
    this.onCheckboxChanged,
    this.isChecked = false,
  });

  final UserEntity user;
  final Function(EntityAction) onEntityAction;
  final GestureTapCallback onTap;
  final GestureTapCallback onLongPress;
  final InvoiceEntity quote;
  final ClientEntity client;
  final String filter;
  final Function(bool) onCheckboxChanged;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    final state = StoreProvider.of<AppState>(context).state;
    final uiState = state.uiState;
    final quoteUIState = uiState.quoteUIState;
    final listUIState = state.getUIState(quote.entityType).listUIState;
    final isInMultiselect = listUIState.isInMultiselect();
    final showCheckbox = onCheckboxChanged != null || isInMultiselect;
    final textStyle = TextStyle(fontSize: 16);
    final localization = AppLocalization.of(context);
    final textColor = Theme.of(context).textTheme.bodyText1.color;
    final filterMatch = filter != null && filter.isNotEmpty
        ? (quote.matchesFilterValue(filter) ??
            client.matchesFilterValue(filter))
        : null;

    String subtitle = '';
    if (quote.date.isNotEmpty) {
      subtitle = formatDate(quote.date, context);
    }
    if (quote.dueDate.isNotEmpty) {
      if (subtitle.isNotEmpty) {
        subtitle += ' • ';
      }
      subtitle += formatDate(quote.dueDate, context);
    }

    return DismissibleEntity(
        isSelected: quote.id ==
            (uiState.isEditing
                ? quoteUIState.editing.id
                : quoteUIState.selectedId),
        userCompany: state.userCompany,
        entity: quote,
        onEntityAction: onEntityAction,
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return constraints.maxWidth > kTableListWidthCutoff
              ? InkWell(
                  onTap: isInMultiselect
                      ? () => onEntityAction(EntityAction.toggleMultiselect)
                      : onTap,
                  onLongPress: onLongPress,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 28,
                      top: 4,
                      bottom: 4,
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: showCheckbox
                                ? IgnorePointer(
                                    ignoring: listUIState.isInMultiselect(),
                                    child: Checkbox(
                                      value: isChecked,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      onChanged: (value) =>
                                          onCheckboxChanged(value),
                                      activeColor:
                                          Theme.of(context).accentColor,
                                    ),
                                  )
                                : ActionMenuButton(
                                    entityActions: quote.getActions(
                                        userCompany: state.userCompany,
                                        includeEdit: true,
                                        client: client),
                                    isSaving: false,
                                    entity: quote,
                                    onSelected: (context, action) =>
                                        handleEntityAction(
                                            context, quote, action),
                                  )),
                        ConstrainedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                (quote.number ?? '').isEmpty
                                    ? localization.pending
                                    : quote.number,
                                style: textStyle,
                                overflow: TextOverflow.ellipsis,
                              ),
                              if (!quote.isActive) EntityStateLabel(quote)
                            ],
                          ),
                          constraints: BoxConstraints(
                            minWidth: 80,
                            maxWidth: 80,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                  client.displayName +
                                      (quote.documents.isNotEmpty
                                          ? '  📎'
                                          : ''),
                                  style: textStyle),
                              Text(
                                filterMatch ?? subtitle,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    .copyWith(
                                      color: textColor.withOpacity(0.65),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          formatNumber(quote.balance, context,
                              clientId: client.id),
                          style: textStyle,
                          textAlign: TextAlign.end,
                        ),
                        SizedBox(width: 25),
                        EntityStatusChip(entity: quote),
                      ],
                    ),
                  ),
                )
              : ListTile(
                  onTap: isInMultiselect
                      ? () => onEntityAction(EntityAction.toggleMultiselect)
                      : onTap,
                  onLongPress: onLongPress,
                  leading: showCheckbox
                      ? IgnorePointer(
                          ignoring: listUIState.isInMultiselect(),
                          child: Checkbox(
                            value: isChecked,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            onChanged: (value) => onCheckboxChanged(value),
                            activeColor: Theme.of(context).accentColor,
                          ),
                        )
                      : null,
                  title: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            client.displayName,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Text(
                            formatNumber(
                                quote.balance > 0
                                    ? quote.balance
                                    : quote.amount,
                                context,
                                clientId: quote.clientId),
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: filterMatch == null
                                ? Text((((quote.number ?? '').isEmpty
                                            ? localization.pending
                                            : quote.number) +
                                        ' • ' +
                                        formatDate(
                                            quote.dueDate.isNotEmpty
                                                ? quote.dueDate
                                                : quote.date,
                                            context) +
                                        (quote.documents.isNotEmpty
                                            ? '  📎'
                                            : ''))
                                    .trim())
                                : Text(
                                    filterMatch,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                          ),
                          Text(
                              localization.lookup(
                                  kQuoteStatuses[quote.calculatedStatusId]),
                              style: TextStyle(
                                color: !quote.isSent
                                    ? textColor
                                    : QuoteStatusColors
                                        .colors[quote.calculatedStatusId],
                              )),
                        ],
                      ),
                      EntityStateLabel(quote),
                    ],
                  ),
                );
        }));
  }
}
