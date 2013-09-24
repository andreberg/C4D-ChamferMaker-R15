CONTAINER O_AMa_ChamferMaker
{
    NAME O_AMa_ChamferMaker;
    INCLUDE Obase;
    GROUP ID_OBJECTPROPERTIES
    {
        GROUP
        {
            COLUMNS 2;
            BOOL AMa_CHMMKR_ALL_CHILDREN {}
            BOOL AMa_CHMMKR_HN_RESET {}
        }
        GROUP
        {
            COLUMNS 2;
            LONG AMa_CHMMKR_SEL_MODE
            {
                CYCLE
                {
                    AMa_CHMMKR_SELMO_LIVE;
                    AMa_CHMMKR_SELMO_NSSET;
                    AMa_CHMMKR_SELMO_CHOOSE;
                    AMa_CHMMKR_SELMO_OPEN;
                    AMa_CHMMKR_SELMO_PHO;
                    AMa_CHMMKR_SELMO_THRESH;
                    AMa_CHMMKR_SELMO_ALL;
                }
            }
            STATICTEXT {}
        }
        LONG AMa_CHMMKR_N_TH_SS { MIN 1; MAX 180; }
        GROUP
        {
            COLUMNS 2;
            REAL AMa_CHMMKR_SELECT_THRESH { MIN 0; MAX 180; }
            BOOL AMa_CHMMKR_AND_OPEN_EDG {}
        }
        IN_EXCLUDE AMa_CHMMKR_IN_EXCL { NUM_FLAGS 0; ACCEPT { Tedgeselection; } }
        SEPARATOR { LINE; }
        GROUP
        {
            COLUMNS 2;
            LONG AMa_CHMMKR_SHAPE_MODE
            {
                CYCLE
                {
                    AMa_CHMMKR_MODE_LINEAR;				
                    AMa_CHMMKR_MODE_CONVEX;
                    AMa_CHMMKR_MODE_CONCAVE;
                    AMa_CHMMKR_MODE_BEZIER;
                    AMa_CHMMKR_MODE_USER;
                    AMa_CHMMKR_MODE_AMaPARAL;
                    AMa_CHMMKR_MODE_COMPO;
                    AMa_CHMMKR_MODE_R15;
                }
            }
            STATICTEXT {}
        }	
        SEPARATOR { LINE; }
        GROUP AMa_CHMMKR_GROUP_PARALL
        {
            GROUP
            {
                COLUMNS 1;
                REAL AMa_CHMMKR_RAD_p { MIN 0.0; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                REAL AMa_CHMMKR_RAD_PERC { UNIT PERCENT; MIN 100; MAXSLIDER 200; CUSTOMGUI REALSLIDER; }
            }
            GROUP 
            {
                COLUMNS 2;
                BOOL AMa_CHMMKR_WELD {}
                BOOL AMa_CHMMKR_CLOSE_FANS {}
                BOOL AMa_CHMMKR_PROL_OUTL {}
                BOOL AMa_CHMMKR_CONNECT_OUTL {}
                REAL AMa_CHMMKR_CONN_THRESH { MIN 0; MAX 15; STEP 0.1; }
            }
            SEPARATOR { LINE; }
            GROUP 
            {
                LONG AMa_CHMMKR_HN_WHAT
                {
                    CYCLE
                    {
                        AMa_CHMMKR_HN_OFF;
                        AMa_CHMMKR_HN_BOTH;
                        AMa_CHMMKR_HN_E_ONLY;				
                        AMa_CHMMKR_HN_P_ONLY;
                    }
                }
                LONG AMa_CHMMKR_HN_PRIORITY
                {
                    CYCLE
                    {
                        AMa_CHMMKR_HN_BIG;				
                        AMa_CHMMKR_HN_LOW;
                    }
                }
            }
        }
        GROUP AMa_CHMMKR_GROUP_COMP
        {   
            SEPARATOR { LINE; }
            GROUP 
            {
                LONG AMa_CHMMKR_COMP_SEC_MO
                {
                    CYCLE
                    {
                        AMa_CHMMKR_MODE_LINEAR;				
                        AMa_CHMMKR_MODE_CONVEX;
                        AMa_CHMMKR_MODE_CONCAVE;
                        AMa_CHMMKR_MODE_BEZIER;
                        AMa_CHMMKR_MODE_USER;
                        AMa_CHMMKR_MODE_AMaPARAL;
                        AMa_CHMMKR_MODE_R15;
                    }
                }
            }
            SEPARATOR { LINE; }
            GROUP AMa_CHMMKR_GROUP_DBL_P
            {
                GROUP
                {
                    COLUMNS 1;
                    REAL AMa_CHMMKR_RAD_c { MIN 0.0; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                }
                GROUP 
                {
                    COLUMNS 2;
                    BOOL AMa_CHMMKR_COMP_CLO_F {}
                    BOOL AMa_CHMMKR_COMP_PR_O {}
                    BOOL AMa_CHMMKR_COMP_CONN {}
                    REAL AMa_CHMMKR_COMP_CO_THR { MIN 0; MAX 15; STEP 0.1; }
                }
            }
        }
        GROUP AMa_CHMMKR_GROUP_STANDARD
        {
            GROUP
            {
                COLUMNS 1;
                REAL AMa_CHMMKR_RAD_a	   { UNIT METER; MIN 0.0; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                REAL AMa_CHMMKR_VARIANCE { UNIT PERCENT; MINSLIDER -100; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                LONG AMa_CHMMKR_SUBDIVISION { MIN 0; MAXSLIDER 25; CUSTOMGUI LONGSLIDER; }

                SEPARATOR { LINE; }
                
                BOOL AMa_CHMMKR_CREATENGONS {}
                
                SEPARATOR { LINE; }
                
                GROUP 
                {
                    COLUMNS 2;
                    BOOL AMa_CHMMKR_PHONG_BREAK {}
                    BOOL AMa_CHMMKR_PHONG_BREAK_M {}
                }
            }
            GROUP AMa_CHMMKR_GROUP_USER
            {
                SEPARATOR { LINE; }
                
                SPLINE AMa_CHMMKR_PATH { SHOWGRID_H; SHOWGRID_V; GRIDSIZE_H 8; GRIDSIZE_V 8;
                        EDIT_H; EDIT_V; LABELS_H; LABELS_V; HAS_PRESET_BTN; HAS_ROUND_SLIDER; Y_MIN_TEXT AMa_CHMMKR_PATH_Y_MIN_TXT; Y_MAX_TEXT AMa_CHMMKR_PATH_Y_MAX_TXT; }
                GROUP
                {
                    COLUMNS 1;
                    REAL AMa_CHMMKR_EXTRUSION { UNIT METER; MINSLIDER -100; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                    REAL AMa_CHMMKR_EXTRU_VARI { UNIT PERCENT; MINSLIDER -100; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                    BOOL AMa_CHMMKR_SHAPING_SYMMETRY {}
                    BOOL AMa_CHMMKR_SHAPING_CONSTANT {}
                }
            }
        }
        GROUP AMa_CHMMKR_GROUP_R15
        {
            GROUP AMa_CHMMKR_R15_BEVEL_GROUP_OPTION
            {
                DEFAULT 1;
                LONG AMa_CHMMKR_R15_BEVEL_MASTER_MODE
                {
                    CYCLE
                    {
                        AMa_CHMMKR_R15_BEVEL_MASTER_MODE_CHAMFER;
                        AMa_CHMMKR_R15_BEVEL_MASTER_MODE_SOLID;
                    }
                }
                
                LONG AMa_CHMMKR_R15_BEVEL_OFFSET_MODE
                {
                    CYCLE
                    {
                        AMa_CHMMKR_R15_BEVEL_OFFSET_MODE_FIXED;
                        AMa_CHMMKR_R15_BEVEL_OFFSET_MODE_RADIAL;
                        AMa_CHMMKR_R15_BEVEL_OFFSET_MODE_PROPORTIONAL;
                    }
                }
                
                REAL AMa_CHMMKR_R15_BEVEL_RADIUS { UNIT METER; MIN 0; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                REAL AMa_CHMMKR_R15_BEVEL_RADIUS_R { UNIT METER; MIN 0; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                REAL AMa_CHMMKR_R15_BEVEL_RADIUS_P { UNIT PERCENT; MIN 0; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                REAL AMa_CHMMKR_R15_BEVEL_SUB	{ MIN 0; MINSLIDER 0; MAXSLIDER 20; CUSTOMGUI REALSLIDER; }
                REAL AMa_CHMMKR_R15_BEVEL_DEPTH	{ UNIT PERCENT; MINSLIDER -100; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                REAL AMa_CHMMKR_R15_BEVEL_SHAPING_EXTR { UNIT METER; MINSLIDER -100; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                BOOL AMa_CHMMKR_R15_BEVEL_LIMIT	{};
            }
            
            GROUP AMa_CHMMKR_R15_BEVEL_GROUP_POLYGON
            {
                DEFAULT 1;
                REAL AMa_CHMMKR_R15_BEVEL_EXTRUSION	{ UNIT METER; MINSLIDER -100; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                REAL AMa_CHMMKR_R15_BEVEL_POLY_ANGLE { MIN 0; UNIT DEGREE; MINSLIDER 0; MAXSLIDER 180; CUSTOMGUI REALSLIDER; }
                BOOL AMa_CHMMKR_R15_BEVEL_GROUP	{};
            }

            GROUP AMa_CHMMKR_R15_BEVEL_GROUP_SHAPING
            {
                DEFAULT 1;
                LONG AMa_CHMMKR_R15_BEVEL_SHAPING_MODE
                {
                    CYCLE
                    {
                        AMa_CHMMKR_R15_BEVEL_SHAPING_MODE_ROUND;
                        AMa_CHMMKR_R15_BEVEL_SHAPING_MODE_USER;
                        AMa_CHMMKR_R15_BEVEL_SHAPING_MODE_PROFILE;
                    }
                }
                
                REAL AMa_CHMMKR_R15_BEVEL_SHAPING_TENSION { UNIT PERCENT; MINSLIDER -100; MAXSLIDER 100; CUSTOMGUI REALSLIDER; }
                
                SPLINE AMa_CHMMKR_R15_BEVEL_SHAPING_SPLINE { SHOWGRID_H; SHOWGRID_V; GRIDSIZE_H 8; GRIDSIZE_V 8; EDIT_H; EDIT_V; LABELS_H; LABELS_V; HAS_PRESET_BTN; HAS_ROUND_SLIDER; }
                
                LINK AMa_CHMMKR_R15_BEVEL_SHAPING_SPLINE_LINK 
                {
                    ACCEPT { Ospline; }
                }
                
                LONG AMa_CHMMKR_R15_BEVEL_SHAPING_SPLINE_PLANE
                {
                    CYCLE
                    {
                        AMa_CHMMKR_R15_BEVEL_SHAPING_SPLINE_PLANE_XY;
                        AMa_CHMMKR_R15_BEVEL_SHAPING_SPLINE_PLANE_XZ;
                        AMa_CHMMKR_R15_BEVEL_SHAPING_SPLINE_PLANE_ZY;
                    }
                }
                
                BOOL AMa_CHMMKR_R15_BEVEL_SHAPING_SYMMETRY {};
                BOOL AMa_CHMMKR_R15_BEVELL_SHAPING_CONSTANT {};
            }
            
            GROUP AMa_CHMMKR_R15_BEVEL_GROUP_TOPOLOGY
            {
                DEFAULT 1;
                LONG AMa_CHMMKR_R15_BEVEL_MITERING
                {
                    CYCLE
                    {
                        AMa_CHMMKR_R15_BEVEL_MITERING_DEFAULT;
                        AMa_CHMMKR_R15_BEVEL_MITERING_UNIFORM;
                        AMa_CHMMKR_R15_BEVEL_MITERING_RADIAL;
                        AMa_CHMMKR_R15_BEVEL_MITERING_PATCH;
                    }
                }
                
                LONG AMa_CHMMKR_R15_BEVEL_CORNER_ENDING
                {
                    CYCLE
                    {
                        AMa_CHMMKR_R15_BEVEL_CORNER_ENDING_DEFAULT;
                        AMa_CHMMKR_R15_BEVEL_CORNER_ENDING_EXTEND;
                        AMa_CHMMKR_R15_BEVEL_CORNER_ENDING_INSET;
                    }
                }
                
                LONG AMa_CHMMKR_R15_BEVEL_PROUNDING_TYPE
                {
                    CYCLE
                    {
                        AMa_CHMMKR_R15_BEVEL_PROUNDING_TYPE_FLAT;
                        AMa_CHMMKR_R15_BEVEL_PROUNDING_TYPE_FULL;
                        AMa_CHMMKR_R15_BEVEL_PROUNDING_TYPE_CONVEX;
                    }
                }
                
                BOOL AMa_CHMMKR_R15_BEVEL_CORNER_NGON {};
                BOOL AMa_CHMMKR_R15_BEVEL_ROUNDING_NGON {};
                BOOL AMa_CHMMKR_R15_BEVEL_SELECTION_PHONG_BREAK {};
                BOOL AMa_CHMMKR_R15_BEVEL_SELECTION_PHONG_BREAK_M {};
            }
        }
    }
}