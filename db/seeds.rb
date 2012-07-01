# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

puts "Tracker..."
Tracker.delete_all
trackers = Tracker.create([
  { :position => 1, :name => "Feature", :is_in_roadmap => true, :is_in_chlog => false, :for_credits_module => false },
  { :position => 2, :name => "Chore", :is_in_roadmap => true, :is_in_chlog => false, :for_credits_module => false },
  { :position => 3, :name => "Bug", :is_in_roadmap => true, :is_in_chlog => false, :for_credits_module => false },
  { :position => 4, :name => "Gift", :is_in_roadmap => true, :is_in_chlog => false, :for_credits_module => true },
  { :position => 5, :name => "Expense", :is_in_roadmap => true, :is_in_chlog => false, :for_credits_module => true },
  { :position => 6, :name => "Recurring", :is_in_roadmap => true, :is_in_chlog => false, :for_credits_module => false },
  { :position => 7, :name => "Hourly", :is_in_roadmap => true, :is_in_chlog => false, :for_credits_module => true }
])

puts "IssueStatus..."
IssueStatus.delete_all
issue_statuses = IssueStatus.create([
  { :position => 3, :name => "default_issue_status_open", :is_default => false, :default_done_ratio => nil, :is_closed => false },
  { :position => 4, :name => "default_issue_status_assigned", :is_default => false, :default_done_ratio => nil, :is_closed => false },
  { :position => 11, :name => "default_issue_status_inprogress", :is_default => false, :default_done_ratio => nil, :is_closed => false },
  { :position => 7, :name => "default_issue_status_blocked", :is_default => false, :default_done_ratio => nil, :is_closed => false },
  { :position => 5, :name => "default_issue_status_done", :is_default => false, :default_done_ratio => nil, :is_closed => true },
  { :position => 6, :name => "default_issue_status_canceled", :is_default => false, :default_done_ratio => nil, :is_closed => true },
  { :position => 1, :name => "default_issue_status_new", :is_default => true, :default_done_ratio => nil, :is_closed => false },
  { :position => 2, :name => "default_issue_status_estimate", :is_default => false, :default_done_ratio => nil, :is_closed => false },
  { :position => 8, :name => "default_issue_status_archived", :is_default => false, :default_done_ratio => nil, :is_closed => true },
  { :position => 9, :name => "default_issue_status_accepted", :is_default => false, :default_done_ratio => nil, :is_closed => true },
  { :position => 10, :name => "default_issue_status_rejected", :is_default => false, :default_done_ratio => nil, :is_closed => false }
])

puts "Enumeration..."
Enumeration.delete_all
enumerations = Enumeration.create([
  { :position => 1, :name => "", :project_id => nil, :is_default => false, :type => nil, :parent_id => nil, :opt => "", :active => true }
])

puts "Role..."
Role.delete_all
roles = Role.create([
  { :position => 5, :name => "Non member", :level => 0, :builtin => 1, :permissions => [:add_project, :credits, :join_from_generic_invitation, :add_messages, :view_credits, :view_issues, :add_issues, :edit_issues, :add_issue_notes, :edit_own_issue_notes, :pull_commitment, :estimate_issues, :accept_issues, :start_issues, :view_gantt, :view_issue_watchers, :browse_motion, :vote_motion, :comment_news, :view_wiki_pages, :view_wiki_edits], :assignable => true },
  { :position => 99, :name => "Anonymous", :level => 0, :builtin => 2, :permissions => [:view_documents, :view_files, :view_issues, :view_member_roles, :view_wiki_pages, :view_wiki_edits], :assignable => true },
  { :position => 0, :name => "Administrator", :level => 1, :builtin => 3, :permissions => [:add_project, :add_subprojects, :edit_project, :select_project_modules, :manage_members, :credits, :send_invitations, :manage_invitations, :manage_boards, :add_messages, :edit_messages, :edit_own_messages, :delete_messages, :delete_own_messages, :view_credits, :manage_documents, :view_documents, :manage_files, :view_files, :view_issues, :add_issues, :edit_issues, :manage_issue_relations, :add_issue_notes, :edit_issue_notes, :edit_own_issue_notes, :move_issues, :delete_issues, :push_commitment, :pull_commitment, :view_commit_requests, :view_member_roles, :estimate_issues, :accept_issues, :start_issues, :manage_public_queries, :save_queries, :view_gantt, :view_calendar, :view_issue_watchers, :add_issue_watchers, :manage_motion, :browse_motion, :create_motion, :vote_motion, :manage_news, :comment_news, :manage_wiki, :rename_wiki_pages, :delete_wiki_pages, :view_wiki_pages, :view_wiki_edits, :edit_wiki_pages, :delete_wiki_pages_attachments, :protect_wiki_pages], :assignable => true },
  { :position => 2, :name => "Core Team", :level => 1, :builtin => 4, :permissions => [:add_project, :add_subprojects, :send_invitations, :manage_invitations, :transfer_credits, :join_from_generic_invitation, :manage_boards, :add_messages, :edit_own_messages, :view_credits, :enable_disable_credits, :manage_documents, :view_documents, :manage_files, :view_files, :view_issues, :add_issues, :edit_issues, :manage_issue_relations, :add_issue_notes, :edit_issue_notes, :edit_own_issue_notes, :move_issues, :push_commitment, :pull_commitment, :view_commit_requests, :view_member_roles, :estimate_issues, :accept_issues, :start_issues, :save_queries, :view_gantt, :view_calendar, :view_issue_watchers, :add_issue_watchers, :manage_motion, :browse_motion, :create_motion, :vote_motion, :manage_news, :comment_news, :manage_wiki, :rename_wiki_pages, :delete_wiki_pages, :view_wiki_pages, :view_wiki_edits, :edit_wiki_pages, :delete_wiki_pages_attachments, :protect_wiki_pages], :assignable => true },
  { :position => 10, :name => "Active", :level => 2, :builtin => 7, :permissions => nil, :assignable => true },
  { :position => 3, :name => "Member", :level => 1, :builtin => 8, :permissions => [:add_project, :add_subprojects, :send_invitations, :manage_invitations, :transfer_credits, :join_from_generic_invitation, :add_messages, :edit_own_messages, :view_credits, :enable_disable_credits, :view_documents, :view_files, :view_issues, :add_issues, :edit_issues, :manage_issue_relations, :add_issue_notes, :edit_issue_notes, :edit_own_issue_notes, :push_commitment, :pull_commitment, :view_commit_requests, :view_member_roles, :estimate_issues, :accept_issues, :start_issues, :manage_public_queries, :save_queries, :view_gantt, :view_calendar, :view_issue_watchers, :browse_motion, :create_motion, :vote_motion, :comment_news, :rename_wiki_pages, :view_wiki_pages, :view_wiki_edits, :edit_wiki_pages], :assignable => true },
  { :position => 1, :name => "Board", :level => 1, :builtin => 9, :permissions => [:add_project, :add_subprojects, :manage_members, :transfer_credits, :join_from_generic_invitation, :add_messages, :view_credits, :enable_disable_credits, :view_issues, :add_issues, :add_issue_notes, :edit_own_issue_notes, :pull_commitment, :start_issues, :view_gantt, :view_issue_watchers, :manage_motion, :browse_motion, :create_motion, :vote_motion, :comment_news, :view_wiki_pages, :view_wiki_edits, :edit_wiki_pages], :assignable => true },
  { :position => 11, :name => "Clearance", :level => 2, :builtin => 10, :permissions => nil, :assignable => true },
  { :position => 4, :name => "Contributor", :level => 1, :builtin => 5, :permissions => [:add_project, :transfer_credits, :join_from_generic_invitation, :add_messages, :view_credits, :enable_disable_credits, :view_documents, :view_files, :view_issues, :add_issues, :edit_issues, :add_issue_notes, :edit_own_issue_notes, :pull_commitment, :view_commit_requests, :estimate_issues, :accept_issues, :start_issues, :save_queries, :view_gantt, :view_issue_watchers, :browse_motion, :vote_motion, :comment_news, :view_wiki_pages, :view_wiki_edits, :edit_wiki_pages], :assignable => true }
])

puts "Plan..."
Plan.delete_all
plans = Plan.create([
  { :name => "Free", :created_at => nil, :code => 0, :updated_at => nil, :storage_max => 1, :contributor_max => 0, :amount => 0.0, :public_workstream_max => -1, :private_workstream_max => 0, :description => "Free plan" },
  { :name => "Basic", :created_at => nil, :code => 1, :updated_at => nil, :storage_max => 1, :contributor_max => 5, :amount => 25.0, :public_workstream_max => -1, :private_workstream_max => 10, :description => "Best for small projects" },
  { :name => "Better", :created_at => nil, :code => 2, :updated_at => nil, :storage_max => 5, :contributor_max => 20, :amount => 50.0, :public_workstream_max => -1, :private_workstream_max => 25, :description => "For medium-sized projects" },
  { :name => "Super", :created_at => nil, :code => 3, :updated_at => nil, :storage_max => 50, :contributor_max => 100, :amount => 100.0, :public_workstream_max => -1, :private_workstream_max => 60, :description => "Our most popular plan" },
  { :name => "Go Nuts!", :created_at => nil, :code => 4, :updated_at => nil, :storage_max => 100, :contributor_max => -1, :amount => 200.0, :public_workstream_max => -1, :private_workstream_max => -1, :description => "Why limit yourself?" }
])

puts "Setting..."
Setting.delete_all
settings = Setting.create([
  { :name => "host_name", :updated_at => "Mon Aug 24 22:30:20 -0700 2009", :value => "rm.bettermeans.com" },
  { :name => "date_format", :updated_at => "Mon Aug 24 20:28:44 -0700 2009", :value => "" },
  { :name => "feeds_limit", :updated_at => "Mon Aug 24 20:28:44 -0700 2009", :value => "15" },
  { :name => "default_language", :updated_at => "Mon Aug 24 20:28:44 -0700 2009", :value => "en" },
  { :name => "welcome_text", :updated_at => "Thu May 20 12:33:28 -0700 2010", :value => "Welcome to BetterMeans! \r\n\r\nWe're currently running a pre-beta release of our web platform.\r\nPlease report all bugs in the web platform workstream of the bettermeans enterprise" },
  { :name => "diff_max_lines_displayed", :updated_at => "Mon Aug 24 20:28:44 -0700 2009", :value => "1500" },
  { :name => "app_title", :updated_at => "Thu May 20 12:33:28 -0700 2010", :value => "BetterMeans" },
  { :name => "activity_days_default", :updated_at => "Wed Jun 02 13:43:47 -0700 2010", :value => "5" },
  { :name => "per_page_options", :updated_at => "Mon Aug 24 20:28:44 -0700 2009", :value => "25, 50, 100" },
  { :name => "wiki_compression", :updated_at => "Thu Feb 11 20:49:21 -0800 2010", :value => "" },
  { :name => "attachment_max_size", :updated_at => "Wed Oct 14 14:50:55 -0700 2009", :value => "51200" },
  { :name => "time_format", :updated_at => "Mon Aug 24 20:28:45 -0700 2009", :value => "" },
  { :name => "ui_theme", :updated_at => "Wed Feb 24 03:14:19 -0800 2010", :value => "bettermeans" },
  { :name => "text_formatting", :updated_at => "Mon Aug 24 20:28:45 -0700 2009", :value => "textile" },
  { :name => "user_format", :updated_at => "Mon Aug 24 20:28:45 -0700 2009", :value => "firstname_lastname" },
  { :name => "gravatar_enabled", :updated_at => "Mon Aug 24 20:28:45 -0700 2009", :value => "1" },
  { :name => "protocol", :updated_at => "Mon Aug 24 20:28:45 -0700 2009", :value => "http" },
  { :name => "login_required", :updated_at => "Thu Jun 03 17:01:27 -0700 2010", :value => "0" },
  { :name => "autologin", :updated_at => "Mon Aug 24 20:31:26 -0700 2009", :value => "30" },
  { :name => "lost_password", :updated_at => "Mon Aug 24 20:31:26 -0700 2009", :value => "1" },
  { :name => "self_registration", :updated_at => "Wed Jun 30 14:21:01 -0700 2010", :value => "3" },
  { :name => "bcc_recipients", :updated_at => "Sun Jun 06 01:10:02 -0700 2010", :value => "1" },
  { :name => "plain_text_mail", :updated_at => "Mon Aug 24 21:01:35 -0700 2009", :value => "0" },
  { :name => "emails_footer", :updated_at => "Mon Aug 24 22:44:05 -0700 2009", :value => "You have received this notification because you have either subscribed to it, or are involved in it.\r\nTo change your notification preferences, please click here: http://rm.bettermeans.com/my/account" },
  { :name => "mail_from", :updated_at => "Sun Jun 06 01:14:45 -0700 2010", :value => "BetterMeans Admin<administrator@bettermeans.com>" },
  { :name => "notified_events", :updated_at => "Thu May 27 22:52:27 -0700 2010", :value => "--- \n- issue_added\n- issue_updated\n- news_added\n- message_posted\n" },
  { :name => "default_projects_public", :updated_at => "Tue Aug 25 00:27:38 -0700 2009", :value => "1" },
  { :name => "sequential_project_identifiers", :updated_at => "Mon Aug 24 22:43:15 -0700 2009", :value => "1" },
  { :name => "mail_handler_api_key", :updated_at => "Mon Aug 24 22:44:29 -0700 2009", :value => "gX7EBfIyc9orWdXzQ9vM" },
  { :name => "mail_handler_api_enabled", :updated_at => "Mon Aug 24 22:44:29 -0700 2009", :value => "1" },
  { :name => "display_subprojects_issues", :updated_at => "Tue Aug 25 00:17:45 -0700 2009", :value => "1" },
  { :name => "issues_export_limit", :updated_at => "Tue Aug 25 00:17:45 -0700 2009", :value => "500" },
  { :name => "cross_project_issue_relations", :updated_at => "Wed Oct 14 14:49:39 -0700 2009", :value => "1" },
  { :name => "issue_list_default_columns", :updated_at => "Mon Dec 14 16:37:33 -0800 2009", :value => "--- \n- status\n- subject\n- assigned_to\n- fixed_version\n" },
  { :name => "new_project_user_role_id", :updated_at => "Tue Jun 08 15:20:43 -0700 2010", :value => "7" },
  { :name => "file_max_size_displayed", :updated_at => "Wed Oct 14 14:50:55 -0700 2009", :value => "512" },
  { :name => "openid", :updated_at => "Thu Feb 11 20:51:10 -0800 2010", :value => "0" },
  { :name => "password_min_length", :updated_at => "Thu Jun 03 17:01:41 -0700 2010", :value => "6" },
  { :name => "default_projects_modules", :updated_at => "Mon Dec 14 16:36:57 -0800 2009", :value => "--- \n- issue_tracking\n- news\n- documents\n- files\n- wiki\n- boards\n" },
  { :name => "rest_api_enabled", :updated_at => "Thu Feb 11 20:51:10 -0800 2010", :value => "0" },
  { :name => "gravatar_default", :updated_at => "Thu Feb 11 20:52:56 -0800 2010", :value => "identicon" },
  { :name => "start_of_week", :updated_at => "Thu Feb 11 20:52:56 -0800 2010", :value => "" },
  { :name => "commit_fix_keywords", :updated_at => "Thu Feb 11 20:53:31 -0800 2010", :value => "fixes,closes" },
  { :name => "enabled_scm", :updated_at => "Thu Feb 11 20:53:31 -0800 2010", :value => "--- \n- Subversion\n- Darcs\n- Mercurial\n- Cvs\n- Bazaar\n- Git\n" },
  { :name => "commit_fix_status_id", :updated_at => "Thu Feb 11 20:53:31 -0800 2010", :value => "0" },
  { :name => "sys_api_enabled", :updated_at => "Thu Feb 11 20:53:31 -0800 2010", :value => "0" },
  { :name => "repositories_encodings", :updated_at => "Thu Feb 11 20:53:31 -0800 2010", :value => "" },
  { :name => "commit_fix_done_ratio", :updated_at => "Thu Feb 11 20:53:31 -0800 2010", :value => "100" },
  { :name => "commit_ref_keywords", :updated_at => "Thu Feb 11 20:53:31 -0800 2010", :value => "refs,references,IssueID" },
  { :name => "repository_log_display_limit", :updated_at => "Thu Feb 11 20:53:32 -0800 2010", :value => "100" },
  { :name => "commit_logs_encoding", :updated_at => "Thu Feb 11 20:53:32 -0800 2010", :value => "UTF-8" },
  { :name => "autofetch_changesets", :updated_at => "Thu Feb 11 20:53:32 -0800 2010", :value => "1" },
  { :name => "mail_handler_body_delimiters", :updated_at => "Fri May 28 02:09:56 -0700 2010", :value => "" }
])

