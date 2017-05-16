   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.20  01/31/02            */
   /*                                                     */
   /*         DEFRULE BASIC COMMANDS HEADER FILE          */
   /*******************************************************/

/*************************************************************/
/* Purpose: Implements core commands for the defrule         */
/*   construct such as clear, reset, save, undefrule,        */
/*   ppdefrule, list-defrules, and                           */
/*   get-defrule-list.                                       */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*      Brian L. Donnell                                     */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*************************************************************/

#ifndef _H_rulebsc
#define _H_rulebsc

#ifndef _H_evaluatn
#include "evaluatn.h"
#endif

#ifdef LOCALE
#undef LOCALE
#endif

#ifdef _RULEBSC_SOURCE_
#define LOCALE
#else
#define LOCALE extern
#endif

#if ENVIRONMENT_API_ONLY
#define GetDefruleList(theEnv,a,b) EnvGetDefruleList(theEnv,a,b)
#define GetDefruleWatchActivations(theEnv,a) EnvGetDefruleWatchActivations(theEnv,a)
#define GetDefruleWatchFirings(theEnv,a) EnvGetDefruleWatchFirings(theEnv,a)
#define ListDefrules(theEnv,a,b) EnvListDefrules(theEnv,a,b)
#define SetDefruleWatchActivations(theEnv,a,b) EnvSetDefruleWatchActivations(theEnv,a,b)
#define SetDefruleWatchFirings(theEnv,a,b) EnvSetDefruleWatchFirings(theEnv,a,b)
#define Undefrule(theEnv,a) EnvUndefrule(theEnv,a)
#else
#define GetDefruleList(a,b) EnvGetDefruleList(GetCurrentEnvironment(),a,b)
#define GetDefruleWatchActivations(a) EnvGetDefruleWatchActivations(GetCurrentEnvironment(),a)
#define GetDefruleWatchFirings(a) EnvGetDefruleWatchFirings(GetCurrentEnvironment(),a)
#define ListDefrules(a,b) EnvListDefrules(GetCurrentEnvironment(),a,b)
#define SetDefruleWatchActivations(a,b) EnvSetDefruleWatchActivations(GetCurrentEnvironment(),a,b)
#define SetDefruleWatchFirings(a,b) EnvSetDefruleWatchFirings(GetCurrentEnvironment(),a,b)
#define Undefrule(a) EnvUndefrule(GetCurrentEnvironment(),a)
#endif

   LOCALE void                           DefruleBasicCommands(void *);
   LOCALE void                           UndefruleCommand(void *);
   LOCALE BOOLEAN                        EnvUndefrule(void *,void *);
   LOCALE void                           GetDefruleListFunction(void *,DATA_OBJECT_PTR);
   LOCALE void                           EnvGetDefruleList(void *,DATA_OBJECT_PTR,void *);
   LOCALE SYMBOL_HN                     *DefruleModuleFunction(void *);
#if DEBUGGING_FUNCTIONS
   LOCALE void                           PPDefruleCommand(void *);
   LOCALE int                            PPDefrule(void *,char *,char *);
   LOCALE void                           ListDefrulesCommand(void *);
   LOCALE void                           EnvListDefrules(void *,char *,void *);
   LOCALE unsigned                       EnvGetDefruleWatchFirings(void *,void *);
   LOCALE unsigned                       EnvGetDefruleWatchActivations(void *,void *);
   LOCALE void                           EnvSetDefruleWatchFirings(void *,unsigned,void *);
   LOCALE void                           EnvSetDefruleWatchActivations(void *,unsigned,void *);
   LOCALE unsigned                       DefruleWatchAccess(void *,int,unsigned,struct expr *);
   LOCALE unsigned                       DefruleWatchPrint(void *,char *,int,struct expr *);
#endif

#endif


