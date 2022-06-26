#!/bin/bash

####+BEGIN: bx:bash:top-of-file :vc "cvs" partof: "bystar" :copyleft "halaal+minimal"
### Args: :control "enabled|disabled|hide|release|fVar"  :vc "cvs|git|nil" :partof "bystar|nil" :copyleft "halaal+minimal|halaal+brief|nil"
typeset RcsId="$Id: dblock-iim-bash.el,v 1.4 2017-02-08 06:42:32 lsipusr Exp $"
# *CopyLeft*
__copying__="
* Libre-Halaal Software"
#  This is part of ByStar Libre Services. http://www.by-star.net
#  This is a Halaal Poly-Existential. See http://www.freeprotocols.org

####+END:

####+BEGIN: bx:bsip:bash:seed-spec :types "seedFtoCommon.sh"
SEED="
*  /[dblock]/ /Seed/ :: [[file:/bisos/core/bsip/bin/seedFtoCommon.sh]] | 
"
FILE="
*  /This File/ :: /bisos/git/auth/bxRepos/blee/persian-input-method/ftoProc.sh 
"
if [ "${loadFiles}" == "" ] ; then
    /bisos/core/bsip/bin/seedFtoCommon.sh -l $0 "$@" 
    exit $?
fi
####+END:


leavesExcludes=""

leavesOrdered=""

nodesExcludes=""

nodesOrdered=""


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || List       ::  Leaves List    [[elisp:(org-cycle)][| ]]
_CommentEnd_

####+BEGIN: bx:dblock:ploneProc:bash:leavesList :types ""
# {{{ DBLOCK-leavesList
leavesList="
"
# }}} DBLOCK-leavesList
####+END:


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || List       ::  Nodes List    [[elisp:(org-cycle)][| ]]
_CommentEnd_

#
# For now ftoWalk is restricted to
#

####+BEGIN: bx:dblock:ploneProc:bash:nodesList :types ""
# {{{ DBLOCK-nodesList
nodesList="
"
# }}} DBLOCK-nodesList
####+END:

####+BEGINNOT: bx:dblock:ploneProc:bash:nodesList :types ""
# {{{ DBLOCK-nodesList
nodesListPips="
blee-pip
unisos-pip
roPerf-pip
bisos-pip
"
# }}} DBLOCK-nodesList
####+END:



_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || Cmnd       ::  examplesHookPostExample    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function examplesHookPost {
    cat  << _EOF_
$( examplesSeperatorTopLabel "EXTENSION EXAMPLES" )
_EOF_

    pypiFtpWalks

    templatesEvolution
    
    return
}


function pypiFtpWalks {
    local pypiProcStartTemplate="/bisos/apps/defaults/software/starts/pypiProc.sh"
    local ftoProcNodeStartTemplate="/bisos/apps/defaults/update/fto/start/commonProc/anyFtoItem/ftoProcNode.sh"
    
    cat  << _EOF_
$( examplesSeperatorChapter "ftpWalks: Uninstall" )
ftoProc.sh -v -n showRun -i ftoWalkRunCmnd pypiProc.sh -i pkgUnInstall sys
$( examplesSeperatorChapter "PyPi AuxNode ftpWalks" )
ftoProc.sh -v -n showRun -i treeRecurse runFunc pypiProc.sh -i distClean
ftoProc.sh -v -n showRun -i ftoWalkRunCmnd pypiProc.sh -i distClean
ftoProc.sh -v -n showRun -i ftoWalkRunCmnd pypiProc.sh -i pkgInstall edit /bisos/venv/dev-py2-bisos-3
ftoProc.sh -v -n showRun -i ftoWalkRunCmnd pypiProc.sh -i pkgInstall edit sys
ftoProc.sh -v -n showRun -i ftoWalkRunCmnd icmPlayer.sh -i clean ftoProc.sh pypiProc.sh
ftoProc.sh -v -n showRun -i ftoWalkRunCmnd icmPlayer.sh -i pkgedPrep ftoProc.sh pypiProc.sh
$( examplesSeperatorChapter "Under Files Update" )
ftoProc.sh -v -n showRun -i updateUnderFilesTo  ${ftoProcNodeStartTemplate} ftoProc.sh
ftoProc.sh -v -n showRun -i updateUnderFilesTo  ${pypiProcStartTemplate} pypiProc.sh 
_EOF_
 return
}


function templatesEvolution {
    local ftoProcNodeStartTemplate="/bisos/apps/defaults/update/fto/start/commonProc/anyFtoItem/ftoProcNode.sh"
    local panelStartTemplate="/bisos/apps/defaults/update/fto/start/commonProc/anyFtoItem/mainPanel.org"
    
    cat  << _EOF_
$( examplesSeperatorSection "ftoProc.sh -- Templates Evolution" )
diff ./ftoProc.sh ${ftoProcNodeStartTemplate}
cp ./ftoProc.sh ${ftoProcNodeStartTemplate}
cp ${ftoProcNodeStartTemplate} ./ftoProc.sh  
$( examplesSeperatorSection "commonPanel.org -- Templates Evolution" )
diff ./Panel.org  ${panelStartTemplate}
cp ./Panel.org ${panelStartTemplate}
cp ${panelStartTemplate} ./Panel.org
_EOF_
 return
}


function vis_updateUnderFilesTo {
    G_funcEntry
    function describeF {  cat  << _EOF_
_EOF_
    }
    EH_assert [[ $# -eq 2 ]]

    local updateToFile="$1"        
    local underFilesName="$2"

    if [ ! -f "${updateToFile}" ] ; then
	EH_problem "Bad Usage Missing ${updateToFile}"
	lpReturn
    fi

    local underFilesList=$(find . -type f -print | egrep "/${underFilesName}"'$')

    for each in ${underFilesList} ; do
	opDo cp ${updateToFile} ${each} 
	opDo bx-dblock -i dblockUpdateFile ${each}
    done

    lpReturn
}



####+BEGIN: bx:dblock:bash:end-of-file :types ""
_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  Common        ::  /[dblock] -- End-Of-File Controls/ [[elisp:(org-cycle)][| ]]
_CommentEnd_
#+STARTUP: showall
#local variables:
#major-mode: sh-mode
#fill-column: 90
# end:
####+END:
