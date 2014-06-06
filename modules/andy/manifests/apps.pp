

class andy::apps {
	
	include osx::global::expand_save_dialog
	include osx::global::disable_autocorrect
	include osx::dock::autohide
	include osx::finder::unhide_library
	include osx::finder::show_hidden_files
	include osx::finder::enable_quicklook_text_selection
	include osx::keyboard::capslock_to_control

	class { 'osx::mouse::button_mode':
	  mode => 2
	}

	include clipmenu
	include sublime_text

	sublime_text::package { 'Emmet':
	  source => 'sergeche/emmet-sublime'
	}

	include googledrive
	include chrome
	include quicksilver
	include iterm2::dev
	include dropbox
	include evernote
	include java
	include appcode2
	include gitx::dev
	include flux
	include bash::completion

}