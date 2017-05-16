   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.20  01/31/02            */
   /*                                                     */
   /*         DEFFACTS BASIC COMMANDS HEADER FILE         */
   /*******************************************************/

/*************************************************************/
/* Purpose: Implements core commands for the deffacts        */
/*   construct such as clear, reset, save, undeffacts,       */
/*   ppdeffacts, list-deffacts, and get-deffacts-list.       */
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

#define _DFFCTBSC_SOURCE_

#include "setup.h"

#if DEFFACTS_CONSTRUCT

#include <stdio.h>
#define _STDIO_INCLUDED_
#include <string.h>

#include "envrnmnt.h"
#include "argacces.h"
#include "memalloc.h"
#include "scanner.h"
#include "router.h"
#include "extnfunc.h"
#include "constrct.h"
#include "cstrccom.h"
#include "factrhs.h"
#include "tmpltdef.h"
#include "cstrcpsr.h"
#include "dffctpsr.h"
#include "dffctdef.h"
#if BLOAD || BLOAD_ONLY || BLOAD_AND_BSAVE
#include "dffctbin.h"
#endif
#if CONSTRUCT_COMPILER && (! RUN_TIME)
#include "dffctcmp.h"
#endif

#include "dffctbsc.h"

/***************************************/
/* LOCAL INTERNAL FUNCTION DEFINITIONS */
/***************************************/

   static void                    ResetDeffacts(void *);
   static void                    ClearDeffacts(void *);
   static void                    SaveDeffacts(void *,void *,char *);
   static void                    ResetDeffactsAction(void *,struct constructHeader *,void *);

/***************************************************************/
/* DeffactsBasicCommands: Initializes basic deffacts commands. */
/***************************************************************/
globle void DeffactsBasicCommands(
  void *theEnv)
  {   
   EnvAddResetFunction(theEnv,"deffacts",ResetDeffacts,0);
   EnvAddClearFunction(theEnv,"deffacts",ClearDeffacts,0);
   AddSaveFunction(theEnv,"deffacts",SaveDeffacts,10);

#if ! RUN_TIME
   EnvDefineFunction2(theEnv,"get-deffacts-list",'m',PTIEF GetDeffactsListFunction,"GetDeffactsListFunction","01w");
   EnvDefineFunction2(theEnv,"undeffacts",'v',PTIEF UndeffactsCommand,"UndeffactsCommand","11w");
   EnvDefineFunction2(theEnv,"deffacts-module",'w',PTIEF DeffactsModuleFunction,"DeffactsModuleFunction","11w");

#if DEBUGGING_FUNCTIONS
   EnvDefineFunction2(theEnv,"list-deffacts",'v', PTIEF ListDeffactsCommand,"ListDeffactsCommand","01w");
   EnvDefineFunction2(theEnv,"ppdeffacts",'v',PTIEF PPDeffactsCommand,"PPDeffactsCommand","11w");
#endif

#if (BLOAD || BLOAD_ONLY || BLOAD_AND_BSAVE)
   DeffactsBinarySetup(theEnv);
#endif

#if CONSTRUCT_COMPILER && (! RUN_TIME)
   DeffactsCompilerSetup(theEnv);
#endif

#endif
  }

/**********************************************************/
/* ResetDeffacts: Deffacts reset routine for use with the */
/*   reset command. Asserts all of the facts contained in */
/*   deffacts constructs.                                 */
/**********************************************************/
static void ResetDeffacts(
  void *theEnv)
  { 
   DoForAllConstructs(theEnv,ResetDeffactsAction,DeffactsData(theEnv)->DeffactsModuleIndex,TRUE,NULL); 
  }

/*****************************************************/
/* ResetDeffactsAction: Action to be applied to each */
/*   deffacts construct during a reset command.      */
/*****************************************************/
#if IBM_TBC
#pragma argsused
#endif
static void ResetDeffactsAction(
  void *theEnv,
  struct constructHeader *theConstruct,
  void *buffer)
  {
#if MAC_MPW || MAC_MCW || IBM_MCW
#pragma unused(buffer)
#endif
   DATA_OBJECT result;
   struct deffacts *theDeffacts = (struct deffacts *) theConstruct;

   if (theDeffacts->assertList == NULL) return;

   SetEvaluationError(theEnv,FALSE);

   EvaluateExpression(theEnv,theDeffacts->assertList,&result);
  }

/**********************************************************/
/* ClearDeffacts: Deffacts clear routine for use with the */
/*   clear command. Creates the initial-facts deffacts.   */
/**********************************************************/
static void ClearDeffacts(
  void *theEnv)
  {
#if (! RUN_TIME) && (! BLOAD_ONLY)
   struct expr *stub;
   struct deffacts *newDeffacts;

   /*=====================================*/
   /* Create the data structures for the  */
   /* expression (assert (initial-fact)). */
   /*=====================================*/

   stub = GenConstant(theEnv,FCALL,FindFunction(theEnv,"assert"));
   stub->argList = GenConstant(theEnv,DEFTEMPLATE_PTR,EnvFindDeftemplate(theEnv,"initial-fact"));
   ExpressionInstall(theEnv,stub);

   /*=============================================*/
   /* Create a deffacts data structure to contain */
   /* the expression and initialize it.           */
   /*=============================================*/

   newDeffacts = get_struct(theEnv,deffacts);
   newDeffacts->header.whichModule =
      (struct defmoduleItemHeader *) GetDeffactsModuleItem(theEnv,NULL);
   newDeffacts->header.name = (SYMBOL_HN *) EnvAddSymbol(theEnv,"initial-fact");
   IncrementSymbolCount(newDeffacts->header.name);
   newDeffacts->assertList = PackExpression(theEnv,stub);
   newDeffacts->header.next = NULL;
   newDeffacts->header.ppForm = NULL;
   newDeffacts->header.usrData = NULL;
   ReturnExpression(theEnv,stub);

   /*===========================================*/
   /* Store the deffacts in the current module. */
   /*===========================================*/

   AddConstructToModule(&newDeffacts->header);
#else
#if MAC_MPW || MAC_MCW || IBM_MCW
#pragma unused(theEnv)
#endif
#endif
  }

/***************************************/
/* SaveDeffacts: Deffacts save routine */
/*   for use with the save command.    */
/***************************************/
static void SaveDeffacts(
  void *theEnv,
  void *theModule,
  char *logicalName)
  { 
   SaveConstruct(theEnv,theModule,logicalName,DeffactsData(theEnv)->DeffactsConstruct); 
  }

/*******************************************/
/* UndeffactsCommand: H/L access routine   */
/*   for the undeffacts command.           */
/*******************************************/
globle void UndeffactsCommand(
  void *theEnv)
  { 
   UndefconstructCommand(theEnv,"undeffacts",DeffactsData(theEnv)->DeffactsConstruct); 
  }

/***********************************/
/* EnvUndeffacts: C access routine */
/*   for the undeffacts command.   */
/***********************************/
globle BOOLEAN EnvUndeffacts(
  void *theEnv,
  void *theDeffacts)
  { 
   return(Undefconstruct(theEnv,theDeffacts,DeffactsData(theEnv)->DeffactsConstruct)); 
  }

/*************************************************/
/* GetDeffactsListFunction: H/L access routine   */
/*   for the get-deffacts-list function.         */
/*************************************************/
globle void GetDeffactsListFunction(
  void *theEnv,
  DATA_OBJECT_PTR returnValue)
  { 
   GetConstructListFunction(theEnv,"get-deffacts-list",returnValue,DeffactsData(theEnv)->DeffactsConstruct); 
  }

/*****************************************/
/* EnvGetDeffactsList: C access routine  */
/*   for the get-deffacts-list function. */
/*****************************************/
globle void EnvGetDeffactsList(
  void *theEnv,
  DATA_OBJECT_PTR returnValue,
  void *theModule)
  { 
   GetConstructList(theEnv,returnValue,DeffactsData(theEnv)->DeffactsConstruct,(struct defmodule *) theModule); 
  }

/************************************************/
/* DeffactsModuleFunction: H/L access routine   */
/*   for the deffacts-module function.          */
/************************************************/
globle SYMBOL_HN *DeffactsModuleFunction(
  void *theEnv)
  { 
   return(GetConstructModuleCommand(theEnv,"deffacts-module",DeffactsData(theEnv)->DeffactsConstruct)); 
  }

#if DEBUGGING_FUNCTIONS

/*******************************************/
/* PPDeffactsCommand: H/L access routine   */
/*   for the ppdeffacts command.           */
/*******************************************/
globle void PPDeffactsCommand(
  void *theEnv)
  { 
   PPConstructCommand(theEnv,"ppdeffacts",DeffactsData(theEnv)->DeffactsConstruct); 
  }

/************************************/
/* PPDeffacts: C access routine for */
/*   the ppdeffacts command.        */
/************************************/
globle int PPDeffacts(
  void *theEnv,
  char *deffactsName,
  char *logicalName)
  { 
   return(PPConstruct(theEnv,deffactsName,logicalName,DeffactsData(theEnv)->DeffactsConstruct)); 
  }

/*********************************************/
/* ListDeffactsCommand: H/L access routine   */
/*   for the list-deffacts command.          */
/*********************************************/
globle void ListDeffactsCommand(
  void *theEnv)
  { 
   ListConstructCommand(theEnv,"list-deffacts",DeffactsData(theEnv)->DeffactsConstruct); 
  }

/*************************************/
/* EnvListDeffacts: C access routine */
/*   for the list-deffacts command.  */
/*************************************/
globle void EnvListDeffacts(
  void *theEnv,
  char *logicalName,
  void *theModule)
  { 
   ListConstruct(theEnv,DeffactsData(theEnv)->DeffactsConstruct,logicalName,(struct defmodule *) theModule);
  }

#endif /* DEBUGGING_FUNCTIONS */

#endif /* DEFFACTS_CONSTRUCT */


