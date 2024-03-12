/*******************************************************************************
 * File: .dotfiles/mozilla/thunderbird-user-overrides.js
 * Author: Bryce Kwon
 * Date: 2024-03-12
 * Version: 1.0.0
 ******************************************************************************/

/* disable check for default mail client */
user_pref("mail.shell.checkDefaultClient", false);

/* disable startpage */
user_pref("mailnews.start_page.url", "");

/* set default sorting method (date descending) */
user_pref("mailnews.default_news_sort_order", 2);
user_pref("mailnews.default_news_sort_type", 18);
user_pref("mailnews.default_sort_order", 2);
user_pref("mailnews.default_sort_type", 18);

/* send emails as HTML if HTML components inside. Otherwise, plaintext */
user_pref("mail.default_send_format", 0);

/* disable attachment reminder */
user_pref("mail.compose.attachment_reminder", true);

/* disable signature separator standard */
user_pref("mail.identity.default.suppress_signature_separator", true);
