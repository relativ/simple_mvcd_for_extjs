(******************************************************************************)
(* Conditional defines for the System Control Pack components.                *)
(******************************************************************************)
(*                                                                            *)
(* These units makes extensive use of conditional defines to control many     *)
(* aspects of how and what things are compiled.  Usually these are used to    *)
(* effect code size or change how a feature works, but some are also for      *)
(* debugging purposes.                                                        *)
(*                                                                            *)
(* The following is a list of the defines that are used and how.  These       *)
(* defines are all found in the SystemControlPack.inc file.  The prefix used  *)
(* in each name identifies what is effected:                                  *)
(*   DFS   --  Prefix I use for all my defines to avoid clashing with other   *)
(*             defines that may be in use.  DFS = Delphi Free Stuff           *)
(*   SCP   --  Indicates that the define effects all components.  SCP = System*)
(*             Control Pack                                                   *)
(*   STV   --  Indicates that the define effects only the TSystemTreeView     *)
(*             component.  STV = System Tree View                             *)
(*   SLV   --  Indicates that the define effects only the TSystemListView     *)
(*             component.                                                     *)
(*   SCB   --  Indicates that the define effects only the TSystemComboBox     *)
(*             component.  Currently, there are none of these.                *)
(*                                                                            *)
(* * DFS_SCP_SYSTREEVIEW, DFS_SCP_SYSLISTVIEW, DFS_SCP_SYSCOMBOBOX: If you    *)
(*     undefine any of these, then that/those components will no longer be    *)
(*     compiled.  For example, if you undefined DFS_SCP_SYSLISTVIEW, the      *)
(*     TSystemListView component will not be compiled, and the tree view and  *)
(*     combo box components will no longer have a ListView property to link   *)
(*     to. This resulted in a 70k saving in the compiled EXE of a test app    *)
(*     that uses only the TSystemTreeView component.  The down side to this   *)
(*     is that if you use TSystemListView for some projects and not for       *)
(*     others, you will either have to leave it enabled for all, or have one  *)
(*     heck of a code maintenance nightmare.  One solution to this could be   *)
(*     to remove the DFS_SCP_SYSLISTVIEW define from the include file         *)
(*     completely and add it to the Project | Options | Directories/          *)
(*     Conditionals of the design-time package you install the component in.  *)
(*     Then, you would add DFS_SCP_SYSLISTVIEW to the options of the projects *)
(*     that need it, and leave it out of those that don't. This would allow   *)
(*     you to control what is compiled into the Delphi IDE independant of     *)
(*     what is compiled into your projects without having to change the       *)
(*     SystemControlPack.inc file in between.  I have not tested this         *)
(*     solution, but it works in theory.  :)                                  *)
(* * DFS_STV_FASTMODE and DFS_SLV_FASTMODE: These defines are not enabled by  *)
(*     default.  If you enable them, the components will populate/display     *)
(*     much faster.  The reason is that the actual item data such as the      *)
(*     caption and subitem text, the image index, etc. aren't retrieved when  *)
(*     the list/tree is populated.  Instead, the system will ask (via a       *)
(*     CN_NOTIFY message) for the data when it needs a particular item's data *)
(*     and it is supplied only then. So, it doesn't take nearly as long to    *)
(*     add a large number of items.  But (there's always a price to be paid), *)
(*     you will lose access to this data via the Nodes (treeview) or Items    *)
(*     property (listview).  That means you won't be able to do stuff like:   *)
(*                                                                            *)
(*       ShowMessage(MySysListView.Items[0].Caption);                         *)
(*                                                                            *)
(*     However, you will still be able to do the equivalent using stuff like: *)
(*                                                                            *)
(*       ShowMessage(MyList.GetFullPath(MyList.Selected));                    *)
(*                                                                            *)
(*     So, if you need the text or image index stuff, leave the define off.   *)
(*     But, if you don't, turn it on by removing the period and it'll be      *)
(*     faster. In my informal testing, listing my windows directory went from *)
(*     12 seconds to 2 seconds.  You'll only see these big gains on           *)
(*     directories with a lot of files, though.  Many thanks go to Andei V.   *)
(*     Rasskazov for pointing this technique out.                             *)
(* * DFS_SLV_USE_ENHLISTVIEW and DFS_SLV_USE_EXTLISTVIEW: These are not       *)
(*     enabled by default.  They are useful only if you also have my          *)
(*     TEnhListView and TExtListView components.  You will need v3.13 or      *)
(*     later of these components for this to work.  Enabling ONE of these     *)
(*     (never enable both) will cause TSystemListView to descend from the     *)
(*     corresponding TEnh/ExtListView class, giving you all of that class'    *)
(*     features as well.  WARNING:  This is just a simple implemenation       *)
(*     currently, and there are likely to be problems.  Only use these if you *)
(*     want to help me work out the bugs in it.  Defining either of these     *)
(*     will also cause DFS_SLV_USING_ELV to be defined.  I use this           *)
(*     internally when I want to know if either of the above are defined and  *)
(*     I don't care which one.  You should not define DFS_SLV_USING_ELV       *)
(*     yourself.                                                              *)
(* * DFS_STV_FILECHANGES: Controls whether the treeview will "watch" the      *)
(*     directory that is currently displayed for changes, i.e. a new          *)
(*     directory or file created, an existing one deleted, etc. and           *)
(*     automatically refresh when this happens.  This was originally put in   *)
(*     so that this feature could be turned off during development if nasty   *)
(*     bugs were found. However, that was quite a while back, and "change     *)
(*     watching" seems to be quite stable now.  The only reason you might     *)
(*     want to turn it off now is to save yourself the 3.5 kb of space it     *)
(*     adds to your compiled EXE. This define will probably be removed        *)
(*     entirely unless someone makes a strong case for leaving it.            *)
(* * DFS_DEBUG: This is a define that I use internally for debugging the      *)
(*     components.  It causes a unit to be used that is not distributed, so   *)
(*     it is most likely useless to anyone but me.                            *)
(*                                                                            *)
(******************************************************************************)
(* Brad Stowers: bstowers@pobox.com                                           *)
(* Delphi Free Stuff: http://www.delphifreestuff.com/                         *)
(* September 21, 1999                                                         *)
(******************************************************************************)

{$DEFINE DFS_SCP_SYSTREEVIEW}
{$DEFINE DFS_SCP_SYSLISTVIEW}
{$DEFINE DFS_SCP_SYSCOMBOBOX}

{.$DEFINE DFS_STV_FASTMODE}
{.$DEFINE DFS_SLV_FASTMODE}

// Only use one of these, never both
{.$DEFINE DFS_STV_USE_ENHLISTVIEW}
{.$DEFINE DFS_SLV_USE_EXTLISTVIEW}

{$IFDEF DFS_SLV_USE_ENHLISTVIEW}
  {$IFDEF DFS_SLV_USE_EXTLISTVIEW}
    Error!  Use only one of these defines, never both!
  {$ENDIF}
  {$DEFINE DFS_SLV_USING_ELV} // Internal use only!
{$ENDIF}

{$IFDEF DFS_SLV_USE_EXTLISTVIEW}
  {$DEFINE DFS_SLV_USING_ELV} // Internal use only!
{$ENDIF}

{$DEFINE DFS_STV_FILECHANGES}

{.$DEFINE DFS_DEBUG}

