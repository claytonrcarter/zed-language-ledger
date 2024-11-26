use zed_extension_api as zed;

struct LanguageLedger {
    // ... state
}

impl zed::Extension for LanguageLedger {
    fn new() -> Self
    where
        Self: Sized,
    {
        LanguageLedger {}
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        _worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        Ok(zed::Command {
            // FIXME
            command: "/Users/crcarter/src/ledger-lsp/target/debug/ledger-lsp".to_owned(),
            // command: "/Users/crcarter/src/ledger-lsp/target/release/ledger-lsp".to_owned(),
            args: Vec::new(),
            env: Vec::new(),
        })
    }
}

zed::register_extension!(LanguageLedger);
