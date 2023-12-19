#define VAULT_FILE "data/vault_persistence.json"

SUBSYSTEM_DEF(persistence)
    name = "Persistence"
    init_order = INIT_ORDER_PERSISTENCE
    flags = SS_NO_FIRE

    // if you need to store data in the DB, turn on this variable
    var/db_connection = FALSE

    // assoc list: player_ckey -> vault account datum
    var/list/vault_accounts = list()

/datum/controller/subsystem/persistence/Initialize()
    // load stuff
    load_vault()

    return ..()

/datum/controller/subsystem/persistence/Shutdown()
    // save stuff
    save_vault()


/*
    Vault Stuff
*/

/datum/controller/subsystem/persistence/proc/load_vault()
    if(!db_connection)
        load_vault_json()
        return

/datum/controller/subsystem/persistence/proc/save_vault()
    if(!db_connection)
        save_vault_json()
        return

/datum/controller/subsystem/persistence/proc/get_vault_account(player_ckey)
    if(!player_ckey)
        return
    var/datum/player_vault/PV = vault_accounts[player_ckey]
    if(!PV)
        PV = new()
        vault_accounts[player_ckey] = PV
    return PV

/datum/controller/subsystem/persistence/proc/load_vault_json()
    if(!fexists(VAULT_FILE))
        log_and_message_admins("Vault Information file doesn't exist, can't load Vault information")
        return
    var/raw_data = file2text(VAULT_FILE)
    var/list/vault_data = json_decode(raw_data)
    if(!vault_data)
        CRASH("Something terribly wrong with the Vault Information file (incorrect json data)!")

    for(var/player_ckey in vault_data)
        // account created before load vault
        var/datum/player_vault/PV
        if(player_ckey in vault_accounts)
            PV = vault_accounts[player_ckey]
            PV.load_from_list(vault_data[player_ckey])
            return
        PV = new()
        PV.load_from_list(vault_data[player_ckey])

/datum/controller/subsystem/persistence/proc/save_vault_json()
    var/list/player_data = list()

    for(var/player_ckey in vault_accounts)
        var/datum/player_vault/PV = vault_accounts[player_ckey]
        player_data[player_ckey] = PV.save_to_list()

    text2file(json_encode(player_data), VAULT_FILE)

#undef VAULT_FILE