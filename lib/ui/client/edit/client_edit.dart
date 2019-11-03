import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invoiceninja_flutter/ui/client/edit/client_edit_billing_address.dart';
import 'package:invoiceninja_flutter/ui/client/edit/client_edit_contacts_vm.dart';
import 'package:invoiceninja_flutter/ui/client/edit/client_edit_details.dart';
import 'package:invoiceninja_flutter/ui/client/edit/client_edit_notes.dart';
import 'package:invoiceninja_flutter/ui/client/edit/client_edit_settings.dart';
import 'package:invoiceninja_flutter/ui/client/edit/client_edit_shipping_address.dart';
import 'package:invoiceninja_flutter/ui/client/edit/client_edit_vm.dart';
import 'package:invoiceninja_flutter/utils/completers.dart';
import 'package:invoiceninja_flutter/utils/localization.dart';
import 'package:invoiceninja_flutter/ui/app/buttons/action_icon_button.dart';
import 'package:invoiceninja_flutter/utils/platforms.dart';

class ClientEdit extends StatefulWidget {
  const ClientEdit({
    Key key,
    @required this.viewModel,
  }) : super(key: key);

  final ClientEditVM viewModel;

  @override
  _ClientEditState createState() => _ClientEditState();
}

class _ClientEditState extends State<ClientEdit>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _debouncer = Debouncer();

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 6);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context);
    final viewModel = widget.viewModel;
    final client = viewModel.client;

    return WillPopScope(
      onWillPop: () async {
        viewModel.onBackPressed();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: isMobile(context),
          title: Text(
              client.isNew ? localization.newClient : localization.editClient),
          actions: <Widget>[
            if (!isMobile(context))
              FlatButton(
                child: Text(
                  localization.cancel,
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => viewModel.onCancelPressed(context),
              ),
            ActionIconButton(
              icon: Icons.cloud_upload,
              tooltip: localization.save,
              isVisible: !client.isDeleted,
              isDirty: client.isNew || client != viewModel.origClient,
              isSaving: viewModel.isSaving,
              onPressed: () {
                if (!_formKey.currentState.validate()) {
                  return;
                }
                viewModel.onSavePressed(context);
              },
            )
          ],
          bottom: TabBar(
            controller: _controller,
            isScrollable: true,
            tabs: [
              Tab(
                text: localization.details,
              ),
              Tab(
                text: localization.contacts,
              ),
              Tab(
                text: localization.notes,
              ),
              Tab(
                text: localization.settings,
              ),
              Tab(
                text: localization.billingAddress,
              ),
              Tab(
                text: localization.shippingAddress,
              ),
            ],
          ),
        ),
        body: Form(
          key: _formKey,
          child: TabBarView(
            key: ValueKey(viewModel.client.id),
            controller: _controller,
            children: <Widget>[
              ClientEditDetails(
                viewModel: viewModel,
              ),
              ClientEditContactsScreen(),
              ClientEditNotes(
                viewModel: viewModel,
              ),
              ClientEditSettings(
                viewModel: viewModel,
              ),
              ClientEditBillingAddress(
                viewModel: viewModel,
              ),
              ClientEditShippingAddress(
                viewModel: viewModel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
