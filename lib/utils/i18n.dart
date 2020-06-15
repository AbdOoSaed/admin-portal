import 'package:invoiceninja_flutter/utils/strings.dart';

abstract class LocaleCodeAware {
  LocaleCodeAware(this.localeCode);

  final String localeCode;
}

///
/// It provides localization strings to be statically used via getters
///
/// It should be used by a [LocaleCodeAware] to get the i18n strings for
/// a specified locale.
mixin LocalizationsProvider on LocaleCodeAware {
  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      // STARTER: lang key - do not remove comment
      'credit_remaining': 'Credit Remaining',
      'contact_name': 'Contact Name',
      'use_default': 'Use default',
      'reminder_endless': 'Endless Reminders',
      'number_of_days': 'Number of days',
      'configure_payment_terms': 'Configure Payment Terms',
      'payment_term': 'Payment Term',
      'new_payment_term': 'New Payment Term',
      'edit_payment_term': 'Edit Payment Term',
      'created_payment_term': 'Successfully created payment term',
      'updated_payment_term': 'Successfully updated payment term',
      'archived_payment_term': 'Successfully archived payment term',
      'deleted_payment_term': 'Successfully deleted payment term',
      'removed_payment_term': 'Successfully removed payment term',
      'restored_payment_term': 'Successfully restored payment term',
      'full_width_editor': 'Full Width Editor',
      'full_height_filter': 'Full Height Filter',
      'email_sign_in': 'Sign in with email',
      'change': 'Change',
      'change_to_mobile_layout': 'Change to the mobile layout?',
      'change_to_desktop_layout': 'Change to the desktop layout?',
      'send_from_gmail': 'Send from Gmail',
      'reversed': 'Reversed',
      'cancelled': 'Cancelled',
      'credit_amount': 'Credit Amount',
      'quote_amount': 'Quote Amount',
      'hosted': 'Hosted',
      'selfhosted': 'Self-Hosted',
      'exclusive': 'Exclusive',
      'inclusive': 'Inclusive',
      'hide_menu': 'Hide Menu',
      'show_menu': 'Show Menu',
      'partially_refunded': 'Partially Refunded',
      'search_documents': 'Search Documents',
      'search_designs': 'Search Designs',
      'search_invoices': 'Search Invoices',
      'search_clients': 'Search Clients',
      'search_products': 'Search Products',
      'search_quotes': 'Search Quotes',
      'search_credits': 'Search Credits',
      'search_vendors': 'Search Vendors',
      'search_users': 'Search Users',
      'search_tax_rates': 'Search Tax Rates',
      'search_tasks': 'Search Tasks',
      'search_settings': 'Search Settings',
      'search_projects': 'Search Projects',
      'search_expenses': 'Search Expenses',
      'search_payments': 'Search Payments',
      'search_groups': 'Search Groups',
      'search_company': 'Search Company',
      'refund_payment': 'Refund Payment',
      'cancelled_invoice': 'Successfully cancelled invoice',
      'cancelled_invoices': 'Successfully cancelled invoices',
      'reversed_invoice': 'Successfully reversed invoice',
      'reversed_invoices': 'Successfully reversed invoices',
      'reverse': 'Reverse',
      'full_name': 'Full Name',
      'city_state_postal': 'City/State/Postal',
      'postal_city_state': 'Postal/City/State',
      'custom1': 'Custom 1',
      'custom2': 'Custom 2',
      'custom3': 'Custom 3',
      'custom4': 'Custom 4',
      'optional': 'Optional',
      'license': 'License',
      'purge_data': 'Purge Data',
      'purge_successful': 'Successfully purged company data',
      'purge_data_message':
          'Warning: This will permanently erase your data, there is no undo.',
      'invoice_balance': 'Invoice Balance',
      'age_group_0': '0 - 30 Days',
      'age_group_30': '30 - 60 Days',
      'age_group_60': '60 - 90 Days',
      'age_group_90': '90 - 120 Days',
      'age_group_120': '120+ Days',
      'refresh': 'Refresh',
      'saved_design': 'Successfully saved design',
      'client_details': 'Client Details',
      'company_address': 'Company Address',
      'invoice_details': 'Invoice Details',
      'quote_details': 'Quote Details',
      'credit_details': 'Credit Details',
      'product_columns': 'Product Columns',
      'task_columns': 'Task Columns',
      'add_field': 'Add Field',
      'all_events': 'All Events',
      'permissions': 'Permissions',
      'none': 'None',
      'owned': 'Owned',
      'payment_success': 'Payment Success',
      'payment_failure': 'Payment Failure',
      'invoice_sent': 'Invoice Sent',
      'quote_sent': 'Quote Sent',
      'credit_sent': 'Credit Sent',
      'invoice_viewed': 'Invoice Viewed',
      'quote_viewed': 'Quote Viewed',
      'credit_viewed': 'Credit Viewed',
      'quote_approved': 'Quote Approved',
      'receive_all_notifications': 'Receive All Notifications',
      'purchase_license': 'Purchase License',
      'apply_license': 'Apply License',
      'cancel_account': 'Delete Account',
      'cancel_account_message':
          'Warning: This will permanently delete your account, there is no undo.',
      'delete_company': 'Delete Company',
      'delete_company_message':
          'Warning: This will permanently delete your company, there is no undo.',
      'enable_modules': 'Enable Modules',
      'converted_quote': 'Successfully converted quote',
      'credit_design': 'Credit Design',
      'includes': 'Includes',
      'header': 'Header',
      'load_design': 'Load Design',
      'css_framework': 'CSS Framework',
      'custom_designs': 'Custom Designs',
      'designs': 'Designs',
      'new_design': 'New Design',
      'edit_design': 'Edit Design',
      'created_design': 'Successfully created design',
      'updated_design': 'Successfully updated design',
      'archived_design': 'Successfully archived design',
      'deleted_design': 'Successfully deleted design',
      'removed_design': 'Successfully removed design',
      'restored_design': 'Successfully restored design',
      'proposals': 'Proposals',
      'tickets': 'Tickets',
      'recurring_invoices': 'Recurring Invoices',
      'recurring_quotes': 'Recurring Quotes',
      'recurring_tasks': 'Recurring Tasks',
      'recurring_expenses': 'Recurring Expenses',
      'account_management': 'Account Management',
      'credit_date': 'Credit Date',
      'credit': 'Credit',
      'credits': 'Credits',
      'new_credit': 'New Credit',
      'edit_credit': 'Edit Credit',
      'created_credit': 'Successfully created credit',
      'updated_credit': 'Successfully updated credit',
      'archived_credit': 'Successfully archived credit',
      'deleted_credit': 'Successfully deleted credit',
      'removed_credit': 'Successfully removed credit',
      'restored_credit': 'Successfully restored credit',
      'current_version': 'Current Version',
      'latest_version': 'Latest Version',
      'update_now': 'Update Now',
      'a_new_version_is_available': 'A new version of the web app is available',
      'update_available': 'Update Available',
      'app_updated': 'Update successfully completed',
      'learn_more': 'Learn More',
      'integrations': 'Integrations',
      'tracking_id': 'Tracking Id',
      'slack_webhook_url': 'Slack Webhook URL',
      'credit_footer': 'Credit Footer',
      'credit_terms': 'Credit Terms',
      'untitled_company': 'Untitled Company',
      'added_company': 'Successfully added company',
      'company1': 'Custom Company 1',
      'company2': 'Custom Company 2',
      'company3': 'Custom Company 3',
      'company4': 'Custom Company 4',
      'product1': 'Custom Product 1',
      'product2': 'Custom Product 2',
      'product3': 'Custom Product 3',
      'product4': 'Custom Product 4',
      'client1': 'Custom Client 1',
      'client2': 'Custom Client 2',
      'client3': 'Custom Client 3',
      'client4': 'Custom Client 4',
      'contact1': 'Custom Contact 1',
      'contact2': 'Custom Contact 2',
      'contact3': 'Custom Contact 3',
      'contact4': 'Custom Contact 4',
      'task1': 'Custom Task 1',
      'task2': 'Custom Task 2',
      'task3': 'Custom Task 3',
      'task4': 'Custom Task 4',
      'project1': 'Custom Project 1',
      'project2': 'Custom Project 2',
      'project3': 'Custom Project 3',
      'project4': 'Custom Project 4',
      'expense1': 'Custom Expense 1',
      'expense2': 'Custom Expense 2',
      'expense3': 'Custom Expense 3',
      'expense4': 'Custom Expense 4',
      'vendor1': 'Custom Vendor 1',
      'vendor2': 'Custom Vendor 2',
      'vendor3': 'Custom Vendor 3',
      'vendor4': 'Custom Vendor 4',
      'invoice1': 'Custom Invoice 1',
      'invoice2': 'Custom Invoice 2',
      'invoice3': 'Custom Invoice 3',
      'invoice4': 'Custom Invoice 4',
      'payment1': 'Custom Payment 1',
      'payment2': 'Custom Payment 2',
      'payment3': 'Custom Payment 3',
      'payment4': 'Custom Payment 4',
      'surcharge1': 'Custom Surcharge 1',
      'surcharge2': 'Custom Surcharge 2',
      'surcharge3': 'Custom Surcharge 3',
      'surcharge4': 'Custom Surcharge 4',
      'group1': 'Custom Group 1',
      'group2': 'Custom Group 2',
      'group3': 'Custom Group 3',
      'group4': 'Custom Group 4',
      'reset': 'Reset',
      'number': 'Number',
      'export': 'Export',
      'chart': 'Chart',
      'count': 'Count',
      'totals': 'Totals',
      'blank': 'Blank',
      'day': 'Day',
      'month': 'Month',
      'year': 'Year',
      'subgroup': 'Subgroup',
      'is_active': 'Is Active',
      'group_by': 'Group By',
      'credit_balance': 'Credit Balance',
      'contact_last_login': 'Contact Last Login',
      'contact_full_name': 'Contact Full Name',
      'contact_phone': 'Contact Phone',
      'contact_custom_value1': 'Contact Custom Value 1',
      'contact_custom_value2': 'Contact Custom Value 2',
      'contact_custom_value3': 'Contact Custom Value 3',
      'contact_custom_value4': 'Contact Custom Value 4',
      'shipping_address1': 'Shipping Street',
      'shipping_address2': 'Shipping Apt/Suite',
      'shipping_city': 'Shipping City',
      'shipping_state': 'Shipping State/Province',
      'shipping_postal_code': 'Shipping Postal Code',
      'shipping_country': 'Shipping Country',
      'client_id': 'Client Id',
      'assigned_to': 'Assigned To',
      'created_by': 'Created By',
      'assigned_to_id': 'Assigned To Id',
      'created_by_id': 'Created By Id',
      'add_column': 'Add Column',
      'edit_columns': 'Edit Columns',
      'columns': 'Columns',
      'aging': 'Aging',
      'profit_and_loss': 'Profit and Loss',
      'reports': 'Reports',
      'report': 'Report',
      'add_company': 'Add Company',
      'unpaid_invoice': 'Unpaid Invoice',
      'paid_invoice': 'Paid Invoice',
      'unapproved_quote': 'Unapproved Quote',
      'help': 'Help',
      'refund': 'Refund',
      'refund_date': 'Refund Date',
      'filtered_by': 'Filtered by :value',
      'contact_email': 'Contact Email',
      'multiselect': 'Multiselect',
      'entity_state': 'Entity State',
      'verify_password': 'Verify Password',
      'applied': 'Applied',
      'include_recent_errors': 'Include recent errors from the logs',
      'your_message_has_been_received':
          'We have received your message and will try to respond promptly.',
      'message': 'Message',
      'from': 'From',
      'show_product_details': 'Show Product Details',
      'show_product_details_help':
          'Include the description and cost in the product dropdown',
      'pdf_min_requirements': 'The PDF renderer requires :version',
      'adjust_fee_percent': 'Adjust Fee Percent',
      'adjust_fee_percent_help': 'Ensure client fee matches the gateway fee',
      'configure_settings': 'Configure Settings',
      'support_forum': 'Support Forum',
      'about': 'About',
      'documentation': 'Documentation',
      'contact_us': 'Contact Us',
      'subtotal': 'Subtotal',
      'line_total': 'Line Total',
      'item': 'Item',
      'credit_email': 'Credit Email',
      'iframe_url': 'iFrame URL',
      'domain_url': 'Domain URL',
      'password_is_too_short': 'Password must be at least 8 character long',
      'password_is_too_easy':
          'Password must contain an upper case character and a number',
      'client_portal_tasks': 'Client Portal Tasks',
      'client_portal_dashboard': 'Client Portal Dashboard',
      'please_enter_a_value': 'Please enter a value',
      'deleted_logo': 'Successfully deleted logo',
      'yes': 'Yes',
      'no': 'No',
      'generate_number': 'Generate Number',
      'when_saved': 'When Saved',
      'when_sent': 'When Sent',
      'select_company': 'Select Company',
      'float': 'Float',
      'collapse': 'Collapse',
      'show_or_hide': 'Show/hide',
      'menu_sidebar': 'Menu Sidebar',
      'history_sidebar': 'History Sidebar',
      'tablet': 'Tablet',
      'mobile': 'Mobile',
      'desktop': 'Desktop',
      'layout': 'Layout',
      'view': 'View',
      'module': 'Module',
      'first_custom': 'First Custom',
      'second_custom': 'Second Custom',
      'third_custom': 'Third Custom',
      'show_cost': 'Show Cost',
      'show_cost_help':
          'Display a product cost field to track the markup/profit',
      'show_product_quantity': 'Show Product Quantity',
      'show_product_quantity_help':
          'Display a product quantity field, otherwise default to one',
      'show_invoice_quantity': 'Show Invoice Quantity',
      'show_invoice_quantity_help':
          'Display a line item quantity field, otherwise default to one',
      'default_quantity': 'Default Quantity',
      'default_quantity_help':
          'Automatically set the line item quantity to one',
      'one_tax_rate': 'One Tax Rate',
      'two_tax_rates': 'Two Tax Rates',
      'three_tax_rates': 'Three Tax Rates',
      'default_tax_rate': 'Default Tax Rate',
      'user': 'User',
      'invoice_tax': 'Invoice Tax',
      'line_item_tax': 'Line Item Tax',
      'inclusive_taxes': 'Inclusive Taxes',
      'invoice_tax_rates': 'Invoice Tax Rates',
      'item_tax_rates': 'Item Tax Rates',
      'no_client_selected': 'No client selected',
      'configure_rates': 'Configure rates',
      'tax_settings': 'Tax Settings',
      'tax_settings_rates': 'Tax Rates',
      'accent_color': 'Accent Color',
      'switch': 'Switch',
      'comma_sparated_list': 'Comma separated list',
      'options': 'Options',
      'single_line_text': 'Single-line text',
      'multi_line_text': 'Multi-line text',
      'dropdown': 'Dropdown',
      'field_type': 'Field Type',
      'recover_password_email_sent': 'A password recovery email has been sent',
      'submit': 'Submit',
      'recover_password': 'Recover Password',
      'late_fees': 'Late Fees',
      'credit_number': 'Credit Number',
      'payment_number': 'Payment Number',
      'late_fee_amount': 'Late Fee Amount',
      'late_fee_percent': 'Late Fee Percent',
      'schedule': 'Schedule',
      'before_due_date': 'Before the due date',
      'after_due_date': 'After the due date',
      'after_invoice_date': 'After the invoice date',
      'days': 'Days',
      'invoice_email': 'Invoice Email',
      'payment_email': 'Payment Email',
      'partial_payment': 'Partial Payment',
      'partial_payment_email': 'Partial Payment Email',
      'quote_email': 'Quote Email',
      'endless_reminder': 'Endless Reminder',
      'filtered_by_user': 'Filtered by User',
      'administrator': 'Administrator',
      'administrator_help':
          'Allow user to manage users, change settings and modify all records',
      'user_management': 'User Management',
      'users': 'Users',
      'new_user': 'New User',
      'edit_user': 'Edit User',
      'created_user': 'Successfully created user',
      'updated_user': 'Successfully updated user',
      'archived_user': 'Successfully archived user',
      'deleted_user': 'Successfully deleted user',
      'removed_user': 'Successfully removed user',
      'restored_user': 'Successfully restored user',
      'general_settings': 'General Settings',
      'invoice_options': 'Invoice Options',
      'hide_paid_to_date': 'Hide Paid to Date',
      'hide_paid_to_date_help':
          'Only display the "Paid to Date" area on your invoices once a payment has been received.',
      'invoice_embed_documents': 'Embed Documents',
      'invoice_embed_documents_help': 'Include attached images in the invoice.',
      'all_pages_header': 'Show Header on',
      'all_pages_footer': 'Show Footer on',
      'first_page': 'First page',
      'all_pages': 'All pages',
      'last_page': 'Last page',
      'primary_font': 'Primary Font',
      'secondary_font': 'Secondary Font',
      'primary_color': 'Primary Color',
      'secondary_color': 'Secondary Color',
      'page_size': 'Page Size',
      'font_size': 'Font Size',
      'quote_design': 'Quote Design',
      'invoice_fields': 'Invoice Fields',
      'product_fields': 'Product Fields',
      'invoice_terms': 'Invoice Terms',
      'invoice_footer': 'Invoice Footer',
      'quote_terms': 'Quote Terms',
      'quote_footer': 'Quote Footer',
      'auto_email_invoice': 'Auto Email',
      'auto_email_invoice_help':
          'Automatically email recurring invoices when they are created.',
      'auto_archive_invoice': 'Auto Archive',
      'auto_archive_invoice_help':
          'Automatically archive invoices when they are paid.',
      'auto_archive_quote': 'Auto Archive',
      'auto_archive_quote_help':
          'Automatically archive quotes when they are converted.',
      'auto_convert_quote': 'Auto Convert',
      'auto_convert_quote_help':
          'Automatically convert a quote to an invoice when approved by a client.',
      'workflow_settings': 'Workflow Settings',
      'freq_daily': 'Daily',
      'freq_weekly': 'Weekly',
      'freq_two_weeks': 'Two Weeks',
      'freq_four_weeks': 'Four Weeks',
      'freq_monthly': 'Monthly',
      'freq_two_months': 'Two Months',
      'freq_three_months': 'Three Months',
      'freq_four_months': 'Four Months',
      'freq_six_months': 'Six Months',
      'freq_annually': 'Annually',
      'freq_two_years': 'Two Years',
      'freq_three_years': 'Three Years',
      'never': 'Never',
      'company': 'Company',
      'generated_numbers': 'Generated Numbers',
      'charge_taxes': 'Charge Taxes',
      'next_reset': 'Next Reset',
      'reset_counter': 'Reset Counter',
      'recurring_prefix': 'Recurring Prefix',
      'number_padding': 'Number Padding',
      'general': 'General',
      'surcharge_field': 'Surcharge Field',
      'company_field': 'Company Field',
      'company_value': 'Company Value',
      'credit_field': 'Credit Field',
      'invoice_field': 'Invoice Field',
      'invoice_surcharge': 'Invoice Surcharge',
      'client_field': 'Client Field',
      'product_field': 'Product Field',
      'payment_field': 'Payment Field',
      'contact_field': 'Contact Field',
      'vendor_field': 'Vendor Field',
      'expense_field': 'Expense Field',
      'project_field': 'Project Field',
      'task_field': 'Task Field',
      'group_field': 'Group Field',
      'number_counter': 'Number Counter',
      'prefix': 'Prefix',
      'number_pattern': 'Number Pattern',
      'messages': 'Messages',
      'custom_css': 'Custom CSS',
      'custom_javascript': 'Custom JavaScript',
      'signature_on_pdf': 'Show on PDF',
      'signature_on_pdf_help':
          'Show the client signature on the invoice/quote PDF.',
      'show_accept_invoice_terms': 'Invoice Terms Checkbox',
      'show_accept_invoice_terms_help':
          'Require client to confirm that they accept the invoice terms.',
      'show_accept_quote_terms': 'Quote Terms Checkbox',
      'show_accept_quote_terms_help':
          'Require client to confirm that they accept the quote terms.',
      'require_invoice_signature': 'Invoice Signature',
      'require_invoice_signature_help':
          'Require client to provide their signature.',
      'require_quote_signature': 'Quote Signature',
      'enable_portal_password': 'Password Protect Invoices',
      'enable_portal_password_help':
          'Allows you to set a password for each contact. If a password is set, the contact will be required to enter a password before viewing invoices.',
      'authorization': 'Authorization',
      'subdomain': 'Subdomain',
      'domain': 'Domain',
      'portal_mode': 'Portal Mode',
      'email_signature': 'Email Signature',
      'enable_email_markup_help':
          'Make it easier for your clients to pay you by adding schema.org markup to your emails.',
      'plain': 'Plain',
      'light': 'Light',
      'dark': 'Dark',
      'email_design': 'Email Design',
      'attach_pdf': 'Attach PDF',
      'attach_documents': 'Attach Documents',
      'attach_ubl': 'Attach UBL',
      'email_style': 'Email Style',
      'enable_email_markup': 'Enable Markup',
      'reply_to_email': 'Reply-To Email',
      'bcc_email': 'BCC Email',
      'processed': 'Processed',
      'credit_card': 'Credit Card',
      'bank_transfer': 'Bank Transfer',
      'priority': 'Priority',
      'fee_amount': 'Fee Amount',
      'fee_percent': 'Fee Percent',
      'fee_cap': 'Fee Cap',
      'limits_and_fees': 'Limits/Fees',
      'enable_min': 'Enable Min',
      'enable_max': 'Enable Max',
      'min_limit': 'Min Limit',
      'max_limit': 'Max Limit',
      'min': 'Min',
      'max': 'Max',
      'accepted_card_logos': 'Accepted Card Logos',
      'credentials': 'Credentials',
      'require_billing_address_help':
          'Require client to provide their billing address',
      'require_shipping_address_help':
          'Require client to provide their shipping address',
      'update_address': 'Update address',
      'update_address_help': 'Update client\'s address with provided details',
      'rate': 'Rate',
      'tax_rate': 'Tax Rate',
      'new_tax_rate': 'New Tax Rate',
      'edit_tax_rate': 'Edit Tax Rate',
      'created_tax_rate': 'Successfully created tax rate',
      'updated_tax_rate': 'Successfully updated tax rate',
      'archived_tax_rate': 'Successfully archived tax rate',
      'deleted_tax_rate': 'Successfully deleted tax rate',
      'restored_tax_rate': 'Successfully restored tax rate',
      'fill_products': 'Fill Products',
      'fill_products_help':
          'Selecting a product will automatically fill in the description and cost',
      'update_products': 'Update Products',
      'update_products_help':
          'Updating an invoice will automatically update the product library',
      'convert_products': 'Convert Products',
      'convert_products_help':
          'Automatically convert product prices to the client\'s currency',
      'fees': 'Fees',
      'limits': 'Limits',
      'provider': 'Provider',
      'company_gateway': 'Payment Gateway',
      'company_gateways': 'Payment Gateways',
      'new_company_gateway': 'New Gateway',
      'edit_company_gateway': 'Edit Gateway',
      'created_company_gateway': 'Successfully created gateway',
      'updated_company_gateway': 'Successfully updated gateway',
      'archived_company_gateway': 'Successfully archived gateway',
      'deleted_company_gateway': 'Successfully deleted gateway',
      'restored_company_gateway': 'Successfully restored gateway',
      'continue_editing': 'Continue Editing',
      'discard_changes': 'Discard Changes',
      'default_value': 'Default value',
      'disabled': 'Disabled',
      'currency_format': 'Currency Format',
      'first_day_of_the_week': 'First Day of the Week',
      'first_month_of_the_year': 'First Month of the Year',
      'sunday': 'Sunday',
      'monday': 'Monday',
      'tuesday': 'Tuesday',
      'wednesday': 'Wednesday',
      'thursday': 'Thursday',
      'friday': 'Friday',
      'saturday': 'Saturday',
      'january': 'January',
      'february': 'February',
      'march': 'March',
      'april': 'April',
      'may': 'May',
      'june': 'June',
      'july': 'July',
      'august': 'August',
      'september': 'September',
      'october': 'October',
      'november': 'November',
      'december': 'December',
      'symbol': 'Symbol',
      'ocde': 'Code',
      'date_format': 'Date Format',
      'datetime_format': 'Datetime Format',
      'military_time': 'Military Time',
      'military_time_help': '24 Hour Display',
      'send_reminders': 'Send Reminders',
      'timezone': 'Timezone',
      'filtered_by_project': 'Filtered by Project',
      'filtered_by_group': 'Filtered by Group',
      'filtered_by_invoice': 'Filtered by Invoice',
      'filtered_by_client': 'Filtered by Client',
      'filtered_by_vendor': 'Filtered by Vendor',
      'group_settings': 'Group Settings',
      'group': 'Group',
      'groups': 'Groups',
      'new_group': 'New Group',
      'edit_group': 'Edit Group',
      'created_group': 'Successfully created group',
      'updated_group': 'Successfully updated group',
      'archived_group': 'Successfully archived group',
      'deleted_group': 'Successfully deleted group',
      'restored_group': 'Successfully restored group',
      'upload_logo': 'Upload Logo',
      'uploaded_logo': 'Successfully uploaded logo',
      'logo': 'Logo',
      'saved_settings': 'Successfully saved settings',
      'product_settings': 'Product Settings',
      'device_settings': 'Device Settings',
      'defaults': 'Defaults',
      'basic_settings': 'Basic Settings',
      'advanced_settings': 'Advanced Settings',
      'company_details': 'Company Details',
      'user_details': 'User Details',
      'localization': 'Localization',
      'online_payments': 'Online Payments',
      'tax_rates': 'Tax Rates',
      'notifications': 'Notifications',
      'import_export': 'Import | Export',
      'custom_fields': 'Custom Fields',
      'invoice_design': 'Invoice Design',
      'buy_now_buttons': 'Buy Now Buttons',
      'email_settings': 'Email Settings',
      'templates_and_reminders': 'Templates & Reminders',
      'credit_cards_and_banks': 'Credit Cards & Banks',
      'data_visualizations': 'Data Visualizations',
      'price': 'Price',
      'email_sign_up': 'Sign up with email',
      'google_sign_up': 'Sign up with Google',
      'thank_you_for_your_purchase': 'Thank you for your purchase!',
      'redeem': 'Redeem',
      'back': 'Back',
      'past_purchases': 'Past Purchases',
      'annual_subscription': 'Annual Subscription',
      'pro_plan': 'Pro Plan',
      'enterprise_plan': 'Enterprise Plan',
      'count_users': ':count users',
      'upgrade': 'Upgrade',
      'please_enter_a_first_name': 'Please enter a first name',
      'please_enter_a_last_name': 'Please enter a last name',
      'please_agree_to_terms_and_privacy':
          'Please agree to the terms of service and privacy policy to create an account.',
      'i_agree_to_the': 'I agree to the',
      'terms_of_service_link': 'terms of service',
      'privacy_policy_link': 'privacy policy',
      'terms_of_service': 'Terms of Service',
      'privacy_policy': 'Privacy Policy',
      'sign_up': 'Sign Up',
      'account_login': 'Account Login',
      'view_website': 'View Website',
      'create_account': 'Create Account',
      'email_login': 'Email Login',
      'create_new': 'Create New',
      'no_record_selected': 'No record selected',
      'error_unsaved_changes': 'Your changes have not been saved',
      'download': 'Download',
      'requires_an_enterprise_plan': 'Requires an enterprise plan',
      'take_picture': 'Take Picture',
      'upload_file': 'Upload File',
      'document': 'Document',
      'documents': 'Documents',
      'new_document': 'New Document',
      'edit_document': 'Edit Document',
      'uploaded_document': 'Successfully uploaded document',
      'updated_document': 'Successfully updated document',
      'archived_document': 'Successfully archived document',
      'deleted_document': 'Successfully deleted document',
      'restored_document': 'Successfully restored document',
      'no_history': 'No History',
      'expense_date': 'Expense Date',
      'pending': 'Pending',
      'expense_status_1': 'Logged',
      'expense_status_2': 'Pending',
      'expense_status_3': 'Invoiced',
      'converted': 'Converted',
      'add_documents_to_invoice': 'Add documents to invoice',
      'exchange_rate': 'Exchange Rate',
      'convert_currency': 'Convert Currency',
      'mark_paid': 'Mark Paid',
      'mark_billable': 'Mark Billable',
      'category': 'Category',
      'address': 'Address',
      'new_vendor': 'New Vendor',
      'created_vendor': 'Successfully created vendor',
      'updated_vendor': 'Successfully updated vendor',
      'archived_vendor': 'Successfully archived vendor',
      'deleted_vendor': 'Successfully deleted vendor',
      'restored_vendor': 'Successfully restored vendor',
      'new_expense': 'New Expense',
      'created_expense': 'Successfully created expense',
      'updated_expense': 'Successfully updated expense',
      'archived_expense': 'Successfully archived expense',
      'deleted_expense': 'Successfully deleted expense',
      'restored_expense': 'Successfully restored expense',
      'copy_shipping': 'Copy Shipping',
      'copy_billing': 'Copy Billing',
      'design': 'Design',
      'failed_to_find_record': 'Failed to find record',
      'invoiced': 'Invoiced',
      'logged': 'Logged',
      'running': 'Running',
      'resume': 'Resume',
      'task_errors': 'Please correct any overlapping times',
      'start': 'Start',
      'stop': 'Stop',
      'started_task': 'Successfully started task',
      'stopped_task': 'Successfully stopped task',
      'resumed_task': 'Successfully resumed task',
      'now': 'Now',
      'auto_start_tasks': 'Auto Start Tasks',
      'timer': 'Timer',
      'manual': 'Manual',
      'budgeted': 'Budgeted',
      'start_time': 'Start Time',
      'end_time': 'End Time',
      'date': 'Date',
      'times': 'Times',
      'duration': 'Duration',
      'new_task': 'New Task',
      'created_task': 'Successfully created task',
      'updated_task': 'Successfully updated task',
      'archived_task': 'Successfully archived task',
      'deleted_task': 'Successfully deleted task',
      'restored_task': 'Successfully restored task',
      'please_enter_a_name': 'Please enter a name',
      'budgeted_hours': 'Budgeted Hours',
      'created_project': 'Successfully created project',
      'updated_project': 'Successfully updated project',
      'archived_project': 'Successfully archived project',
      'deleted_project': 'Successfully deleted project',
      'restored_project': 'Successfully restored project',
      'new_project': 'New Project',
      'thank_you_for_using_our_app': 'Thank you for using our app!',
      'if_you_like_it': 'If you like it please',
      'click_here': 'click here',
      'click_here_capital': 'Click here',
      'to_rate_it': 'to rate it.',
      'average': 'Average',
      'unapproved': 'Unapproved',
      'authenticate_to_change_setting':
          'Please authenticate to change this setting',
      'locked': 'Locked',
      'authenticate': 'Authenticate',
      'please_authenticate': 'Please authenticate',
      'biometric_authentication': 'Biometric Authentication',
      'footer': 'Footer',
      'compare': 'Compare',
      'hosted_login': 'Hosted Login',
      'selfhost_login': 'Selfhost Login',
      'google_sign_in': 'Sign in with Google',
      'today': 'Today',
      'custom_range': 'Custom',
      'date_range': 'Date Range',
      'current': 'Current',
      'previous': 'Previous',
      'current_period': 'Current Period',
      'comparison_period': 'Comparison Period',
      'previous_period': 'Previous Period',
      'previous_year': 'Previous Year',
      'compare_to': 'Compare to',
      'last7_days': 'Last 7 Days',
      'last_week': 'Last Week',
      'last30_days': 'Last 30 Days',
      'this_month': 'This Month',
      'last_month': 'Last Month',
      'this_year': 'This Year',
      'last_year': 'Last Year',
      'custom': 'Custom',
      'clone_to_invoice': 'Clone to Invoice',
      'clone_to_quote': 'Clone to Quote',
      'clone_to_credit': 'Clone to Credit',
      'view_invoice': 'View Invoice',
      'convert': 'Convert',
      'more': 'More',
      'edit_client': 'Edit Client',
      'edit_product': 'Edit Product',
      'edit_invoice': 'Edit Invoice',
      'edit_quote': 'Edit Quote',
      'edit_payment': 'Edit Payment',
      'edit_task': 'Edit Task',
      'edit_expense': 'Edit Expense',
      'edit_vendor': 'Edit Vendor',
      'edit_project': 'Edit Project',
      'edit_recurring_invoice': 'Edit Recurring Invoice',
      'edit_recurring_expense': 'Edit Recurring Expense',
      'edit_recurring_quote': 'Edit Recurring Quote',
      'billing_address': 'Billing Address',
      'shipping_address': 'Shipping Address',
      'total_revenue': 'Total Revenue',
      'average_invoice': 'Average Invoice',
      'outstanding': 'Outstanding',
      'invoices_sent': 'Invoices Sent',
      'active_clients': 'Active Clients',
      'close': 'Close',
      'email': 'Email',
      'password': 'Password',
      'url': 'URL',
      'secret': 'Secret',
      'name': 'Name',
      'logout': 'Log Out',
      'login': 'Login',
      'filter': 'Filter',
      'sort': 'Sort',
      'search': 'Search',
      'active': 'Active',
      'archived': 'Archived',
      'deleted': 'Deleted',
      'dashboard': 'Dashboard',
      'archive': 'Archive',
      'delete': 'Delete',
      'restore': 'Restore',
      'refresh_complete': 'Refresh Complete',
      'please_enter_your_email': 'Please enter your email',
      'please_enter_your_password': 'Please enter your password',
      'please_enter_your_url': 'Please enter your URL',
      'please_enter_a_product_key': 'Please enter a product key',
      'ascending': 'Ascending',
      'descending': 'Descending',
      'save': 'Save',
      'an_error_occurred': 'An error occurred',
      'paid_to_date': 'Paid to Date',
      'balance_due': 'Balance Due',
      'balance': 'Balance',
      'overview': 'Overview',
      'details': 'Details',
      'phone': 'Phone',
      'website': 'Website',
      'vat_number': 'VAT Number',
      'id_number': 'Id Number',
      'create': 'Create',
      'copied_to_clipboard': 'Copied :value to the clipboard',
      'error': 'Error',
      'could_not_launch': 'Could not launch',
      'contacts': 'Contacts',
      'additional': 'Additional',
      'first_name': 'First Name',
      'last_name': 'Last Name',
      'add_contact': 'Add Contact',
      'are_you_sure': 'Are you sure?',
      'cancel': 'Cancel',
      'ok': 'Ok',
      'remove': 'Remove',
      'email_is_invalid': 'Email is invalid',
      'product': 'Product',
      'products': 'Products',
      'new_product': 'New Product',
      'created_product': 'Successfully created product',
      'updated_product': 'Successfully updated product',
      'archived_product': 'Successfully archived product',
      'deleted_product': 'Successfully deleted product',
      'restored_product': 'Successfully restored product',
      'product_key': 'Product',
      'notes': 'Notes',
      'cost': 'Cost',
      'client': 'Client',
      'clients': 'Clients',
      'new_client': 'New Client',
      'created_client': 'Successfully created client',
      'updated_client': 'Successfully updated client',
      'archived_client': 'Successfully archived client',
      'deleted_client': 'Successfully deleted client',
      'restored_client': 'Successfully restored client',
      'address1': 'Street',
      'address2': 'Apt/Suite',
      'city': 'City',
      'state': 'State/Province',
      'postal_code': 'Postal Code',
      'country': 'Country',
      'invoice': 'Invoice',
      'invoices': 'Invoices',
      'new_invoice': 'New Invoice',
      'created_invoice': 'Successfully created invoice',
      'updated_invoice': 'Successfully updated invoice',
      'archived_invoice': 'Successfully archived invoice',
      'deleted_invoice': 'Successfully deleted invoice',
      'restored_invoice': 'Successfully restored invoice',
      'emailed_invoice': 'Successfully emailed invoice',
      'emailed_payment': 'Successfully emailed payment',
      'amount': 'Amount',
      'invoice_number': 'Invoice Number',
      'invoice_date': 'Invoice Date',
      'discount': 'Discount',
      'po_number': 'PO Number',
      'terms': 'Terms',
      'public_notes': 'Public Notes',
      'private_notes': 'Private Notes',
      'frequency': 'Frequency',
      'start_date': 'Start Date',
      'end_date': 'End Date',
      'quote_number': 'Quote Number',
      'quote_date': 'Quote Date',
      'valid_until': 'Valid Until',
      'items': 'Items',
      'partial_deposit': 'Partial/Deposit',
      'description': 'Description',
      'unit_cost': 'Unit Cost',
      'quantity': 'Quantity',
      'add_item': 'Add Item',
      'contact': 'Contact',
      'work_phone': 'Phone',
      'total_amount': 'Total Amount',
      'pdf': 'PDF',
      'due_date': 'Due Date',
      'partial_due_date': 'Partial Due Date',
      'status': 'Status',
      'invoice_status_id': 'Invoice Status',
      'quote_status': 'Quote Status',
      'click_plus_to_add_item': 'Click + to add an item',
      'click_plus_to_add_time': 'Click ▶ to add time',
      'count_selected': ':count selected',
      'total': 'Total',
      'percent': 'Percent',
      'edit': 'Edit',
      'dismiss': 'Dismiss',
      'please_select_a_date': 'Please select a date',
      'please_select_a_client': 'Please select a client',
      'please_select_an_invoice': 'Please select an invoice',
      'task_rate': 'Task Rate',
      'settings': 'Settings',
      'language': 'Language',
      'currency': 'Currency',
      'created_at': 'Created At',
      'updated_at': 'Updated At',
      'tax': 'Tax',
      'please_enter_an_invoice_number': 'Please enter an invoice number',
      'please_enter_a_quote_number': 'Please enter a quote number',
      'past_due': 'Past Due',
      'draft': 'Draft',
      'sent': 'Sent',
      'viewed': 'Viewed',
      'approved': 'Approved',
      'partial': 'Partial',
      'paid': 'Paid',
      'mark_sent': 'Mark Sent',
      'marked_invoice_as_sent': 'Successfully marked invoice as sent',
      'marked_invoice_as_paid': 'Successfully marked invoice as paid',
      'marked_invoices_as_sent': 'Successfully marked invoices as sent',
      'marked_invoices_as_paid': 'Successfully marked invoices as paid',
      'done': 'Done',
      'please_enter_a_client_or_contact_name':
          'Please enter a client or contact name',
      'dark_mode': 'Dark Mode',
      'restart_app_to_apply_change': 'Restart the app to apply the change',
      'refresh_data': 'Refresh Data',
      'blank_contact': 'Blank Contact',
      'activity': 'Activity',
      'no_records_found': 'No records found',
      'clone': 'Clone',
      'loading': 'Loading',
      'industry': 'Industry',
      'size': 'Size',
      'payment_terms': 'Payment Terms',
      'payment_date': 'Payment Date',
      'payment_status': 'Payment Status',
      'payment_status_1': 'Pending',
      'payment_status_2': 'Voided',
      'payment_status_3': 'Failed',
      'payment_status_4': 'Completed',
      'payment_status_5': 'Partially Refunded',
      'payment_status_6': 'Refunded',
      'net': 'Net',
      'client_portal': 'Client Portal',
      'show_tasks': 'Show tasks',
      'email_reminders': 'Email Reminders',
      'enabled': 'Enabled',
      'recipients': 'Recipients',
      'initial_email': 'Initial Email',
      'first_reminder': 'First Reminder',
      'second_reminder': 'Second Reminder',
      'third_reminder': 'Third Reminder',
      'reminder1': 'First Reminder',
      'reminder2': 'Second Reminder',
      'reminder3': 'Third Reminder',
      'template': 'Template',
      'send': 'Send',
      'subject': 'Subject',
      'body': 'Body',
      'send_email': 'Send Email',
      'email_receipt': 'Email payment receipt to the client',
      'auto_billing': 'Auto billing',
      'button': 'Button',
      'preview': 'Preview',
      'customize': 'Customize',
      'history': 'History',
      'payment': 'Payment',
      'payments': 'Payments',
      'refunded': 'Refunded',
      'payment_type': 'Payment Type',
      'transaction_reference': 'Transaction Reference',
      'enter_payment': 'Enter Payment',
      'new_payment': 'Enter Payment',
      'created_payment': 'Successfully created payment',
      'updated_payment': 'Successfully updated payment',
      'archived_payment': 'Successfully archived payment',
      'deleted_payment': 'Successfully deleted payment',
      'restored_payment': 'Successfully restored payment',
      'quote': 'Quote',
      'quotes': 'Quotes',
      'new_quote': 'New Quote',
      'created_quote': 'Successfully created quote',
      'updated_quote': 'Successfully updated quote',
      'archived_quote': 'Successfully archived quote',
      'deleted_quote': 'Successfully deleted quote',
      'restored_quote': 'Successfully restored quote',
      'expense': 'Expense',
      'expenses': 'Expenses',
      'vendor': 'Vendor',
      'vendors': 'Vendors',
      'task': 'Task',
      'tasks': 'Tasks',
      'project': 'Project',
      'projects': 'Projects',
      'activity_1': ':user created client :client',
      'activity_2': ':user archived client :client',
      'activity_3': ':user deleted client :client',
      'activity_4': ':user created invoice :invoice',
      'activity_5': ':user updated invoice :invoice',
      'activity_6': ':user emailed invoice :invoice to :contact',
      'activity_7': ':contact viewed invoice :invoice',
      'activity_8': ':user archived invoice :invoice',
      'activity_9': ':user deleted invoice :invoice',
      'activity_10': ':contact entered payment :payment for :invoice',
      'activity_11': ':user updated payment :payment',
      'activity_12': ':user archived payment :payment',
      'activity_13': ':user deleted payment :payment',
      'activity_14': ':user entered :credit credit',
      'activity_15': ':user updated :credit credit',
      'activity_16': ':user archived :credit credit',
      'activity_17': ':user deleted :credit credit',
      'activity_18': ':user created quote :quote',
      'activity_19': ':user updated quote :quote',
      'activity_20': ':user emailed quote :quote to :contact',
      'activity_21': ':contact viewed quote :quote',
      'activity_22': ':user archived quote :quote',
      'activity_23': ':user deleted quote :quote',
      'activity_24': ':user restored quote :quote',
      'activity_25': ':user restored invoice :invoice',
      'activity_26': ':user restored client :client',
      'activity_27': ':user restored payment :payment',
      'activity_28': ':user restored :credit credit',
      'activity_29': ':contact approved quote :quote',
      'activity_30': ':user created vendor :vendor',
      'activity_31': ':user archived vendor :vendor',
      'activity_32': ':user deleted vendor :vendor',
      'activity_33': ':user restored vendor :vendor',
      'activity_34': ':user created expense :expense',
      'activity_35': ':user archived expense :expense',
      'activity_36': ':user deleted expense :expense',
      'activity_37': ':user restored expense :expense',
      'activity_39': ':user cancelled payment :payment',
      'activity_40': ':user refunded payment :payment',
      'activity_41': 'Payment :payment failed',
      'activity_42': ':user created task :task',
      'activity_43': ':user updated task :task',
      'activity_44': ':user archived task :task',
      'activity_45': ':user deleted task :task',
      'activity_46': ':user restored task :task',
      'activity_47': ':user updated expense :expense',
      'activity_48': ':user created task :user',
      'activity_49': ':user updated task :user',
      'activity_50': ':user archived task :user',
      'activity_51': ':user deleted task :user',
      'activity_52': ':user restored task :user',
      'activity_53': ':user marked invoice :invoice as sent',
      'activity_54': '',
      'activity_55': '',
      'activity_56': '',
      'activity_57': 'System failed to email invoice :invoice',
      'activity_58': ':user reversed invoice :invoice',
      'activity_59': ':user cancelled invoice :invoice',
      'one_time_password': 'One Time Password',
      'emailed_quote': 'Successfully emailed quote',
      'emailed_credit': 'Successfully emailed credit',
      'marked_quote_as_sent': 'Successfully marked quote as sent',
      'marked_credit_as_sent': 'Successfully marked credit as sent',
      'expired': 'Expired',
      'all': 'All',
      'select': 'Select',
      'long_press_multiselect': 'Long-press Multiselect',
      'custom_value1': 'Custom Value 1',
      'custom_value2': 'Custom Value 2',
      'custom_value3': 'Custom Value 3',
      'custom_value4': 'Custom Value 4',
      'email_style_custom': 'Custom Email Style',
      'custom_message_dashboard': 'Custom Dashboard Message',
      'custom_message_unpaid_invoice': 'Custom Unpaid Invoice Message',
      'custom_message_paid_invoice': 'Custom Paid Invoice Message',
      'custom_message_unapproved_quote': 'Custom Unapproved Quote Message',
      'lock_sent_invoices': 'Lock Sent Invoices',
      'translations': 'Translations',
      'task_number_pattern': 'Task Number Pattern',
      'task_number_counter': 'Task Number Counter',
      'expense_number_pattern': 'Expense Number Pattern',
      'expense_number_counter': 'Expense Number Counter',
      'vendor_number_pattern': 'Vendor Number Pattern',
      'vendor_number_counter': 'Vendor Number Counter',
      'ticket_number_pattern': 'Ticket Number Pattern',
      'ticket_number_counter': 'Ticket Number Counter',
      'payment_number_pattern': 'Payment Number Pattern',
      'payment_number_counter': 'Payment Number Counter',
      'invoice_number_pattern': 'Invoice Number Pattern',
      'invoice_number_counter': 'Invoice Number Counter',
      'quote_number_pattern': 'Quote Number Pattern',
      'quote_number_counter': 'Quote Number Counter',
      'client_number_pattern': 'Credit Number Pattern',
      'client_number_counter': 'Credit Number Counter',
      'credit_number_pattern': 'Credit Number Pattern',
      'credit_number_counter': 'Credit Number Counter',
      'reset_counter_date': 'Reset Counter Date',
      'counter_padding': 'Counter Padding',
      'shared_invoice_quote_counter': 'Shared Invoice Quote Counter',
      'default_tax_name_1': 'Default Tax Name 1',
      'default_tax_rate_1': 'Default Tax Rate 1',
      'default_tax_name_2': 'Default Tax Name 2',
      'default_tax_rate_2': 'Default Tax Rate 2',
      'default_tax_name_3': 'Default Tax Name 3',
      'default_tax_rate_3': 'Default Tax Rate 3',
      'email_subject_invoice': 'Email Invoice Subject',
      'email_subject_quote': 'Email Quote Subject',
      'email_subject_payment': 'Email Payment Subject',
      'email_subject_payment_partial': 'Email Partial Payment Subject',
      'switch_list_table': 'Switch List Table',
      'client_city': 'Client City',
      'client_state': 'Client State',
      'client_country': 'Client Country',
      'client_is_active': 'Client is Active',
      'client_balance': 'Client Balance',
      'client_address1': 'Client Address 1',
      'client_address2': 'Client Address 2',
      'client_shipping_address1': 'Client Shipping Address 1',
      'client_shipping_address2': 'Client Shipping Address 2',
      'type': 'Type',
      'invoice_amount': 'Invoice Amount',
      'invoice_due_date': 'Invoice Due Date',
      'tax_rate1': 'Tax Rate 1',
      'tax_rate2': 'Tax Rate 2',
      'tax_rate3': 'Tax Rate 3',
      'auto_bill': 'Auto Bill',
      'archived_at': 'Archived At',
      'has_expenses': 'Has Expenses',
      'custom_taxes1': 'Custom Taxes 1',
      'custom_taxes2': 'Custom Taxes 2',
      'custom_taxes3': 'Custom Taxes 3',
      'custom_taxes4': 'Custom Taxes 4',
      'custom_surcharge1': 'Custom Surcharge 1',
      'custom_surcharge2': 'Custom Surcharge 2',
      'custom_surcharge3': 'Custom Surcharge 3',
      'custom_surcharge4': 'Custom Surcharge 4',
      'is_deleted': 'Is Deleted',
      'vendor_city': 'Vendor City',
      'vendor_state': 'Vendor State',
      'vendor_country': 'Vendor Country',
      'is_approved': 'Is Approved',
      'tax_name': 'Tax Name',
      'tax_amount': 'Tax Amount',
      'tax_paid': 'Tax Paid Amount',
      'payment_amount': 'Payment Amount',
      'age': 'Age'
    },
    // OTHER_LANGUAGES
  };

  String get createdProject =>
      _localizedValues[localeCode]['created_project'] ?? '';

  String get updatedProject =>
      _localizedValues[localeCode]['updated_project'] ?? '';

  String get archivedProject =>
      _localizedValues[localeCode]['archived_project'] ?? '';

  String get deletedProject =>
      _localizedValues[localeCode]['deleted_project'] ?? '';

  String get restoredProject =>
      _localizedValues[localeCode]['restored_project'] ?? '';

  String get newProject => _localizedValues[localeCode]['new_project'] ?? '';

  String get thankYouForUsingOurApp =>
      _localizedValues[localeCode]['thank_you_for_using_our_app'] ?? '';

  String get ifYouLikeIt =>
      _localizedValues[localeCode]['if_you_like_it'] ?? '';

  String get clickHere => _localizedValues[localeCode]['click_here'] ?? '';

  String get clickHereCapital =>
      _localizedValues[localeCode]['click_here_capital'] ?? '';

  String get toRateIt => _localizedValues[localeCode]['to_rate_it'] ?? '';

  String get average => _localizedValues[localeCode]['average'] ?? '';

  String get unapproved => _localizedValues[localeCode]['unapproved'] ?? '';

  String get authenticateToChangeSetting =>
      _localizedValues[localeCode]['authenticate_to_change_setting'] ?? '';

  String get locked => _localizedValues[localeCode]['locked'] ?? '';

  String get authenticate => _localizedValues[localeCode]['authenticate'] ?? '';

  String get pleaseAuthenticate =>
      _localizedValues[localeCode]['please_authenticate'] ?? '';

  String get biometricAuthentication =>
      _localizedValues[localeCode]['biometric_authentication'] ?? '';

  String get footer => _localizedValues[localeCode]['footer'] ?? '';

  String get compare => _localizedValues[localeCode]['compare'] ?? '';

  String get hostedLogin => _localizedValues[localeCode]['hosted_login'] ?? '';

  String get selfhostLogin =>
      _localizedValues[localeCode]['selfhost_login'] ?? '';

  String get googleSignIn =>
      _localizedValues[localeCode]['google_sign_in'] ?? '';

  String get today => _localizedValues[localeCode]['today'] ?? '';

  String get customRange => _localizedValues[localeCode]['custom_range'] ?? '';

  String get dateRange => _localizedValues[localeCode]['date_range'] ?? '';

  String get current => _localizedValues[localeCode]['current'] ?? '';

  String get previous => _localizedValues[localeCode]['previous'] ?? '';

  String get currentPeriod =>
      _localizedValues[localeCode]['current_period'] ?? '';

  String get comparisonPeriod =>
      _localizedValues[localeCode]['comparison_period'] ?? '';

  String get previousPeriod =>
      _localizedValues[localeCode]['previous_period'] ?? '';

  String get previousYear =>
      _localizedValues[localeCode]['previous_year'] ?? '';

  String get compareTo => _localizedValues[localeCode]['compare_to'] ?? '';

  String get last7Days => _localizedValues[localeCode]['last7_days'] ?? '';

  String get lastWeek => _localizedValues[localeCode]['last_week'] ?? '';

  String get last30Days => _localizedValues[localeCode]['last30_days'] ?? '';

  String get thisMonth => _localizedValues[localeCode]['this_month'] ?? '';

  String get lastMonth => _localizedValues[localeCode]['last_month'] ?? '';

  String get thisYear => _localizedValues[localeCode]['this_year'] ?? '';

  String get lastYear => _localizedValues[localeCode]['last_year'] ?? '';

  String get custom => _localizedValues[localeCode]['custom'] ?? '';

  String get cloneToInvoice =>
      _localizedValues[localeCode]['clone_to_invoice'] ?? '';

  String get cloneToQuote =>
      _localizedValues[localeCode]['clone_to_quote'] ?? '';

  String get viewInvoice => _localizedValues[localeCode]['view_invoice'] ?? '';

  String get convert => _localizedValues[localeCode]['convert'] ?? '';

  String get more => _localizedValues[localeCode]['more'] ?? '';

  String get editClient => _localizedValues[localeCode]['edit_client'] ?? '';

  String get editProduct => _localizedValues[localeCode]['edit_product'] ?? '';

  String get editInvoice => _localizedValues[localeCode]['edit_invoice'] ?? '';

  String get editQuote => _localizedValues[localeCode]['edit_quote'] ?? '';

  String get editPayment => _localizedValues[localeCode]['edit_payment'] ?? '';

  String get editTask => _localizedValues[localeCode]['edit_task'] ?? '';

  String get editExpense => _localizedValues[localeCode]['edit_expense'] ?? '';

  String get editVendor => _localizedValues[localeCode]['edit_vendor'] ?? '';

  String get editProject => _localizedValues[localeCode]['edit_project'] ?? '';

  String get editCredit => _localizedValues[localeCode]['edit_credit'] ?? '';

  String get editRecurringInvoice =>
      _localizedValues[localeCode]['edit_recurring_invoice'] ?? '';

  String get editRecurringExpense =>
      _localizedValues[localeCode]['edit_recurring_expense'] ?? '';

  String get editRecurringQuote =>
      _localizedValues[localeCode]['edit_recurring_quote'] ?? '';

  String get billingAddress =>
      _localizedValues[localeCode]['billing_address'] ?? '';

  String get shippingAddress =>
      _localizedValues[localeCode]['shipping_address'] ?? '';

  String get totalRevenue =>
      _localizedValues[localeCode]['total_revenue'] ?? '';

  String get averageInvoice =>
      _localizedValues[localeCode]['average_invoice'] ?? '';

  String get outstanding => _localizedValues[localeCode]['outstanding'] ?? '';

  String get invoicesSent =>
      _localizedValues[localeCode]['invoices_sent'] ?? '';

  String get activeClients =>
      _localizedValues[localeCode]['active_clients'] ?? '';

  String get close => _localizedValues[localeCode]['close'] ?? '';

  String get email => _localizedValues[localeCode]['email'] ?? '';

  String get password => _localizedValues[localeCode]['password'] ?? '';

  String get url => _localizedValues[localeCode]['url'] ?? '';

  String get secret => _localizedValues[localeCode]['secret'] ?? '';

  String get name => _localizedValues[localeCode]['name'] ?? '';

  String get logout => _localizedValues[localeCode]['logout'] ?? '';

  String get login => _localizedValues[localeCode]['login'] ?? '';

  String get filter => _localizedValues[localeCode]['filter'] ?? '';

  String get sort => _localizedValues[localeCode]['sort'] ?? '';

  String get search => _localizedValues[localeCode]['search'] ?? '';

  String get active => _localizedValues[localeCode]['active'] ?? '';

  String get archived => _localizedValues[localeCode]['archived'] ?? '';

  String get deleted => _localizedValues[localeCode]['deleted'] ?? '';

  String get dashboard => _localizedValues[localeCode]['dashboard'] ?? '';

  String get archive => _localizedValues[localeCode]['archive'] ?? '';

  String get delete => _localizedValues[localeCode]['delete'] ?? '';

  String get restore => _localizedValues[localeCode]['restore'] ?? '';

  String get refreshComplete =>
      _localizedValues[localeCode]['refresh_complete'] ?? '';

  String get pleaseEnterYourEmail =>
      _localizedValues[localeCode]['please_enter_your_email'] ?? '';

  String get pleaseEnterYourPassword =>
      _localizedValues[localeCode]['please_enter_your_password'] ?? '';

  String get pleaseEnterYourUrl =>
      _localizedValues[localeCode]['please_enter_your_url'] ?? '';

  String get pleaseEnterAProductKey =>
      _localizedValues[localeCode]['please_enter_a_product_key'] ?? '';

  String get pleaseEnterAFirstName =>
      _localizedValues[localeCode]['please_enter_a_last_name'] ?? '';

  String get pleaseEnterALastName =>
      _localizedValues[localeCode]['please_enter_a_first_name'] ?? '';

  String get ascending => _localizedValues[localeCode]['ascending'] ?? '';

  String get descending => _localizedValues[localeCode]['descending'] ?? '';

  String get save => _localizedValues[localeCode]['save'] ?? '';

  String get anErrorOccurred =>
      _localizedValues[localeCode]['an_error_occurred'] ?? '';

  String get paidToDate => _localizedValues[localeCode]['paid_to_date'] ?? '';

  String get balanceDue => _localizedValues[localeCode]['balance_due'] ?? '';

  String get balance => _localizedValues[localeCode]['balance'] ?? '';

  String get overview => _localizedValues[localeCode]['overview'] ?? '';

  String get details => _localizedValues[localeCode]['details'] ?? '';

  String get phone => _localizedValues[localeCode]['phone'] ?? '';

  String get website => _localizedValues[localeCode]['website'] ?? '';

  String get vatNumber => _localizedValues[localeCode]['vat_number'] ?? '';

  String get idNumber => _localizedValues[localeCode]['id_number'] ?? '';

  String get create => _localizedValues[localeCode]['create'] ?? '';

  String get copiedToClipboard =>
      _localizedValues[localeCode]['copied_to_clipboard'] ?? '';

  String get error => _localizedValues[localeCode]['error'] ?? '';

  String get couldNotLaunch =>
      _localizedValues[localeCode]['could_not_launch'] ?? '';

  String get contacts => _localizedValues[localeCode]['contacts'] ?? '';

  String get additional => _localizedValues[localeCode]['additional'] ?? '';

  String get firstName => _localizedValues[localeCode]['first_name'] ?? '';

  String get lastName => _localizedValues[localeCode]['last_name'] ?? '';

  String get addContact => _localizedValues[localeCode]['add_contact'] ?? '';

  String get areYouSure => _localizedValues[localeCode]['are_you_sure'] ?? '';

  String get cancel => _localizedValues[localeCode]['cancel'] ?? '';

  String get ok => _localizedValues[localeCode]['ok'] ?? '';

  String get remove => _localizedValues[localeCode]['remove'] ?? '';

  String get emailIsInvalid =>
      _localizedValues[localeCode]['email_is_invalid'] ?? '';

  String get product => _localizedValues[localeCode]['product'] ?? '';

  String get products => _localizedValues[localeCode]['products'] ?? '';

  String get newProduct => _localizedValues[localeCode]['new_product'] ?? '';

  String get createdProduct =>
      _localizedValues[localeCode]['created_product'] ?? '';

  String get updatedProduct =>
      _localizedValues[localeCode]['updated_product'] ?? '';

  String get archivedProduct =>
      _localizedValues[localeCode]['archived_product'] ?? '';

  String get deletedProduct =>
      _localizedValues[localeCode]['deleted_product'] ?? '';

  String get restoredProduct =>
      _localizedValues[localeCode]['restored_product'] ?? '';

  String get newVendor => _localizedValues[localeCode]['new_vendor'] ?? '';

  String get createdVendor =>
      _localizedValues[localeCode]['created_vendor'] ?? '';

  String get updatedVendor =>
      _localizedValues[localeCode]['updated_vendor'] ?? '';

  String get archivedVendor =>
      _localizedValues[localeCode]['archived_vendor'] ?? '';

  String get deletedVendor =>
      _localizedValues[localeCode]['deleted_vendor'] ?? '';

  String get restoredVendor =>
      _localizedValues[localeCode]['restored_vendor'] ?? '';

  String get document => _localizedValues[localeCode]['document'] ?? '';

  String get documents => _localizedValues[localeCode]['documents'] ?? '';

  String get newDocument => _localizedValues[localeCode]['new_document'] ?? '';

  String get editDocument =>
      _localizedValues[localeCode]['edit_document'] ?? '';

  String get uploadedDocument =>
      _localizedValues[localeCode]['uploaded_document'] ?? '';

  String get updatedDocument =>
      _localizedValues[localeCode]['updated_document'] ?? '';

  String get archivedDocument =>
      _localizedValues[localeCode]['archived_document'] ?? '';

  String get deletedDocument =>
      _localizedValues[localeCode]['deleted_document'] ?? '';

  String get restoredDocument =>
      _localizedValues[localeCode]['restored_document'] ?? '';

  String get newExpense => _localizedValues[localeCode]['new_expense'] ?? '';

  String get createdExpense =>
      _localizedValues[localeCode]['created_expense'] ?? '';

  String get updatedExpense =>
      _localizedValues[localeCode]['updated_expense'] ?? '';

  String get archivedExpense =>
      _localizedValues[localeCode]['archived_expense'] ?? '';

  String get deletedExpense =>
      _localizedValues[localeCode]['deleted_expense'] ?? '';

  String get restoredExpense =>
      _localizedValues[localeCode]['restored_expense'] ?? '';

  String get productKey => _localizedValues[localeCode]['product_key'] ?? '';

  String get notes => _localizedValues[localeCode]['notes'] ?? '';

  String get cost => _localizedValues[localeCode]['cost'] ?? '';

  String get client => _localizedValues[localeCode]['client'] ?? '';

  String get clients => _localizedValues[localeCode]['clients'] ?? '';

  String get newClient => _localizedValues[localeCode]['new_client'] ?? '';

  String get createdClient =>
      _localizedValues[localeCode]['created_client'] ?? '';

  String get updatedClient =>
      _localizedValues[localeCode]['updated_client'] ?? '';

  String get archivedClient =>
      _localizedValues[localeCode]['archived_client'] ?? '';

  String get deletedClient =>
      _localizedValues[localeCode]['deleted_client'] ?? '';

  String get restoredClient =>
      _localizedValues[localeCode]['restored_client'] ?? '';

  String get address1 => _localizedValues[localeCode]['address1'] ?? '';

  String get address2 => _localizedValues[localeCode]['address2'] ?? '';

  String get city => _localizedValues[localeCode]['city'] ?? '';

  String get state => _localizedValues[localeCode]['state'] ?? '';

  String get postalCode => _localizedValues[localeCode]['postal_code'] ?? '';

  String get country => _localizedValues[localeCode]['country'] ?? '';

  String get invoice => _localizedValues[localeCode]['invoice'] ?? '';

  String get invoices => _localizedValues[localeCode]['invoices'] ?? '';

  String get newInvoice => _localizedValues[localeCode]['new_invoice'] ?? '';

  String get createdInvoice =>
      _localizedValues[localeCode]['created_invoice'] ?? '';

  String get updatedInvoice =>
      _localizedValues[localeCode]['updated_invoice'] ?? '';

  String get archivedInvoice =>
      _localizedValues[localeCode]['archived_invoice'] ?? '';

  String get deletedInvoice =>
      _localizedValues[localeCode]['deleted_invoice'] ?? '';

  String get restoredInvoice =>
      _localizedValues[localeCode]['restored_invoice'] ?? '';

  String get emailedInvoice =>
      _localizedValues[localeCode]['emailed_invoice'] ?? '';

  String get emailedPayment =>
      _localizedValues[localeCode]['emailed_payment'] ?? '';

  String get amount => _localizedValues[localeCode]['amount'] ?? '';

  String get invoiceNumber =>
      _localizedValues[localeCode]['invoice_number'] ?? '';

  String get invoiceDate => _localizedValues[localeCode]['invoice_date'] ?? '';

  String get discount => _localizedValues[localeCode]['discount'] ?? '';

  String get poNumber => _localizedValues[localeCode]['po_number'] ?? '';

  String get terms => _localizedValues[localeCode]['terms'] ?? '';

  String get publicNotes => _localizedValues[localeCode]['public_notes'] ?? '';

  String get privateNotes =>
      _localizedValues[localeCode]['private_notes'] ?? '';

  String get frequency => _localizedValues[localeCode]['frequency'] ?? '';

  String get startDate => _localizedValues[localeCode]['start_date'] ?? '';

  String get endDate => _localizedValues[localeCode]['end_date'] ?? '';

  String get quoteNumber => _localizedValues[localeCode]['quote_number'] ?? '';

  String get quoteDate => _localizedValues[localeCode]['quote_date'] ?? '';

  String get validUntil => _localizedValues[localeCode]['valid_until'] ?? '';

  String get items => _localizedValues[localeCode]['items'] ?? '';

  String get partialDeposit =>
      _localizedValues[localeCode]['partial_deposit'] ?? '';

  String get description => _localizedValues[localeCode]['description'] ?? '';

  String get unitCost => _localizedValues[localeCode]['unit_cost'] ?? '';

  String get quantity => _localizedValues[localeCode]['quantity'] ?? '';

  String get addItem => _localizedValues[localeCode]['add_item'] ?? '';

  String get contact => _localizedValues[localeCode]['contact'] ?? '';

  String get workPhone => _localizedValues[localeCode]['work_phone'] ?? '';

  String get totalAmount => _localizedValues[localeCode]['total_amount'] ?? '';

  String get pdf => _localizedValues[localeCode]['pdf'] ?? '';

  String get dueDate => _localizedValues[localeCode]['due_date'] ?? '';

  String get partialDueDate =>
      _localizedValues[localeCode]['partial_due_date'] ?? '';

  String get status => _localizedValues[localeCode]['status'] ?? '';

  String get invoiceStatusId =>
      _localizedValues[localeCode]['invoice_status_id'] ?? '';

  String get quoteStatusId =>
      _localizedValues[localeCode]['quote_status'] ?? '';

  String get clickPlusToAddItem =>
      _localizedValues[localeCode]['click_plus_to_add_item'] ?? '';

  String get clickPlusToAddTime =>
      _localizedValues[localeCode]['click_plus_to_add_time'] ?? '';

  String get countSelected =>
      _localizedValues[localeCode]['count_selected'] ?? '';

  String get total => _localizedValues[localeCode]['total'] ?? '';

  String get totals => _localizedValues[localeCode]['totals'] ?? '';

  String get percent => _localizedValues[localeCode]['percent'] ?? '';

  String get edit => _localizedValues[localeCode]['edit'] ?? '';

  String get dismiss => _localizedValues[localeCode]['dismiss'] ?? '';

  String get pleaseSelectADate =>
      _localizedValues[localeCode]['please_select_a_date'] ?? '';

  String get pleaseSelectAClient =>
      _localizedValues[localeCode]['please_select_a_client'] ?? '';

  String get pleaseSelectAnInvoice =>
      _localizedValues[localeCode]['please_select_an_invoice'] ?? '';

  String get taskRate => _localizedValues[localeCode]['task_rate'] ?? '';

  String get settings => _localizedValues[localeCode]['settings'] ?? '';

  String get language => _localizedValues[localeCode]['language'] ?? '';

  String get currency => _localizedValues[localeCode]['currency'] ?? '';

  String get createdAt => _localizedValues[localeCode]['created_at'] ?? '';

  String get updatedAt => _localizedValues[localeCode]['updated_at'] ?? '';

  String get tax => _localizedValues[localeCode]['tax'] ?? '';

  String get pleaseEnterAnInvoiceNumber =>
      _localizedValues[localeCode]['please_enter_an_invoice_number'] ?? '';

  String get pleaseEnterAQuoteNumber =>
      _localizedValues[localeCode]['please_enter_a_quote_number'] ?? '';

  String get pastDue => _localizedValues[localeCode]['past_due'] ?? '';

  String get draft => _localizedValues[localeCode]['draft'] ?? '';

  String get sent => _localizedValues[localeCode]['sent'] ?? '';

  String get viewed => _localizedValues[localeCode]['viewed'] ?? '';

  String get approved => _localizedValues[localeCode]['approved'] ?? '';

  String get partial => _localizedValues[localeCode]['partial'] ?? '';

  String get paid => _localizedValues[localeCode]['paid'] ?? '';

  String get markSent => _localizedValues[localeCode]['mark_sent'] ?? '';

  String get markedInvoiceAsSent =>
      _localizedValues[localeCode]['marked_invoice_as_sent'] ?? '';

  String get markedInvoiceAsPaid =>
      _localizedValues[localeCode]['marked_invoice_as_paid'] ?? '';

  String get markedInvoicesAsSent =>
      _localizedValues[localeCode]['marked_invoices_as_sent'] ?? '';

  String get markedInvoicesAsPaid =>
      _localizedValues[localeCode]['marked_invoices_as_paid'] ?? '';

  String get done => _localizedValues[localeCode]['done'] ?? '';

  String get pleaseEnterAClientOrContactName =>
      _localizedValues[localeCode]['please_enter_a_client_or_contact_name'] ??
      '';

  String get darkMode => _localizedValues[localeCode]['dark_mode'] ?? '';

  String get restartAppToApplyChange =>
      _localizedValues[localeCode]['restart_app_to_apply_change'] ?? '';

  String get refreshData => _localizedValues[localeCode]['refresh_data'] ?? '';

  String get blankContact =>
      _localizedValues[localeCode]['blank_contact'] ?? '';

  String get activity => _localizedValues[localeCode]['activity'] ?? '';

  String get noRecordsFound =>
      _localizedValues[localeCode]['no_records_found'] ?? '';

  String get clone => _localizedValues[localeCode]['clone'] ?? '';

  String get loading => _localizedValues[localeCode]['loading'] ?? '';

  String get industry => _localizedValues[localeCode]['industry'] ?? '';

  String get size => _localizedValues[localeCode]['size'] ?? '';

  String get paymentTerms =>
      _localizedValues[localeCode]['payment_terms'] ?? '';

  String get paymentDate => _localizedValues[localeCode]['payment_date'] ?? '';

  String get paymentStatus =>
      _localizedValues[localeCode]['payment_status'] ?? '';

  String get paymentStatus1 =>
      _localizedValues[localeCode]['payment_status_1'] ?? '';

  String get paymentStatus2 =>
      _localizedValues[localeCode]['payment_status_2'] ?? '';

  String get paymentStatus3 =>
      _localizedValues[localeCode]['payment_status_3'] ?? '';

  String get paymentStatus4 =>
      _localizedValues[localeCode]['payment_status_4'] ?? '';

  String get paymentStatus5 =>
      _localizedValues[localeCode]['payment_status_5'] ?? '';

  String get paymentStatus6 =>
      _localizedValues[localeCode]['payment_status_6'] ?? '';

  String get net => _localizedValues[localeCode]['net'] ?? '';

  String get clientPortal =>
      _localizedValues[localeCode]['client_portal'] ?? '';

  String get showTasks => _localizedValues[localeCode]['show_tasks'] ?? '';

  String get emailReminders =>
      _localizedValues[localeCode]['email_reminders'] ?? '';

  String get enabled => _localizedValues[localeCode]['enabled'] ?? '';

  String get recipients => _localizedValues[localeCode]['recipients'] ?? '';

  String get initialEmail =>
      _localizedValues[localeCode]['initial_email'] ?? '';

  String get firstReminder =>
      _localizedValues[localeCode]['first_reminder'] ?? '';

  String get secondReminder =>
      _localizedValues[localeCode]['second_reminder'] ?? '';

  String get thirdReminder =>
      _localizedValues[localeCode]['third_reminder'] ?? '';

  String get template => _localizedValues[localeCode]['template'] ?? '';

  String get send => _localizedValues[localeCode]['send'] ?? '';

  String get subject => _localizedValues[localeCode]['subject'] ?? '';

  String get body => _localizedValues[localeCode]['body'] ?? '';

  String get sendEmail => _localizedValues[localeCode]['send_email'] ?? '';

  String get emailReceipt =>
      _localizedValues[localeCode]['email_receipt'] ?? '';

  String get autoBilling => _localizedValues[localeCode]['auto_billing'] ?? '';

  String get button => _localizedValues[localeCode]['button'] ?? '';

  String get preview => _localizedValues[localeCode]['preview'] ?? '';

  String get customize => _localizedValues[localeCode]['customize'] ?? '';

  String get history => _localizedValues[localeCode]['history'] ?? '';

  String get payment => _localizedValues[localeCode]['payment'] ?? '';

  String get payments => _localizedValues[localeCode]['payments'] ?? '';

  String get refunded => _localizedValues[localeCode]['refunded'] ?? '';

  String get paymentType => _localizedValues[localeCode]['payment_type'] ?? '';

  String get transactionReference =>
      _localizedValues[localeCode]['transaction_reference'] ?? '';

  String get enterPayment =>
      _localizedValues[localeCode]['enter_payment'] ?? '';

  String get createdPayment =>
      _localizedValues[localeCode]['created_payment'] ?? '';

  String get updatedPayment =>
      _localizedValues[localeCode]['updated_payment'] ?? '';

  String get archivedPayment =>
      _localizedValues[localeCode]['archived_payment'] ?? '';

  String get deletedPayment =>
      _localizedValues[localeCode]['deleted_payment'] ?? '';

  String get restoredPayment =>
      _localizedValues[localeCode]['restored_payment'] ?? '';

  String get quote => _localizedValues[localeCode]['quote'] ?? '';

  String get quotes => _localizedValues[localeCode]['quotes'] ?? '';

  String get newQuote => _localizedValues[localeCode]['new_quote'] ?? '';

  String get createdQuote =>
      _localizedValues[localeCode]['created_quote'] ?? '';

  String get updatedQuote =>
      _localizedValues[localeCode]['updated_quote'] ?? '';

  String get archivedQuote =>
      _localizedValues[localeCode]['archived_quote'] ?? '';

  String get deletedQuote =>
      _localizedValues[localeCode]['deleted_quote'] ?? '';

  String get restoredQuote =>
      _localizedValues[localeCode]['restored_quote'] ?? '';

  String get expense => _localizedValues[localeCode]['expense'] ?? '';

  String get expenses => _localizedValues[localeCode]['expenses'] ?? '';

  String get vendor => _localizedValues[localeCode]['vendor'] ?? '';

  String get vendors => _localizedValues[localeCode]['vendors'] ?? '';

  String get task => _localizedValues[localeCode]['task'] ?? '';

  String get tasks => _localizedValues[localeCode]['tasks'] ?? '';

  String get project => _localizedValues[localeCode]['project'] ?? '';

  String get projects => _localizedValues[localeCode]['projects'] ?? '';

  String get activity_1 => _localizedValues[localeCode]['activity_1'] ?? '';

  String get activity_2 => _localizedValues[localeCode]['activity_2'] ?? '';

  String get activity_3 => _localizedValues[localeCode]['activity_3'] ?? '';

  String get activity_4 => _localizedValues[localeCode]['activity_4'] ?? '';

  String get activity_5 => _localizedValues[localeCode]['activity_5'] ?? '';

  String get activity_6 => _localizedValues[localeCode]['activity_6'] ?? '';

  String get activity_7 => _localizedValues[localeCode]['activity_7'] ?? '';

  String get activity_8 => _localizedValues[localeCode]['activity_8'] ?? '';

  String get activity_9 => _localizedValues[localeCode]['activity_9'] ?? '';

  String get activity_10 => _localizedValues[localeCode]['activity_10'] ?? '';

  String get activity_11 => _localizedValues[localeCode]['activity_11'] ?? '';

  String get activity_12 => _localizedValues[localeCode]['activity_12'] ?? '';

  String get activity_13 => _localizedValues[localeCode]['activity_13'] ?? '';

  String get activity_14 => _localizedValues[localeCode]['activity_14'] ?? '';

  String get activity_15 => _localizedValues[localeCode]['activity_15'] ?? '';

  String get activity_16 => _localizedValues[localeCode]['activity_16'] ?? '';

  String get activity_17 => _localizedValues[localeCode]['activity_17'] ?? '';

  String get activity_18 => _localizedValues[localeCode]['activity_18'] ?? '';

  String get activity_19 => _localizedValues[localeCode]['activity_19'] ?? '';

  String get activity_20 => _localizedValues[localeCode]['activity_20'] ?? '';

  String get activity_21 => _localizedValues[localeCode]['activity_21'] ?? '';

  String get activity_22 => _localizedValues[localeCode]['activity_22'] ?? '';

  String get activity_23 => _localizedValues[localeCode]['activity_23'] ?? '';

  String get activity_24 => _localizedValues[localeCode]['activity_24'] ?? '';

  String get activity_25 => _localizedValues[localeCode]['activity_25'] ?? '';

  String get activity_26 => _localizedValues[localeCode]['activity_26'] ?? '';

  String get activity_27 => _localizedValues[localeCode]['activity_27'] ?? '';

  String get activity_28 => _localizedValues[localeCode]['activity_28'] ?? '';

  String get activity_29 => _localizedValues[localeCode]['activity_29'] ?? '';

  String get activity_30 => _localizedValues[localeCode]['activity_30'] ?? '';

  String get activity_31 => _localizedValues[localeCode]['activity_31'] ?? '';

  String get activity_32 => _localizedValues[localeCode]['activity_32'] ?? '';

  String get activity_33 => _localizedValues[localeCode]['activity_33'] ?? '';

  String get activity_34 => _localizedValues[localeCode]['activity_34'] ?? '';

  String get activity_35 => _localizedValues[localeCode]['activity_35'] ?? '';

  String get activity_36 => _localizedValues[localeCode]['activity_36'] ?? '';

  String get activity_37 => _localizedValues[localeCode]['activity_37'] ?? '';

  String get activity_38 => _localizedValues[localeCode]['activity_38'] ?? '';

  String get activity_39 => _localizedValues[localeCode]['activity_39'] ?? '';

  String get activity_40 => _localizedValues[localeCode]['activity_40'] ?? '';

  String get activity_41 => _localizedValues[localeCode]['activity_41'] ?? '';

  String get activity_42 => _localizedValues[localeCode]['activity_42'] ?? '';

  String get activity_43 => _localizedValues[localeCode]['activity_43'] ?? '';

  String get activity_44 => _localizedValues[localeCode]['activity_44'] ?? '';

  String get activity_45 => _localizedValues[localeCode]['activity_45'] ?? '';

  String get activity_46 => _localizedValues[localeCode]['activity_46'] ?? '';

  String get activity_47 => _localizedValues[localeCode]['activity_47'] ?? '';

  String get activity_48 => _localizedValues[localeCode]['activity_48'] ?? '';

  String get activity_79 => _localizedValues[localeCode]['activity_49'] ?? '';

  String get activity_50 => _localizedValues[localeCode]['activity_50'] ?? '';

  String get activity_51 => _localizedValues[localeCode]['activity_51'] ?? '';

  String get activity_52 => _localizedValues[localeCode]['activity_52'] ?? '';

  String get activity_53 => _localizedValues[localeCode]['activity_53'] ?? '';

  String get activity_54 => _localizedValues[localeCode]['activity_54'] ?? '';

  String get activity_55 => _localizedValues[localeCode]['activity_55'] ?? '';

  String get activity_56 => _localizedValues[localeCode]['activity_56'] ?? '';

  String get activity_57 => _localizedValues[localeCode]['activity_57'] ?? '';

  String get activity_58 => _localizedValues[localeCode]['activity_58'] ?? '';

  String get activity_59 => _localizedValues[localeCode]['activity_59'] ?? '';

  String get oneTimePassword =>
      _localizedValues[localeCode]['one_time_password'] ?? '';

  String get emailedQuote =>
      _localizedValues[localeCode]['emailed_quote'] ?? '';

  String get emailedCredit =>
      _localizedValues[localeCode]['emailed_credit'] ?? '';

  String get markedQuoteAsSent =>
      _localizedValues[localeCode]['marked_quote_as_sent'] ?? '';

  String get markedCreditAsSent =>
      _localizedValues[localeCode]['marked_credit_as_sent'] ?? '';

  String get expired => _localizedValues[localeCode]['expired'] ?? '';

  String get budgetedHours =>
      _localizedValues[localeCode]['budgeted_hours'] ?? '';

  String get pleaseEnterAName =>
      _localizedValues[localeCode]['please_enter_a_name'] ?? '';

  String get createdTask => _localizedValues[localeCode]['created_task'] ?? '';

  String get updatedTask => _localizedValues[localeCode]['updated_task'] ?? '';

  String get archivedTask =>
      _localizedValues[localeCode]['archived_task'] ?? '';

  String get deletedTask => _localizedValues[localeCode]['deleted_task'] ?? '';

  String get restoredTask =>
      _localizedValues[localeCode]['restored_task'] ?? '';

  String get newTask => _localizedValues[localeCode]['new_task'] ?? '';

  String get duration => _localizedValues[localeCode]['duration'] ?? '';

  String get times => _localizedValues[localeCode]['times'] ?? '';

  String get date => _localizedValues[localeCode]['date'] ?? '';

  String get startTime => _localizedValues[localeCode]['start_time'] ?? '';

  String get endTime => _localizedValues[localeCode]['end_time'] ?? '';

  String get budgeted => _localizedValues[localeCode]['budgeted'] ?? '';

  String get timer => _localizedValues[localeCode]['timer'] ?? '';

  String get manual => _localizedValues[localeCode]['manual'] ?? '';

  String get autoStartTasks =>
      _localizedValues[localeCode]['auto_start_tasks'] ?? '';

  String get now => _localizedValues[localeCode]['now'] ?? '';

  String get startedTask => _localizedValues[localeCode]['started_task'] ?? '';

  String get stoppedTask => _localizedValues[localeCode]['stopped_task'] ?? '';

  String get resumedTask => _localizedValues[localeCode]['resumed_task'] ?? '';

  String get start => _localizedValues[localeCode]['start'] ?? '';

  String get stop => _localizedValues[localeCode]['stop'] ?? '';

  String get taskErrors => _localizedValues[localeCode]['task_errors'] ?? '';

  String get resume => _localizedValues[localeCode]['resume'] ?? '';

  String get running => _localizedValues[localeCode]['running'] ?? '';

  String get invoiced => _localizedValues[localeCode]['invoiced'] ?? '';

  String get logged => _localizedValues[localeCode]['logged'] ?? '';

  String get failedToFindRecord =>
      _localizedValues[localeCode]['failed_to_find_record'] ?? '';

  String get passwordIsTooShort =>
      _localizedValues[localeCode]['password_is_too_short'] ?? '';

  String get design => _localizedValues[localeCode]['design'] ?? '';

  String get copyShipping =>
      _localizedValues[localeCode]['copy_shipping'] ?? '';

  String get copyBilling => _localizedValues[localeCode]['copy_billing'] ?? '';

  String get address => _localizedValues[localeCode]['address'] ?? '';

  String get category => _localizedValues[localeCode]['category'] ?? '';

  String get markBillable =>
      _localizedValues[localeCode]['mark_billable'] ?? '';

  String get markPaid => _localizedValues[localeCode]['mark_paid'] ?? '';

  String get convertCurrency =>
      _localizedValues[localeCode]['convert_currency'] ?? '';

  String get exchangeRate =>
      _localizedValues[localeCode]['exchange_rate'] ?? '';

  String get addDocumentsToInvoice =>
      _localizedValues[localeCode]['add_documents_to_invoice'] ?? '';

  String get pending => _localizedValues[localeCode]['pending'] ?? '';

  String get converted => _localizedValues[localeCode]['converted'] ?? '';

  String get expenseStatus1 =>
      _localizedValues[localeCode]['expense_status_1'] ?? '';

  String get expenseStatus2 =>
      _localizedValues[localeCode]['expense_status_2'] ?? '';

  String get expenseStatus3 =>
      _localizedValues[localeCode]['expense_status_3'] ?? '';

  String get expenseDate => _localizedValues[localeCode]['expense_date'] ?? '';

  String get noHistory => _localizedValues[localeCode]['no_history'] ?? '';

  String get takePicture => _localizedValues[localeCode]['take_picture'] ?? '';

  String get uploadFile => _localizedValues[localeCode]['upload_file'] ?? '';

  String get download => _localizedValues[localeCode]['download'] ?? '';

  String get noRecordSelected =>
      _localizedValues[localeCode]['no_record_selected'] ?? '';

  String get requiresAnEnterprisePlan =>
      _localizedValues[localeCode]['requires_an_enterprise_plan'] ?? '';

  String get errorUnsavedChanges =>
      _localizedValues[localeCode]['error_unsaved_changes'] ?? '';

  String get createNew => _localizedValues[localeCode]['create_new'] ?? '';

  String get emailLogin => _localizedValues[localeCode]['email_login'] ?? '';

  String get createAccount =>
      _localizedValues[localeCode]['create_account'] ?? '';

  String get viewWebsite => _localizedValues[localeCode]['view_website'] ?? '';

  String get accountLogin =>
      _localizedValues[localeCode]['account_login'] ?? '';

  String get signUp => _localizedValues[localeCode]['sign_up'] ?? '';

  String get googleSignUp =>
      _localizedValues[localeCode]['google_sign_up'] ?? '';

  String get pleaseAgreeToTermsAndPrivacy =>
      _localizedValues[localeCode]['please_agree_to_terms_and_privacy'] ?? '';

  String get iAgreeToThe =>
      _localizedValues[localeCode]['i_agree_to_the'] ?? '';

  String get termsOfServiceLink =>
      _localizedValues[localeCode]['terms_of_service_link'] ?? '';

  String get privacyPolicyLink =>
      _localizedValues[localeCode]['privacy_policy_link'] ?? '';

  String get termsOfService =>
      _localizedValues[localeCode]['terms_of_service'] ?? '';

  String get privacyPolicy =>
      _localizedValues[localeCode]['privacy_policy'] ?? '';

  String get upgrade => _localizedValues[localeCode]['upgrade'] ?? '';

  String get proPlan => _localizedValues[localeCode]['pro_plan'] ?? '';

  String get enterprisePlan =>
      _localizedValues[localeCode]['enterprise_plan'] ?? '';

  String get countUsers => _localizedValues[localeCode]['count_users'] ?? '';

  String get annualSubscription =>
      _localizedValues[localeCode]['annual_subscription'] ?? '';

  String get pastPurchases =>
      _localizedValues[localeCode]['past_purchases'] ?? '';

  String get back => _localizedValues[localeCode]['back'] ?? '';

  String get redeem => _localizedValues[localeCode]['redeem'] ?? '';

  String get thankYouForYourPurchase =>
      _localizedValues[localeCode]['thank_you_for_your_purchase'] ?? '';

  String get select => _localizedValues[localeCode]['select'] ?? '';

  String get longPressSelectionIsDefault =>
      _localizedValues[localeCode]['long_press_multiselect'] ?? '';

  String get all => _localizedValues[localeCode]['all'] ?? '';

  String get emailSignUp => _localizedValues[localeCode]['email_sign_up'] ?? '';

  String get price => _localizedValues[localeCode]['price'] ?? '';

  String get companyDetails =>
      _localizedValues[localeCode]['company_details'] ?? '';

  String get userDetails => _localizedValues[localeCode]['user_details'] ?? '';

  String get localization => _localizedValues[localeCode]['localization'] ?? '';

  String get onlinePayments =>
      _localizedValues[localeCode]['online_payments'] ?? '';

  String get taxRates => _localizedValues[localeCode]['tax_rates'] ?? '';

  String get notifications =>
      _localizedValues[localeCode]['notifications'] ?? '';

  String get importExport =>
      _localizedValues[localeCode]['import_export'] ?? '';

  String get customFields =>
      _localizedValues[localeCode]['custom_fields'] ?? '';

  String get invoiceDesign =>
      _localizedValues[localeCode]['invoice_design'] ?? '';

  String get buyNowButtons =>
      _localizedValues[localeCode]['buy_now_buttons'] ?? '';

  String get emailSettings =>
      _localizedValues[localeCode]['email_settings'] ?? '';

  String get templatesAndReminders =>
      _localizedValues[localeCode]['templates_and_reminders'] ?? '';

  String get creditCardsAndBanks =>
      _localizedValues[localeCode]['credit_cards_and_banks'] ?? '';

  String get dataVisualizations =>
      _localizedValues[localeCode]['data_visualizations'] ?? '';

  String get basicSettings =>
      _localizedValues[localeCode]['basic_settings'] ?? '';

  String get advancedSettings =>
      _localizedValues[localeCode]['advanced_settings'] ?? '';

  String get defaults => _localizedValues[localeCode]['defaults'] ?? '';

  String get deviceSettings =>
      _localizedValues[localeCode]['device_settings'] ?? '';

  String get productSettings =>
      _localizedValues[localeCode]['product_settings'] ?? '';

  String get savedSettings =>
      _localizedValues[localeCode]['saved_settings'] ?? '';

  String get logo => _localizedValues[localeCode]['logo'] ?? '';

  String get uploadLogo => _localizedValues[localeCode]['upload_logo'] ?? '';

  String get uploadedLogo =>
      _localizedValues[localeCode]['uploaded_logo'] ?? '';

  String get newGroup => _localizedValues[localeCode]['new_group'] ?? '';

  String get createdGroup =>
      _localizedValues[localeCode]['created_group'] ?? '';

  String get updatedGroup =>
      _localizedValues[localeCode]['updated_group'] ?? '';

  String get archivedGroup =>
      _localizedValues[localeCode]['archived_group'] ?? '';

  String get deletedGroup =>
      _localizedValues[localeCode]['deleted_group'] ?? '';

  String get restoredGroup =>
      _localizedValues[localeCode]['restored_group'] ?? '';

  String get editGroup => _localizedValues[localeCode]['edit_group'] ?? '';

  String get groups => _localizedValues[localeCode]['groups'] ?? '';

  String get groupSettings =>
      _localizedValues[localeCode]['group_settings'] ?? '';

  String get filteredByGroup =>
      _localizedValues[localeCode]['filtered_by_group'] ?? '';

  String get filteredByClient =>
      _localizedValues[localeCode]['filtered_by_client'] ?? '';

  String get filteredByVendor =>
      _localizedValues[localeCode]['filtered_by_vendor'] ?? '';

  String get filteredByInvoice =>
      _localizedValues[localeCode]['filtered_by_invoice'] ?? '';

  String get filteredByProject =>
      _localizedValues[localeCode]['filtered_by_project'] ?? '';

  String get group => _localizedValues[localeCode]['group'] ?? '';

  String get timezone => _localizedValues[localeCode]['timezone'] ?? '';

  String get dateFormat => _localizedValues[localeCode]['date_format'] ?? '';

  String get datetimeFormat =>
      _localizedValues[localeCode]['datetime_format'] ?? '';

  String get militaryTime =>
      _localizedValues[localeCode]['military_time'] ?? '';

  String get militaryTimeHelp =>
      _localizedValues[localeCode]['military_time_help'] ?? '';

  String get sendReminders =>
      _localizedValues[localeCode]['send_reminders'] ?? '';

  String get symbol => _localizedValues[localeCode]['symbol'] ?? '';

  String get code => _localizedValues[localeCode]['ocde'] ?? '';

  String get sunday => _localizedValues[localeCode]['sunday'] ?? '';

  String get monday => _localizedValues[localeCode]['monday'] ?? '';

  String get tuesday => _localizedValues[localeCode]['tuesday'] ?? '';

  String get wednesday => _localizedValues[localeCode]['wednesday'] ?? '';

  String get thursday => _localizedValues[localeCode]['thursday'] ?? '';

  String get friday => _localizedValues[localeCode]['friday'] ?? '';

  String get saturday => _localizedValues[localeCode]['saturday'] ?? '';

  String get january => _localizedValues[localeCode]['january'] ?? '';

  String get february => _localizedValues[localeCode]['february'] ?? '';

  String get march => _localizedValues[localeCode]['march'] ?? '';

  String get april => _localizedValues[localeCode]['april'] ?? '';

  String get may => _localizedValues[localeCode]['may'] ?? '';

  String get june => _localizedValues[localeCode]['june'] ?? '';

  String get july => _localizedValues[localeCode]['july'] ?? '';

  String get august => _localizedValues[localeCode]['august'] ?? '';

  String get september => _localizedValues[localeCode]['september'] ?? '';

  String get october => _localizedValues[localeCode]['october'] ?? '';

  String get november => _localizedValues[localeCode]['november'] ?? '';

  String get december => _localizedValues[localeCode]['december'] ?? '';

  String get firstDayOfTheWeek =>
      _localizedValues[localeCode]['first_day_of_the_week'] ?? '';

  String get firstMonthOfTheYear =>
      _localizedValues[localeCode]['first_month_of_the_year'] ?? '';

  String get currencyFormat =>
      _localizedValues[localeCode]['currency_format'] ?? '';

  String get disabled => _localizedValues[localeCode]['disabled'] ?? '';

  String get defaultValue =>
      _localizedValues[localeCode]['default_value'] ?? '';

  String get discardChanges =>
      _localizedValues[localeCode]['discard_changes'] ?? '';

  String get continueEditing =>
      _localizedValues[localeCode]['continue_editing'] ?? '';

  String get editCompanyGateway =>
      _localizedValues[localeCode]['edit_company_gateway'] ?? '';

  String get newCompanyGateway =>
      _localizedValues[localeCode]['new_company_gateway'] ?? '';

  String get createdCompanyGateway =>
      _localizedValues[localeCode]['created_company_gateway'] ?? '';

  String get updatedCompanyGateway =>
      _localizedValues[localeCode]['updated_company_gateway'] ?? '';

  String get archivedCompanyGateway =>
      _localizedValues[localeCode]['archived_company_gateway'] ?? '';

  String get deletedCompanyGateway =>
      _localizedValues[localeCode]['deleted_company_gateway'] ?? '';

  String get restoredCompanyGateway =>
      _localizedValues[localeCode]['restored_company_gateway'] ?? '';

  String get companyGateways =>
      _localizedValues[localeCode]['company_gateways'] ?? '';

  String get companyGateway =>
      _localizedValues[localeCode]['company_gateway'] ?? '';

  String get provider => _localizedValues[localeCode]['provider'] ?? '';

  String get fees => _localizedValues[localeCode]['fees'] ?? '';

  String get limits => _localizedValues[localeCode]['limits'] ?? '';

  String get fillProducts =>
      _localizedValues[localeCode]['fill_products'] ?? '';

  String get fillProductsHelp =>
      _localizedValues[localeCode]['fill_products_help'] ?? '';

  String get updateProducts =>
      _localizedValues[localeCode]['update_products'] ?? '';

  String get updateProductsHelp =>
      _localizedValues[localeCode]['update_products_help'] ?? '';

  String get convertProducts =>
      _localizedValues[localeCode]['convert_products'] ?? '';

  String get convertProductsHelp =>
      _localizedValues[localeCode]['convert_products_help'] ?? '';

  String get newTaxRate => _localizedValues[localeCode]['new_tax_rate'] ?? '';

  String get createdTaxRate =>
      _localizedValues[localeCode]['created_tax_rate'] ?? '';

  String get updatedTaxRate =>
      _localizedValues[localeCode]['updated_tax_rate'] ?? '';

  String get archivedTaxRate =>
      _localizedValues[localeCode]['archived_tax_rate'] ?? '';

  String get deletedTaxRate =>
      _localizedValues[localeCode]['deleted_tax_rate'] ?? '';

  String get restoredTaxRate =>
      _localizedValues[localeCode]['restored_tax_rate'] ?? '';

  String get editTaxRate => _localizedValues[localeCode]['edit_tax_rate'] ?? '';

  String get taxRate => _localizedValues[localeCode]['tax_rate'] ?? '';

  String get rate => _localizedValues[localeCode]['rate'] ?? '';

  String get requireBillingAddressHelp =>
      _localizedValues[localeCode]['require_billing_address_help'] ?? '';

  String get requireShippingAddressHelp =>
      _localizedValues[localeCode]['require_shipping_address_help'] ?? '';

  String get updateAddress =>
      _localizedValues[localeCode]['update_address'] ?? '';

  String get updateAddressHelp =>
      _localizedValues[localeCode]['update_address_help'] ?? '';

  String get credentials => _localizedValues[localeCode]['credentials'] ?? '';

  String get acceptedCardLogos =>
      _localizedValues[localeCode]['accepted_card_logos'] ?? '';

  String get min => _localizedValues[localeCode]['min'] ?? '';

  String get max => _localizedValues[localeCode]['max'] ?? '';

  String get minLimit => _localizedValues[localeCode]['min_limit'] ?? '';

  String get maxLimit => _localizedValues[localeCode]['max_limit'] ?? '';

  String get enableMin => _localizedValues[localeCode]['enable_min'] ?? '';

  String get enableMax => _localizedValues[localeCode]['enable_max'] ?? '';

  String get limitsAndFees =>
      _localizedValues[localeCode]['limits_and_fees'] ?? '';

  String get feeAmount => _localizedValues[localeCode]['fee_amount'] ?? '';

  String get feePercent => _localizedValues[localeCode]['fee_percent'] ?? '';

  String get feeCap => _localizedValues[localeCode]['fee_cap'] ?? '';

  String get priority => _localizedValues[localeCode]['priority'] ?? '';

  String get creditCard => _localizedValues[localeCode]['credit_card'] ?? '';

  String get bankTransfer =>
      _localizedValues[localeCode]['bank_transfer'] ?? '';

  String get processed => _localizedValues[localeCode]['processed'] ?? '';

  String get replyToEmail =>
      _localizedValues[localeCode]['reply_to_email'] ?? '';

  String get bccEmail => _localizedValues[localeCode]['bcc_email'] ?? '';

  String get attachPdf => _localizedValues[localeCode]['attach_pdf'] ?? '';

  String get attachDocuments =>
      _localizedValues[localeCode]['attach_documents'] ?? '';

  String get attachUbl => _localizedValues[localeCode]['attach_ubl'] ?? '';

  String get emailStyle => _localizedValues[localeCode]['email_style'] ?? '';

  String get enableMarkup =>
      _localizedValues[localeCode]['enable_email_markup'] ?? '';

  String get enableMarkupHelp =>
      _localizedValues[localeCode]['enable_email_markup_help'] ?? '';

  String get emailDesign => _localizedValues[localeCode]['email_design'] ?? '';

  String get plain => _localizedValues[localeCode]['plain'] ?? '';

  String get light => _localizedValues[localeCode]['light'] ?? '';

  String get dark => _localizedValues[localeCode]['dark'] ?? '';

  String get emailSignature =>
      _localizedValues[localeCode]['email_signature'] ?? '';

  String get portalMode => _localizedValues[localeCode]['portal_mode'] ?? '';

  String get domain => _localizedValues[localeCode]['domain'] ?? '';

  String get subdomain => _localizedValues[localeCode]['subdomain'] ?? '';

  String get authorization =>
      _localizedValues[localeCode]['authorization'] ?? '';

  String get enablePortalPassword =>
      _localizedValues[localeCode]['enable_portal_password'] ?? '';

  String get enablePortalPasswordHelp =>
      _localizedValues[localeCode]['enable_portal_password_help'] ?? '';

  String get showAcceptInvoiceTerms =>
      _localizedValues[localeCode]['show_accept_invoice_terms'] ?? '';

  String get showAcceptInvoiceTermsHelp =>
      _localizedValues[localeCode]['show_accept_invoice_terms_help'] ?? '';

  String get showAcceptQuoteTerms =>
      _localizedValues[localeCode]['show_accept_quote_terms'] ?? '';

  String get showAcceptQuoteTermsHelp =>
      _localizedValues[localeCode]['show_accept_quote_terms_help'] ?? '';

  String get requireInvoiceSignature =>
      _localizedValues[localeCode]['require_invoice_signature'] ?? '';

  String get requireInvoiceSignatureHelp =>
      _localizedValues[localeCode]['require_invoice_signature_help'] ?? '';

  String get requireQuoteSignature =>
      _localizedValues[localeCode]['require_quote_signature'] ?? '';

  String get signatureOnPdf =>
      _localizedValues[localeCode]['signature_on_pdf'] ?? '';

  String get signatureOnPdfHelp =>
      _localizedValues[localeCode]['signature_on_pdf_help'] ?? '';

  String get customCss => _localizedValues[localeCode]['custom_css'] ?? '';

  String get customJavascript =>
      _localizedValues[localeCode]['custom_javascript'] ?? '';

  String get messages => _localizedValues[localeCode]['messages'] ?? '';

  String get prefix => _localizedValues[localeCode]['prefix'] ?? '';

  String get numberPattern =>
      _localizedValues[localeCode]['number_pattern'] ?? '';

  String get numberCounter =>
      _localizedValues[localeCode]['number_counter'] ?? '';

  String get creditField => _localizedValues[localeCode]['credit_field'] ?? '';

  String get invoiceField =>
      _localizedValues[localeCode]['invoice_field'] ?? '';

  String get clientField => _localizedValues[localeCode]['client_field'] ?? '';

  String get productField =>
      _localizedValues[localeCode]['product_field'] ?? '';

  String get paymentField =>
      _localizedValues[localeCode]['payment_field'] ?? '';

  String get contactField =>
      _localizedValues[localeCode]['contact_field'] ?? '';

  String get vendorField => _localizedValues[localeCode]['vendor_field'] ?? '';

  String get expenseField =>
      _localizedValues[localeCode]['expense_field'] ?? '';

  String get projectField =>
      _localizedValues[localeCode]['project_field'] ?? '';

  String get taskField => _localizedValues[localeCode]['task_field'] ?? '';

  String get groupField => _localizedValues[localeCode]['group_field'] ?? '';

  String get general => _localizedValues[localeCode]['general'] ?? '';

  String get numberPadding =>
      _localizedValues[localeCode]['number_padding'] ?? '';

  String get recurringPrefix =>
      _localizedValues[localeCode]['recurring_prefix'] ?? '';

  String get resetCounter =>
      _localizedValues[localeCode]['reset_counter'] ?? '';

  String get nextReset => _localizedValues[localeCode]['next_reset'] ?? '';

  String get credit => _localizedValues[localeCode]['credit'] ?? '';

  String get credits => _localizedValues[localeCode]['credits'] ?? '';

  String get customSurcharge =>
      _localizedValues[localeCode]['invoice_surcharge'] ?? '';

  String get chargeTaxes => _localizedValues[localeCode]['charge_taxes'] ?? '';

  String get companyField =>
      _localizedValues[localeCode]['company_field'] ?? '';

  String get companyValue =>
      _localizedValues[localeCode]['company_value'] ?? '';

  String get generatedNumbers =>
      _localizedValues[localeCode]['generated_numbers'] ?? '';

  String get company => _localizedValues[localeCode]['company'] ?? '';

  String get surchargeField =>
      _localizedValues[localeCode]['surcharge_field'] ?? '';

  String get never => _localizedValues[localeCode]['never'] ?? '';

  String get freqDaily => _localizedValues[localeCode]['freq_daily'] ?? '';

  String get freqWeekly => _localizedValues[localeCode]['freq_weekly'] ?? '';

  String get freqTwoWeeks =>
      _localizedValues[localeCode]['freq_two_weeks'] ?? '';

  String get freqFourWeeks =>
      _localizedValues[localeCode]['freq_four_weeks'] ?? '';

  String get freqMonthly => _localizedValues[localeCode]['freq_monthly'] ?? '';

  String get freqTwoMonths =>
      _localizedValues[localeCode]['freq_two_months'] ?? '';

  String get freqThreeMonths =>
      _localizedValues[localeCode]['freq_three_months'] ?? '';

  String get freqFourMonths =>
      _localizedValues[localeCode]['freq_four_months'] ?? '';

  String get freqSixMonths =>
      _localizedValues[localeCode]['freq_six_months'] ?? '';

  String get freqAnnually =>
      _localizedValues[localeCode]['freq_annually'] ?? '';

  String get freqTwoYears =>
      _localizedValues[localeCode]['freq_two_years'] ?? '';

  String get freqThreeYears =>
      _localizedValues[localeCode]['freq_three_years'] ?? '';

  String get workflowSettings =>
      _localizedValues[localeCode]['workflow_settings'] ?? '';

  String get autoEmailInvoice =>
      _localizedValues[localeCode]['auto_email_invoice'] ?? '';

  String get autoEmailInvoiceHelp =>
      _localizedValues[localeCode]['auto_email_invoice_help'] ?? '';

  String get autoArchiveInvoice =>
      _localizedValues[localeCode]['auto_archive_invoice'] ?? '';

  String get autoArchiveInvoiceHelp =>
      _localizedValues[localeCode]['auto_archive_invoice_help'] ?? '';

  String get autoArchiveQuote =>
      _localizedValues[localeCode]['auto_archive_quote'] ?? '';

  String get autoArchiveQuoteHelp =>
      _localizedValues[localeCode]['auto_archive_quote_help'] ?? '';

  String get autoConvertQuote =>
      _localizedValues[localeCode]['auto_convert_quote'] ?? '';

  String get autoConvertQuoteHelp =>
      _localizedValues[localeCode]['auto_convert_quote_help'] ?? '';

  String get invoiceTerms =>
      _localizedValues[localeCode]['invoice_terms'] ?? '';

  String get invoiceFooter =>
      _localizedValues[localeCode]['invoice_footer'] ?? '';

  String get quoteTerms => _localizedValues[localeCode]['quote_terms'] ?? '';

  String get quoteFooter => _localizedValues[localeCode]['quote_footer'] ?? '';

  String get invoiceFields =>
      _localizedValues[localeCode]['invoice_fields'] ?? '';

  String get productFields =>
      _localizedValues[localeCode]['product_fields'] ?? '';

  String get quoteDesign => _localizedValues[localeCode]['quote_design'] ?? '';

  String get pageSize => _localizedValues[localeCode]['page_size'] ?? '';

  String get fontSize => _localizedValues[localeCode]['font_size'] ?? '';

  String get primaryColor =>
      _localizedValues[localeCode]['primary_color'] ?? '';

  String get secondaryColor =>
      _localizedValues[localeCode]['secondary_color'] ?? '';

  String get primaryFont => _localizedValues[localeCode]['primary_font'] ?? '';

  String get secondaryFont =>
      _localizedValues[localeCode]['secondary_font'] ?? '';

  String get hidePaidToDate =>
      _localizedValues[localeCode]['hide_paid_to_date'] ?? '';

  String get hidePaidToDateHelp =>
      _localizedValues[localeCode]['hide_paid_to_date_help'] ?? '';

  String get invoiceEmbedDocuments =>
      _localizedValues[localeCode]['invoice_embed_documents'] ?? '';

  String get invoiceEmbedDocumentsHelp =>
      _localizedValues[localeCode]['invoice_embed_documents_help'] ?? '';

  String get allPagesHeader =>
      _localizedValues[localeCode]['all_pages_header'] ?? '';

  String get allPagesFooter =>
      _localizedValues[localeCode]['all_pages_footer'] ?? '';

  String get firstPage => _localizedValues[localeCode]['first_page'] ?? '';

  String get allPages => _localizedValues[localeCode]['all_pages'] ?? '';

  String get lastPage => _localizedValues[localeCode]['last_page'] ?? '';

  String get generalSettings =>
      _localizedValues[localeCode]['general_settings'] ?? '';

  String get invoiceOptions =>
      _localizedValues[localeCode]['invoice_options'] ?? '';

  String get newUser => _localizedValues[localeCode]['new_user'] ?? '';

  String get createdUser => _localizedValues[localeCode]['created_user'] ?? '';

  String get updatedUser => _localizedValues[localeCode]['updated_user'] ?? '';

  String get archivedUser =>
      _localizedValues[localeCode]['archived_user'] ?? '';

  String get deletedUser => _localizedValues[localeCode]['deleted_user'] ?? '';

  String get removedUser => _localizedValues[localeCode]['removed_user'] ?? '';

  String get restoredUser =>
      _localizedValues[localeCode]['restored_user'] ?? '';

  String get editUser => _localizedValues[localeCode]['edit_user'] ?? '';

  String get users => _localizedValues[localeCode]['users'] ?? '';

  String get userManagement =>
      _localizedValues[localeCode]['user_management'] ?? '';

  String get administrator =>
      _localizedValues[localeCode]['administrator'] ?? '';

  String get administratorHelp =>
      _localizedValues[localeCode]['administrator_help'] ?? '';

  String get filteredByUser =>
      _localizedValues[localeCode]['filtered_by_user'] ?? '';

  String get endlessReminder =>
      _localizedValues[localeCode]['endless_reminder'] ?? '';

  String get invoiceEmail =>
      _localizedValues[localeCode]['invoice_email'] ?? '';

  String get paymentEmail =>
      _localizedValues[localeCode]['payment_email'] ?? '';

  String get quoteEmail => _localizedValues[localeCode]['quote_email'] ?? '';

  String get days => _localizedValues[localeCode]['days'] ?? '';

  String get beforeDueDate =>
      _localizedValues[localeCode]['before_due_date'] ?? '';

  String get afterDueDate =>
      _localizedValues[localeCode]['after_due_date'] ?? '';

  String get afterInvoiceDate =>
      _localizedValues[localeCode]['after_invoice_date'] ?? '';

  String get schedule => _localizedValues[localeCode]['schedule'] ?? '';

  String get lateFeeAmount =>
      _localizedValues[localeCode]['late_fee_amount'] ?? '';

  String get lateFeePercent =>
      _localizedValues[localeCode]['late_fee_percent'] ?? '';

  String get creditNumber =>
      _localizedValues[localeCode]['credit_number'] ?? '';

  String get paymentNumber =>
      _localizedValues[localeCode]['payment_number'] ?? '';

  String get lateFees => _localizedValues[localeCode]['late_fees'] ?? '';

  String get recoverPassword =>
      _localizedValues[localeCode]['recover_password'] ?? '';

  String get submit => _localizedValues[localeCode]['submit'] ?? '';

  String get recoverPasswordEmailSent =>
      _localizedValues[localeCode]['recover_password_email_sent'] ?? '';

  String get fieldType => _localizedValues[localeCode]['field_type'] ?? '';

  String get singleLineText =>
      _localizedValues[localeCode]['single_line_text'] ?? '';

  String get multiLineText =>
      _localizedValues[localeCode]['multi_line_text'] ?? '';

  String get dropdown => _localizedValues[localeCode]['dropdown'] ?? '';

  String get options => _localizedValues[localeCode]['options'] ?? '';

  String get commaSeparatedList =>
      _localizedValues[localeCode]['comma_sparated_list'] ?? '';

  String get switchLabel => _localizedValues[localeCode]['switch'] ?? '';

  String get accentColor => _localizedValues[localeCode]['accent_color'] ?? '';

  String get taxSettings => _localizedValues[localeCode]['tax_settings'] ?? '';

  String get configureRates =>
      _localizedValues[localeCode]['configure_rates'] ?? '';

  String get taxSettingsRates =>
      _localizedValues[localeCode]['tax_settings_rates'] ?? '';

  String get noClientSelected =>
      _localizedValues[localeCode]['no_client_selected'] ?? '';

  String get invoiceTax => _localizedValues[localeCode]['invoice_tax'] ?? '';

  String get lineItemTax => _localizedValues[localeCode]['line_item_tax'] ?? '';

  String get inclusiveTaxes =>
      _localizedValues[localeCode]['inclusive_taxes'] ?? '';

  String get invoiceTaxRates =>
      _localizedValues[localeCode]['invoice_tax_rates'] ?? '';

  String get itemTaxRates =>
      _localizedValues[localeCode]['item_tax_rates'] ?? '';

  String get user => _localizedValues[localeCode]['user'] ?? '';

  String get defaultTaxRate =>
      _localizedValues[localeCode]['default_tax_rate'] ?? '';

  String get oneTaxRate => _localizedValues[localeCode]['one_tax_rate'] ?? '';

  String get twoTaxRates => _localizedValues[localeCode]['two_tax_rates'] ?? '';

  String get threeTaxRates =>
      _localizedValues[localeCode]['three_tax_rates'] ?? '';

  String get customValue1 =>
      _localizedValues[localeCode]['custom_value1'] ?? '';

  String get customValue2 =>
      _localizedValues[localeCode]['custom_value2'] ?? '';

  String get customValue3 =>
      _localizedValues[localeCode]['custom_value3'] ?? '';

  String get customValue4 =>
      _localizedValues[localeCode]['custom_value4'] ?? '';

  String get emailStyleCustom =>
      _localizedValues[localeCode]['email_style_custom'] ?? '';

  String get customMessageDashboard =>
      _localizedValues[localeCode]['custom_message_dashboard'] ?? '';

  String get customMessageUnpaidInvoice =>
      _localizedValues[localeCode]['custom_message_unpaid_invoice'] ?? '';

  String get customMessagePaidInvoice =>
      _localizedValues[localeCode]['custom_message_paid_invoice'] ?? '';

  String get customMessageUnapprovedQuote =>
      _localizedValues[localeCode]['custom_message_unapproved_quote'] ?? '';

  String get lockSentInvoices =>
      _localizedValues[localeCode]['lock_sent_invoices'] ?? '';

  String get translations => _localizedValues[localeCode]['translations'] ?? '';

  String get taskNumberPattern =>
      _localizedValues[localeCode]['task_number_pattern'] ?? '';

  String get taskNumberCounter =>
      _localizedValues[localeCode]['task_number_counter'] ?? '';

  String get expenseNumberPattern =>
      _localizedValues[localeCode]['expense_number_pattern'] ?? '';

  String get expenseNumberCounter =>
      _localizedValues[localeCode]['expense_number_counter'] ?? '';

  String get vendorNumberPattern =>
      _localizedValues[localeCode]['vendor_number_pattern'] ?? '';

  String get vendorNumberCounter =>
      _localizedValues[localeCode]['vendor_number_counter'] ?? '';

  String get ticketNumberPattern =>
      _localizedValues[localeCode]['ticket_number_pattern'] ?? '';

  String get ticketNumberCounter =>
      _localizedValues[localeCode]['ticket_number_counter'] ?? '';

  String get paymentNumberPattern =>
      _localizedValues[localeCode]['payment_number_pattern'] ?? '';

  String get paymentNumberCounter =>
      _localizedValues[localeCode]['payment_number_counter'] ?? '';

  String get invoiceNumberPattern =>
      _localizedValues[localeCode]['invoice_number_pattern'] ?? '';

  String get invoiceNumberCounter =>
      _localizedValues[localeCode]['invoice_number_counter'] ?? '';

  String get quoteNumberPattern =>
      _localizedValues[localeCode]['quote_number_pattern'] ?? '';

  String get quoteNumberCounter =>
      _localizedValues[localeCode]['quote_number_counter'] ?? '';

  String get clientNumberPattern =>
      _localizedValues[localeCode]['client_number_pattern'] ?? '';

  String get clientNumberCounter =>
      _localizedValues[localeCode]['client_number_counter'] ?? '';

  String get creditNumberPattern =>
      _localizedValues[localeCode]['credit_number_pattern'] ?? '';

  String get creditNumberCounter =>
      _localizedValues[localeCode]['credit_number_counter'] ?? '';

  String get resetCounterDate =>
      _localizedValues[localeCode]['reset_counter_date'] ?? '';

  String get counterPadding =>
      _localizedValues[localeCode]['counter_padding'] ?? '';

  String get sharedInvoiceQuoteCounter =>
      _localizedValues[localeCode]['shared_invoice_quote_counter'] ?? '';

  String get invoiceLabels =>
      _localizedValues[localeCode]['invoice_labels'] ?? '';

  String get defaultTaxName1 =>
      _localizedValues[localeCode]['default_tax_name_1'] ?? '';

  String get defaultTaxRate1 =>
      _localizedValues[localeCode]['default_tax_rate_1'] ?? '';

  String get defaultTaxName2 =>
      _localizedValues[localeCode]['default_tax_name_2'] ?? '';

  String get defaultTaxRate2 =>
      _localizedValues[localeCode]['default_tax_rate_2'] ?? '';

  String get defaultTaxName3 =>
      _localizedValues[localeCode]['default_tax_name_3'] ?? '';

  String get defaultTaxRate3 =>
      _localizedValues[localeCode]['default_tax_rate_3'] ?? '';

  String get emailSubjectInvoice =>
      _localizedValues[localeCode]['email_subject_invoice'] ?? '';

  String get emailSubjectQuote =>
      _localizedValues[localeCode]['email_subject_quote'] ?? '';

  String get emailSubjectPayment =>
      _localizedValues[localeCode]['email_subject_payment'] ?? '';

  String get emailSubjectPaymentPartial =>
      _localizedValues[localeCode]['email_subject_payment_partial'] ?? '';

  String get showCost => _localizedValues[localeCode]['show_cost'] ?? '';

  String get showCostHelp =>
      _localizedValues[localeCode]['show_cost_help'] ?? '';

  String get showInvoiceQuantity =>
      _localizedValues[localeCode]['show_invoice_quantity'] ?? '';

  String get showProductQuantityHelp =>
      _localizedValues[localeCode]['show_product_quantity_help'] ?? '';

  String get showProductQuantity =>
      _localizedValues[localeCode]['show_product_quantity'] ?? '';

  String get showInvoiceQuantityHelp =>
      _localizedValues[localeCode]['show_invoice_quantity_help'] ?? '';

  String get defaultQuantity =>
      _localizedValues[localeCode]['default_quantity'] ?? '';

  String get defaultQuantityHelp =>
      _localizedValues[localeCode]['default_quantity_help'] ?? '';

  String get firstCustom => _localizedValues[localeCode]['first_custom'] ?? '';

  String get secondCustom =>
      _localizedValues[localeCode]['second_custom'] ?? '';

  String get thirdCustom => _localizedValues[localeCode]['third_custom'] ?? '';

  String get module => _localizedValues[localeCode]['module'] ?? '';

  String get view => _localizedValues[localeCode]['view'] ?? '';

  String get layout => _localizedValues[localeCode]['layout'] ?? '';

  String get mobile => _localizedValues[localeCode]['mobile'] ?? '';

  String get desktop => _localizedValues[localeCode]['desktop'] ?? '';

  String get tablet => _localizedValues[localeCode]['tablet'] ?? '';

  String get float => _localizedValues[localeCode]['float'] ?? '';

  String get collapse => _localizedValues[localeCode]['collapse'] ?? '';

  String get showOrHide => _localizedValues[localeCode]['show_or_hide'] ?? '';

  String get menuSidebar => _localizedValues[localeCode]['menu_sidebar'] ?? '';

  String get historySidebar =>
      _localizedValues[localeCode]['history_sidebar'] ?? '';

  String get selectCompany =>
      _localizedValues[localeCode]['select_company'] ?? '';

  String get newPayment => _localizedValues[localeCode]['new_payment'] ?? '';

  String get switchListTable =>
      _localizedValues[localeCode]['switch_list_table'] ?? '';

  String get whenSaved => _localizedValues[localeCode]['when_saved'] ?? '';

  String get whenSent => _localizedValues[localeCode]['when_sent'] ?? '';

  String get generateNumber =>
      _localizedValues[localeCode]['generate_number'] ?? '';

  String get yes => _localizedValues[localeCode]['yes'] ?? '';

  String get no => _localizedValues[localeCode]['no'] ?? '';

  String get deletedLogo => _localizedValues[localeCode]['deleted_logo'] ?? '';

  String get pleaseEnterAValue =>
      _localizedValues[localeCode]['please_enter_a_value'] ?? '';

  String get clientPortalTasks =>
      _localizedValues[localeCode]['client_portal_tasks'] ?? '';

  String get clientPortalDashboard =>
      _localizedValues[localeCode]['client_portal_dashboard'] ?? '';

  String get passwordIsTooEasy =>
      _localizedValues[localeCode]['password_is_too_easy'] ?? '';

  String get iFrameUrl => _localizedValues[localeCode]['iframe_url'] ?? '';

  String get domainUrl => _localizedValues[localeCode]['domain_url'] ?? '';

  String get creditEmail => _localizedValues[localeCode]['credit_email'] ?? '';

  String get item => _localizedValues[localeCode]['item'] ?? '';

  String get lineTotal => _localizedValues[localeCode]['line_total'] ?? '';

  String get subtotal => _localizedValues[localeCode]['subtotal'] ?? '';

  String get contactUs => _localizedValues[localeCode]['contact_us'] ?? '';

  String get documentation =>
      _localizedValues[localeCode]['documentation'] ?? '';

  String get about => _localizedValues[localeCode]['about'] ?? '';

  String get supportForum =>
      _localizedValues[localeCode]['support_forum'] ?? '';

  String get configureSettings =>
      _localizedValues[localeCode]['configure_settings'] ?? '';

  String get adjustFeePercent =>
      _localizedValues[localeCode]['adjust_fee_percent'] ?? '';

  String get adjustFeePercentHelp =>
      _localizedValues[localeCode]['adjust_fee_percent_help'] ?? '';

  String get pdfMinRequirements =>
      _localizedValues[localeCode]['pdf_min_requirements'] ?? '';

  String get showProductDetails =>
      _localizedValues[localeCode]['show_product_details'] ?? '';

  String get showProductDetailsHelp =>
      _localizedValues[localeCode]['show_product_details_help'] ?? '';

  String get from => _localizedValues[localeCode]['from'] ?? '';

  String get message => _localizedValues[localeCode]['message'] ?? '';

  String get yourMessageHasBeenReceived =>
      _localizedValues[localeCode]['your_message_has_been_received'] ?? '';

  String get includeRecentErrors =>
      _localizedValues[localeCode]['include_recent_errors'] ?? '';

  String get applied => _localizedValues[localeCode]['applied'] ?? '';

  String get verifyPassword =>
      _localizedValues[localeCode]['verify_password'] ?? '';

  String get entityState => _localizedValues[localeCode]['entity_state'] ?? '';

  String get multiselect => _localizedValues[localeCode]['multiselect'] ?? '';

  String get contactEmail =>
      _localizedValues[localeCode]['contact_email'] ?? '';

  String get filteredBy => _localizedValues[localeCode]['filtered_by'] ?? '';

  String get refund => _localizedValues[localeCode]['refund'] ?? '';

  String get refundDate => _localizedValues[localeCode]['refund_date'] ?? '';

  String get help => _localizedValues[localeCode]['help'] ?? '';

  String get unpaidInvoice =>
      _localizedValues[localeCode]['unpaid_invoice'] ?? '';

  String get paidInvoice => _localizedValues[localeCode]['paid_invoice'] ?? '';

  String get unapprovedQuote =>
      _localizedValues[localeCode]['unapproved_quote'] ?? '';

  String get addCompany => _localizedValues[localeCode]['add_company'] ?? '';

  String get reports => _localizedValues[localeCode]['reports'] ?? '';

  String get report => _localizedValues[localeCode]['report'] ?? '';

  String get aging => _localizedValues[localeCode]['aging'] ?? '';

  String get columns => _localizedValues[localeCode]['columns'] ?? '';

  String get profitAndLoss =>
      _localizedValues[localeCode]['profit_and_loss'] ?? '';

  String get editColumns => _localizedValues[localeCode]['edit_columns'] ?? '';

  String get addColumn => _localizedValues[localeCode]['add_column'] ?? '';

  String get assignedTo => _localizedValues[localeCode]['assigned_to'] ?? '';

  String get createdBy => _localizedValues[localeCode]['created_by'] ?? '';

  String get assignedTId =>
      _localizedValues[localeCode]['assigned_to_id'] ?? '';

  String get createdById => _localizedValues[localeCode]['created_by_id'] ?? '';

  String get clientId => _localizedValues[localeCode]['client_id'] ?? '';

  String get shippingAddress1 =>
      _localizedValues[localeCode]['shipping_address1'] ?? '';

  String get shippingAddress2 =>
      _localizedValues[localeCode]['shipping_address2'] ?? '';

  String get shippingCity =>
      _localizedValues[localeCode]['shipping_city'] ?? '';

  String get shippingState =>
      _localizedValues[localeCode]['shipping_state'] ?? '';

  String get shippingPostalCode =>
      _localizedValues[localeCode]['shipping_postal_code'] ?? '';

  String get shippingCountry =>
      _localizedValues[localeCode]['shipping_country'] ?? '';

  String get contactFullName =>
      _localizedValues[localeCode]['contact_full_name'] ?? '';

  String get contactPhone =>
      _localizedValues[localeCode]['contact_phone'] ?? '';

  String get contactCustomValue1 =>
      _localizedValues[localeCode]['contact_custom_value1'] ?? '';

  String get contactCustomValue2 =>
      _localizedValues[localeCode]['contact_custom_value2'] ?? '';

  String get contactCustomValue3 =>
      _localizedValues[localeCode]['contact_custom_value3'] ?? '';

  String get contactCustomValue4 =>
      _localizedValues[localeCode]['contact_custom_value4'] ?? '';

  String get creditBalance =>
      _localizedValues[localeCode]['credit_balance'] ?? '';

  String get contactLastLogin =>
      _localizedValues[localeCode]['contact_last_login'] ?? '';

  String get groupBy => _localizedValues[localeCode]['group_by'] ?? '';

  String get isActive => _localizedValues[localeCode]['is_active'] ?? '';

  String get subgroup => _localizedValues[localeCode]['subgroup'] ?? '';

  String get day => _localizedValues[localeCode]['day'] ?? '';

  String get month => _localizedValues[localeCode]['month'] ?? '';

  String get year => _localizedValues[localeCode]['year'] ?? '';

  String get blank => _localizedValues[localeCode]['blank'] ?? '';

  String get count => _localizedValues[localeCode]['count'] ?? '';

  String get chart => _localizedValues[localeCode]['chart'] ?? '';

  String get export => _localizedValues[localeCode]['export'] ?? '';

  String get number => _localizedValues[localeCode]['number'] ?? '';

  String get reset => _localizedValues[localeCode]['reset'] ?? '';

  String get client1 => _localizedValues[localeCode]['client1'] ?? '';

  String get client2 => _localizedValues[localeCode]['client2'] ?? '';

  String get client3 => _localizedValues[localeCode]['client3'] ?? '';

  String get client4 => _localizedValues[localeCode]['client4'] ?? '';

  String get company1 => _localizedValues[localeCode]['company1'] ?? '';

  String get company2 => _localizedValues[localeCode]['company2'] ?? '';

  String get company3 => _localizedValues[localeCode]['company3'] ?? '';

  String get company4 => _localizedValues[localeCode]['company4'] ?? '';

  String get product1 => _localizedValues[localeCode]['product1'] ?? '';

  String get product2 => _localizedValues[localeCode]['product2'] ?? '';

  String get product3 => _localizedValues[localeCode]['product3'] ?? '';

  String get product4 => _localizedValues[localeCode]['product4'] ?? '';

  String get contact1 => _localizedValues[localeCode]['contact1'] ?? '';

  String get contact2 => _localizedValues[localeCode]['contact2'] ?? '';

  String get contact3 => _localizedValues[localeCode]['contact3'] ?? '';

  String get contact4 => _localizedValues[localeCode]['contact4'] ?? '';

  String get task1 => _localizedValues[localeCode]['task1'] ?? '';

  String get task2 => _localizedValues[localeCode]['task2'] ?? '';

  String get task3 => _localizedValues[localeCode]['task3'] ?? '';

  String get task4 => _localizedValues[localeCode]['task4'] ?? '';

  String get project1 => _localizedValues[localeCode]['project1'] ?? '';

  String get project2 => _localizedValues[localeCode]['project2'] ?? '';

  String get project3 => _localizedValues[localeCode]['project3'] ?? '';

  String get project4 => _localizedValues[localeCode]['project4'] ?? '';

  String get expense1 => _localizedValues[localeCode]['expense1'] ?? '';

  String get expense2 => _localizedValues[localeCode]['expense2'] ?? '';

  String get expense3 => _localizedValues[localeCode]['expense3'] ?? '';

  String get expense4 => _localizedValues[localeCode]['expense4'] ?? '';

  String get vendor1 => _localizedValues[localeCode]['vendor1'] ?? '';

  String get vendor2 => _localizedValues[localeCode]['vendor2'] ?? '';

  String get vendor3 => _localizedValues[localeCode]['vendor3'] ?? '';

  String get vendor4 => _localizedValues[localeCode]['vendor4'] ?? '';

  String get invoice1 => _localizedValues[localeCode]['invoice1'] ?? '';

  String get invoice2 => _localizedValues[localeCode]['invoice2'] ?? '';

  String get invoice3 => _localizedValues[localeCode]['invoice3'] ?? '';

  String get invoice4 => _localizedValues[localeCode]['invoice4'] ?? '';

  String get payment1 => _localizedValues[localeCode]['payment1'] ?? '';

  String get payment2 => _localizedValues[localeCode]['payment2'] ?? '';

  String get payment3 => _localizedValues[localeCode]['payment3'] ?? '';

  String get payment4 => _localizedValues[localeCode]['payment4'] ?? '';

  String get surcharge1 => _localizedValues[localeCode]['surcharge1'] ?? '';

  String get surcharge2 => _localizedValues[localeCode]['surcharge2'] ?? '';

  String get surcharge3 => _localizedValues[localeCode]['surcharge3'] ?? '';

  String get surcharge4 => _localizedValues[localeCode]['surcharge4'] ?? '';

  String get group1 => _localizedValues[localeCode]['group1'] ?? '';

  String get group2 => _localizedValues[localeCode]['group2'] ?? '';

  String get group3 => _localizedValues[localeCode]['group3'] ?? '';

  String get group4 => _localizedValues[localeCode]['group4'] ?? '';

  String get addedCompany =>
      _localizedValues[localeCode]['added_company'] ?? '';

  String get untitledCompany =>
      _localizedValues[localeCode]['untitled_company'] ?? '';

  String get creditFooter =>
      _localizedValues[localeCode]['credit_footer'] ?? '';

  String get creditTerms => _localizedValues[localeCode]['credit_terms'] ?? '';

  String get slackWebhookUrl =>
      _localizedValues[localeCode]['slack_webhook_url'] ?? '';

  String get trackingId => _localizedValues[localeCode]['tracking_id'] ?? '';

  String get integrations => _localizedValues[localeCode]['integrations'] ?? '';

  String get learnMore => _localizedValues[localeCode]['learn_more'] ?? '';

  String get updateAvailable =>
      _localizedValues[localeCode]['update_available'] ?? '';

  String get aNewVersionIsAvailable =>
      _localizedValues[localeCode]['a_new_version_is_available'] ?? '';

  String get updateNow => _localizedValues[localeCode]['update_now'] ?? '';

  String get currentVersion =>
      _localizedValues[localeCode]['current_version'] ?? '';

  String get latestVersion =>
      _localizedValues[localeCode]['latest_version'] ?? '';

  String get appUpdated => _localizedValues[localeCode]['app_updated'] ?? '';

  // STARTER: lang field - do not remove comment
  String get paymentTerm => _localizedValues[localeCode]['payment_term'];

  String get newPaymentTerm => _localizedValues[localeCode]['new_payment_term'];

  String get createdPaymentTerm =>
      _localizedValues[localeCode]['created_payment_term'];

  String get updatedPaymentTerm =>
      _localizedValues[localeCode]['updated_payment_term'];

  String get archivedPaymentTerm =>
      _localizedValues[localeCode]['archived_payment_term'];

  String get deletedPaymentTerm =>
      _localizedValues[localeCode]['deleted_payment_term'];

  String get restoredPaymentTerm =>
      _localizedValues[localeCode]['restored_payment_term'];

  String get editPaymentTerm =>
      _localizedValues[localeCode]['edit_payment_term'];

  String get designs => _localizedValues[localeCode]['designs'] ?? '';

  String get newDesign => _localizedValues[localeCode]['new_design'] ?? '';

  String get createdDesign =>
      _localizedValues[localeCode]['created_design'] ?? '';

  String get updatedDesign =>
      _localizedValues[localeCode]['updated_design'] ?? '';

  String get archivedDesign =>
      _localizedValues[localeCode]['archived_design'] ?? '';

  String get deletedDesign =>
      _localizedValues[localeCode]['deleted_design'] ?? '';

  String get restoredDesign =>
      _localizedValues[localeCode]['restored_design'] ?? '';

  String get editDesign => _localizedValues[localeCode]['edit_design'] ?? '';

  String get newCredit => _localizedValues[localeCode]['new_credit'] ?? '';

  String get createdCredit =>
      _localizedValues[localeCode]['created_credit'] ?? '';

  String get updatedCredit =>
      _localizedValues[localeCode]['updated_credit'] ?? '';

  String get archivedCredit =>
      _localizedValues[localeCode]['archived_credit'] ?? '';

  String get deletedCredit =>
      _localizedValues[localeCode]['deleted_credit'] ?? '';

  String get restoredCredit =>
      _localizedValues[localeCode]['restored_credit'] ?? '';

  String get creditDate => _localizedValues[localeCode]['credit_date'] ?? '';

  String get accountManagement =>
      _localizedValues[localeCode]['account_management'] ?? '';

  String get proposals => _localizedValues[localeCode]['proposals'] ?? '';

  String get tickets => _localizedValues[localeCode]['tickets'] ?? '';

  String get recurringInvoices =>
      _localizedValues[localeCode]['recurring_invoices'] ?? '';

  String get recurringQuotes =>
      _localizedValues[localeCode]['recurring_quotes'] ?? '';

  String get recurringTasks =>
      _localizedValues[localeCode]['recurring_tasks'] ?? '';

  String get recurringExpenses =>
      _localizedValues[localeCode]['recurring_expenses'] ?? '';

  String get customDesigns =>
      _localizedValues[localeCode]['custom_designs'] ?? '';

  String get cssFramework =>
      _localizedValues[localeCode]['css_framework'] ?? '';

  String get loadDesign => _localizedValues[localeCode]['load_design'] ?? '';

  String get header => _localizedValues[localeCode]['header'] ?? '';

  String get includes => _localizedValues[localeCode]['includes'] ?? '';

  String get creditDesign =>
      _localizedValues[localeCode]['credit_design'] ?? '';

  String get partialPaymentEmail =>
      _localizedValues[localeCode]['partial_payment_email'] ?? '';

  String get partialPayment =>
      _localizedValues[localeCode]['partial_payment'] ?? '';

  String get convertedQuote =>
      _localizedValues[localeCode]['converted_quote'] ?? '';

  String get enableModules =>
      _localizedValues[localeCode]['enable_modules'] ?? '';

  String get cancelAccount =>
      _localizedValues[localeCode]['cancel_account'] ?? '';

  String get cancelAccountMessage =>
      _localizedValues[localeCode]['cancel_account_message'] ?? '';

  String get deleteCompany =>
      _localizedValues[localeCode]['delete_company'] ?? '';

  String get deleteCompanyMessage =>
      _localizedValues[localeCode]['delete_company_message'] ?? '';

  String get purchaseLicense =>
      _localizedValues[localeCode]['purchase_license'] ?? '';

  String get applyLicense =>
      _localizedValues[localeCode]['apply_license'] ?? '';

  String get receiveAllNotifications =>
      _localizedValues[localeCode]['receive_all_notifications'] ?? '';

  String get invoiceSent => _localizedValues[localeCode]['invoice_sent'] ?? '';

  String get invoiceViewed =>
      _localizedValues[localeCode]['invoice_viewed'] ?? '';

  String get paymentSuccess =>
      _localizedValues[localeCode]['payment_success'] ?? '';

  String get paymentFailure =>
      _localizedValues[localeCode]['payment_failure'] ?? '';

  String get quoteSent => _localizedValues[localeCode]['quote_sent'] ?? '';

  String get quoteViewed => _localizedValues[localeCode]['quote_viewed'] ?? '';

  String get quoteApproved =>
      _localizedValues[localeCode]['quote_approved'] ?? '';

  String get creditSent => _localizedValues[localeCode]['credit_sent'] ?? '';

  String get creditViewed =>
      _localizedValues[localeCode]['credit_viewed'] ?? '';

  String get none => _localizedValues[localeCode]['none'] ?? '';

  String get owned => _localizedValues[localeCode]['owned'] ?? '';

  String get permissions => _localizedValues[localeCode]['permissions'] ?? '';

  String get allEvents => _localizedValues[localeCode]['all_events'] ?? '';

  String get addField => _localizedValues[localeCode]['add_field'] ?? '';

  String get clientDetails =>
      _localizedValues[localeCode]['client_details'] ?? '';

  String get companyAddress =>
      _localizedValues[localeCode]['company_address'] ?? '';

  String get invoiceDetails =>
      _localizedValues[localeCode]['invoice_details'] ?? '';

  String get quoteDetails =>
      _localizedValues[localeCode]['quote_details'] ?? '';

  String get creditDetails =>
      _localizedValues[localeCode]['credit_details'] ?? '';

  String get productColumns =>
      _localizedValues[localeCode]['product_columns'] ?? '';

  String get taskColumns => _localizedValues[localeCode]['task_columns'] ?? '';

  String get cloneToCredit =>
      _localizedValues[localeCode]['clone_to_credit'] ?? '';

  String get savedDesign => _localizedValues[localeCode]['saved_design'] ?? '';

  String get refresh => _localizedValues[localeCode]['refresh'] ?? '';

  String get clientCity => _localizedValues[localeCode]['client_city'] ?? '';

  String get clientState => _localizedValues[localeCode]['client_state'] ?? '';

  String get clientCountry =>
      _localizedValues[localeCode]['client_country'] ?? '';

  String get clientIsActive =>
      _localizedValues[localeCode]['client_is_active'] ?? '';

  String get clientBalance =>
      _localizedValues[localeCode]['client_balance'] ?? '';

  String get clientAddress1 =>
      _localizedValues[localeCode]['client_address1'] ?? '';

  String get clientAddress2 =>
      _localizedValues[localeCode]['client_address2'] ?? '';

  String get clientShippingAddress1 =>
      _localizedValues[localeCode]['client_shipping_address1'] ?? '';

  String get clientShippingAddress2 =>
      _localizedValues[localeCode]['client_shipping_address2'] ?? '';

  String get type => _localizedValues[localeCode]['type'] ?? '';

  String get invoiceAmount =>
      _localizedValues[localeCode]['invoice_amount'] ?? '';

  String get invoiceDueDate =>
      _localizedValues[localeCode]['invoice_due_date'] ?? '';

  String get taxRate1 => _localizedValues[localeCode]['tax_rate1'] ?? '';

  String get taxRate2 => _localizedValues[localeCode]['tax_rate2'] ?? '';

  String get taxRate3 => _localizedValues[localeCode]['tax_rate3'] ?? '';

  String get autoBill => _localizedValues[localeCode]['auto_bill'] ?? '';

  String get archivedAt => _localizedValues[localeCode]['archived_at'] ?? '';

  String get hasExpenses => _localizedValues[localeCode]['has_expenses'] ?? '';

  String get customTaxes1 =>
      _localizedValues[localeCode]['custom_taxes1'] ?? '';

  String get customTaxes2 =>
      _localizedValues[localeCode]['custom_taxes2'] ?? '';

  String get customTaxes3 =>
      _localizedValues[localeCode]['custom_taxes3'] ?? '';

  String get customTaxes4 =>
      _localizedValues[localeCode]['custom_taxes4'] ?? '';

  String get customSurcharge1 =>
      _localizedValues[localeCode]['custom_surcharge1'] ?? '';

  String get customSurcharge2 =>
      _localizedValues[localeCode]['custom_surcharge2'] ?? '';

  String get customSurcharge3 =>
      _localizedValues[localeCode]['custom_surcharge3'] ?? '';

  String get customSurcharge4 =>
      _localizedValues[localeCode]['custom_surcharge4'] ?? '';

  String get isDeleted => _localizedValues[localeCode]['is_deleted'] ?? '';

  String get vendorCity => _localizedValues[localeCode]['vendor_city'] ?? '';

  String get vendorState => _localizedValues[localeCode]['vendor_state'] ?? '';

  String get vendorCountry =>
      _localizedValues[localeCode]['vendor_country'] ?? '';

  String get isApproved => _localizedValues[localeCode]['is_approved'] ?? '';

  String get taxName => _localizedValues[localeCode]['tax_name'] ?? '';

  String get taxAmount => _localizedValues[localeCode]['tax_amount'] ?? '';

  String get taxPaid => _localizedValues[localeCode]['tax_paid'] ?? '';

  String get paymentAmount =>
      _localizedValues[localeCode]['payment_amount'] ?? '';

  String get age => _localizedValues[localeCode]['age'] ?? '';

  String get ageGroup0 => _localizedValues[localeCode]['age_group_0'] ?? '';

  String get ageGroup30 => _localizedValues[localeCode]['age_group_30'] ?? '';

  String get ageGroup60 => _localizedValues[localeCode]['age_group_60'] ?? '';

  String get ageGroup90 => _localizedValues[localeCode]['age_group_90'] ?? '';

  String get ageGroup120 => _localizedValues[localeCode]['age_group_120'] ?? '';

  String get invoiceBalance =>
      _localizedValues[localeCode]['invoice_balance'] ?? '';

  String get purgeData => _localizedValues[localeCode]['purge_data'] ?? '';

  String get purgeSuccessful =>
      _localizedValues[localeCode]['purge_successful'] ?? '';

  String get purgeDataMessage =>
      _localizedValues[localeCode]['purge_data_message'] ?? '';

  String get license => _localizedValues[localeCode]['license'] ?? '';

  String get optional => _localizedValues[localeCode]['optional'] ?? '';

  String get custom1 => _localizedValues[localeCode]['custom1'] ?? '';

  String get custom2 => _localizedValues[localeCode]['custom2'] ?? '';

  String get custom3 => _localizedValues[localeCode]['custom3'] ?? '';

  String get custom4 => _localizedValues[localeCode]['custom4'] ?? '';

  String get fullName => _localizedValues[localeCode]['full_name'] ?? '';

  String get cityStatePostal =>
      _localizedValues[localeCode]['city_state_postal'] ?? '';

  String get postalCityState =>
      _localizedValues[localeCode]['postal_city_state'] ?? '';

  String get reverse => _localizedValues[localeCode]['reverse'] ?? '';

  String get cancelledInvoice =>
      _localizedValues[localeCode]['cancelled_invoice'] ?? '';

  String get cancelledInvoices =>
      _localizedValues[localeCode]['cancelled_invoices'] ?? '';

  String get reversedInvoice =>
      _localizedValues[localeCode]['reversed_invoice'] ?? '';

  String get reversedInvoices =>
      _localizedValues[localeCode]['reversed_invoices'] ?? '';

  String get refundPayment =>
      _localizedValues[localeCode]['refund_payment'] ?? '';

  String get searchInvoices =>
      _localizedValues[localeCode]['search_invoices'] ?? '';

  String get searchClients =>
      _localizedValues[localeCode]['search_clients'] ?? '';

  String get searchProducts =>
      _localizedValues[localeCode]['search_products'] ?? '';

  String get searchQuotes =>
      _localizedValues[localeCode]['search_quotes'] ?? '';

  String get searchCredits =>
      _localizedValues[localeCode]['search_credits'] ?? '';

  String get searchVendors =>
      _localizedValues[localeCode]['search_vendors'] ?? '';

  String get searchUsers => _localizedValues[localeCode]['search_users'] ?? '';

  String get searchTaxRates =>
      _localizedValues[localeCode]['search_tax_rates'] ?? '';

  String get searchTasks => _localizedValues[localeCode]['search_tasks'] ?? '';

  String get searchSettings =>
      _localizedValues[localeCode]['search_settings'] ?? '';

  String get searchProjects =>
      _localizedValues[localeCode]['search_projects'] ?? '';

  String get searchExpenses =>
      _localizedValues[localeCode]['search_expenses'] ?? '';

  String get searchPayments =>
      _localizedValues[localeCode]['search_payments'] ?? '';

  String get searchGroups =>
      _localizedValues[localeCode]['search_groups'] ?? '';

  String get searchCompany =>
      _localizedValues[localeCode]['search_company'] ?? '';

  String get searchDocuments =>
      _localizedValues[localeCode]['search_documents'] ?? '';

  String get searchDesigns =>
      _localizedValues[localeCode]['search_designs'] ?? '';

  String get partiallyRefunded =>
      _localizedValues[localeCode]['partially_refunded'] ?? '';

  String get hideMenu => _localizedValues[localeCode]['hide_menu'] ?? '';

  String get showMenu => _localizedValues[localeCode]['show_menu'] ?? '';

  String get exclusive => _localizedValues[localeCode]['exclusive'] ?? '';

  String get inclusive => _localizedValues[localeCode]['inclusive'] ?? '';

  String get hosted => _localizedValues[localeCode]['hosted'] ?? '';

  String get selfhosted => _localizedValues[localeCode]['selfhosted'] ?? '';

  String get creditAmount =>
      _localizedValues[localeCode]['credit_amount'] ?? '';

  String get quoteAmount => _localizedValues[localeCode]['quote_amount'] ?? '';

  String get reversed => _localizedValues[localeCode]['reversed'] ?? '';

  String get cancelled => _localizedValues[localeCode]['cancelled'] ?? '';

  String get sendFromGmail =>
      _localizedValues[localeCode]['send_from_gmail'] ?? '';

  String get changeToMobileLayout =>
      _localizedValues[localeCode]['change_to_mobile_layout'] ?? '';

  String get changeToDekstopLayout =>
      _localizedValues[localeCode]['change_to_desktop_layout'] ?? '';

  String get change => _localizedValues[localeCode]['change'] ?? '';

  String get emailSignIn => _localizedValues[localeCode]['email_sign_in'] ?? '';

  String get fullWidthEditor =>
      _localizedValues[localeCode]['full_width_editor'] ?? '';

  String get fullHeightFilter =>
      _localizedValues[localeCode]['full_height_filter'] ?? '';

  String get configurePaymentTerms =>
      _localizedValues[localeCode]['configure_payment_terms'] ?? '';

  String get numberOfDays =>
      _localizedValues[localeCode]['number_of_days'] ?? '';

  String get reminderEndless =>
      _localizedValues[localeCode]['reminder_endless'] ?? '';

  String get useDefault =>
      _localizedValues[localeCode]['use_default'] ?? '';

  String get contactName =>
      _localizedValues[localeCode]['contact_name'] ?? '';

  String get creditRemaining =>
      _localizedValues[localeCode]['credit_remaining'] ?? '';

  String lookup(String key) {
    final lookupKey = toSnakeCase(key);
    return _localizedValues[localeCode][lookupKey] ??
        _localizedValues[localeCode][lookupKey.replaceFirst('_id', '')] ??
        key;
  }
}
