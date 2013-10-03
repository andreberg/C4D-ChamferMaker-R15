// ///////////////////////////////////////////////////////////
// CINEMA 4D SDK                                           //
// ///////////////////////////////////////////////////////////
// (c) 1989-2004 MAXON Computer GmbH, all rights reserved  //
// ///////////////////////////////////////////////////////////

// Starts the plugin registration

#include "c4d.h"
#include <string.h>

// forward declarations
Bool Register_AMa_Deformer(void);

Bool PluginStart(void) {

    if (!Register_AMa_Deformer()) {
        return FALSE;
    }

    GePrint("  Chamfer Maker R15 (r2), Andre Berg 2013.  ");
    
    return TRUE;
}

void PluginEnd(void) {
}

Bool PluginMessage(LONG id, void * data) {
    
    switch (id) {
        case C4DPL_INIT_SYS:
            if (!resource.Init()) {
                return FALSE;                               // don't start plugin without resource
            }
            return TRUE;

        case C4DMSG_PRIORITY:
            return TRUE;

        case C4DPL_BUILDMENU:
            break;

        case C4DPL_COMMANDLINEARGS:
        {
            C4DPL_CommandLineArgs * args = (C4DPL_CommandLineArgs *)data;
            LONG i;

            for (i = 0; i < args->argc; i++) {
                if (!args->argv[i]) {
                    continue;
                }

                if (!strcmp(args->argv[i], "--help") || !strcmp(args->argv[i], "-help")) {
                    // do not clear the entry so that other plugins can make their output!!!
                    GePrint("\x01-SDK is here :-)");
                } else if (!strcmp(args->argv[i], "-SDK")) {
                    args->argv[i] = NULL;
                    GePrint("\x01-SDK executed:-)");
                } else if (!strcmp(args->argv[i], "-plugincrash")) {
                    args->argv[i] = NULL;
                    *((LONG volatile *)0) = 1234;
                }
            }
        }
        break;

    } // switch

    return FALSE;
} // PluginMessage
