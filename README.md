# validating-binary-decompilation
![](https://github.com/sdasgup3/validating-binary-decompilation/blob/master/docs/misc/overview_diag.png)

The project is about validating the correctness of "binary lifters", which
translate binary code into an IR format. Specifically, this work focuses on
checking the correctness of McSema translating x86-64 binary code into LLVM IR.
Given a formal semantics and symbolic execution engine for x86-64 code and LLVM
IR, this work uses McSema to translate individual x86-64 instructions into LLVM
code and then compares the symbolic summaries obtained using those symbolic
execution engines: if these summaries are not logically equivalent, a bug is
detected in McSema. After applying this check to  x86-64 instructions, this
work detected 29 new bugs in McSema, which are all reported and acknowledged
(https://github.com/lifting-bits/remill/issues/376). 

In addition to the above Single-Instruction Validation (SIV), the work also describes a
technique to validate translations of sequences of instructions, called the Program-Level Validation (PLV). First, they use a
compositional lifter based on the validated translations to generate LLVM IR,
              and compare that the McSema lifted IR. The two versions are
              normalized using multiple standard LLVM passes and then compared
              by translating each into a graph and checking whether the graphs
              match.

## Table of Contents
  - [Documentation](#Documentation)
  - [Evaluation w/o Installation](#Evaluation-without-Installation)
  - [Directory Structure & Tool Information](#Directory-Structure)
  - [Checkout Repository](#Checkout-Repository)
  - [Installation](#Installation)
    - [Relevant for Single Instruction Validation](#Relevant-for-Single-Instruction-Validation)
    - [Relevant for Program Level Validation](#Relevant-for-Program-Level-Validation)
  - [Evaluation/Testing](#Testing)
    - [Running SIV Pipeline](#Running-SIV-Pipeline)
    - [Running PLV Pipeline](#Running-PLV-Pipeline)
  - [Experimental Matcher](#Experimental-Matcher)

## Documentation
 - A Scalable Validation of Binary Lifters, PLDI 2020
by Sandeep Dasgupta, Sushant Dinesh, Deepan Venkatesh, Vikram S. Adve & Christopher W. Fletcher., accepted at Proceedings of the 41st ACM SIGPLAN Conference on Programming Language Design and Implementation (PLDI ‘20), June 15–20, 2020, London, UK, [PDF](https://sdasgup3.github.io/files/pldi_2020.pdf), [BIB](https://sdasgup3.github.io/files/pldi_2020.bib)

## Evaluation without Installation
 - [Peer Evaluated Artifacts](https://github.com/sdasgup3/PLDI20-Artifact-Evaluation)


## Directory Structure 
 - [source: ](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/source)Source Code :-
  The above directory hosts the tools & libraries relevant for validating the
  decompilation performed by McSema. The important tools are:

    - [Compositional-Decompiler](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/source/tools/decompiler)
    This is the compositional decompiler used for program level validation. For
    a given x86-64 program, the tool disassembles, using Objdump, and
    decompiles, using McSema, each x86-64 instruction and composes the
    corresponding lifted LLVM IR to create LLVM IR program.
        - Associated Library Path:
        [compositional-decompiler](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/source/libs/compositional-decompiler)

    - [Matcher](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/source/tools/matcher)
    The matcher is responsible for doing "graph isomorphic matching" on the
    LLVM data-dependence graphs derived from (1) McSema decompiled LLVM IR, and
    (2) the LLVM IR generated by the above mentioned compositional decompiler.
        - Associated Library Path:
        [llvm-graph-matching](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/source/libs/llvm-graph-matching)

    - [spec-to-smt](https://github.com/sdasgup3/validating-binary-decompilation/blob/master/source/tools/spec-to-smt/spec-to-smt.cpp)
    An important component of the Single-Instruction-Validation (SIV), which converts the symbolic summary (specified in K-AST) to SMTLIB queries.
        - Associated Library Path:[smt-generator](https://github.com/sdasgup3/validating-binary-decompilation/blob/master/source/libs/smt-generator/)

 - [tests/single_instruction_translation_validation: ](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/single_instruction_translation_validation)Single Instruction Validation
 - [tests/program_translation_validation: ](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/program_translation_validation)Program Level Validation


## Checkout Repository
```C
export REPO_PATH=${HOME}/Github/ # could be any path
cd $REPO_PATH/
git clone --recursive https://github.com/sdasgup3/validating-binary-decompilation.git
git clone https://github.com/sdasgup3/compd_cache.git # required only if you wish to
                                                      # evaluate the project.
```

## Installation

### Relevant for Single Instruction Validation
 The tools and environments relevant to achieve SIV include (1) the symbolic
 execution engine to analyze binary program, (2) the symbolic execution engine
 to analyze LLVM IR program, (3)
  [spec-to-smt](https://github.com/sdasgup3/validating-binary-decompilation/blob/master/source/tools/spec-to-smt/spec-to-smt.cpp)
  to convert symbolic K-AST summary to SMTLIB verification condition, and (4)
  Enabling python binding for z3 as the verification conditions are encoded in
  the python z3 binding.

In order to install (1), (2), and (4), the followings need to be done.
 
  - Build K
  ```bash
    cd $REPO_PATH
    git clone --recursive git@github.com:sdasgup3/k.git
    cd k
    git checkout bin-decomp-val

    git submodule update --init --recursive
    sudo apt-get install build-essential m4 openjdk-8-jdk libgmp-dev libmpfr-dev pkg-config flex z3 libz3-dev maven opam python3 cmake zlib1g-dev libboost-test-dev libyaml-dev libjemalloc-dev
    curl -sSL https://get.haskellstack.org/ | sh

    sudo apt-get install openjdk-8-jdk
    sudo apt-get install maven
    mvn package -DskipTests   -DskipKTest -Dllvm.backend.skip -DskipDocs -Dhaskell.backend.skip
  ```

  - Build X86 Semantics
  ```bash
    cd $REPO_PATH
    git clone git@github.com:kframework/X86-64-semantics.git
    cd X86-semantics/semantics
    ../scripts/kompile.pl --backend java
    # To validate the working of the executable semantics
    ../scripts/run-single-c-file.sh ../tests/program-tests/bubblesort/test.c java |& tee /tmp/run.log
  ```

  - Build LLVM Semantics
  ```bash
    cd $REPO_PATH
    git clone git@github.com:sdasgup3/llvm-verified-backend.git
    git clone git@github.com:sdasgup3/llvm-verified-backend.git llvm-verified-backend-mem

    cd llvm-verified-backend
    # git checkout working // Takes insane time for krove run
    git checkout single-instruction-val

    ./scripts/kompile-all.sh --llvm
    ./scripts/build-parser.sh

    cd llvm-verified-backend-mem
    git checkout single-instruction-val-mem

    ./scripts/kompile-all.sh --llvm
    ./scripts/build-parser.sh
  ```

  - Python Binding for z3
  ```
    sudo apt install python-pip
    sudo pip install setuptools
    git clone git@github.com:Z3Prover/z3.git
    cd z3
    python scripts/mk_make.py --python
    cd build
    make -j 8
    sudo make install
  ```

### Relevant for Program Level Validation
The installation goal is to build tools like
[Compositional-Decompiler](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/source/tools/decompiler),
[Matcher](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/source/tools/matcher),
and
[spec-to-smt](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/source/tools/spec-to-smt).
Except The Matcher, which is purely a LLVM based tool, the other tools are developed using the libraries of Stoke and LLVM, to be installed
as pre-requisites.

#### Installing Pre-requisites
  - Install Essentials
  ```bash
  sudo apt-get  install \
    cmake \
    z3 \
    parallel

  export REPO_PATH=${HOME}/Github/ # could be any path
  cd $REPO_PATH
  git clone git@github.com:sdasgup3/scripts-n-docs.git
  ```

  - Install GCC/Clang
  ```bash
  [Install gcc (> ver. 6)](https://gist.github.com/zuyu/7d5682a5c75282c596449758d21db5ed)
  sudo update-alternatives --config gcc

  sudo apt-get install clang-6.0
  ```
  
  - Install LLVM-4.0.0

  ```bash
    mkdir -p ~/Install/llvm
    cd ~/Install/llvm
    $REPO_PATH/scripts-n-docs/scripts/bash/download-llvm.sh 4.0.0  ./ fast
    rm -rf *.xz
    mkdir llvm.4.0.0.install llvm.4.0.0.obj
    cd llvm.4.0.0.obj
    INSTALL_PREFIX=~/Install/llvm/llvm.4.0.0.install
    # cmake -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++  -DCMAKE_INSTALL_PREFIX=${INSTALL_PREFIX} -DLLVM_ENABLE_ASSERTIONS=ON -DCMAKE_BUILD_TYPE="RelWithDebInfo" -DLLVM_TARGETS_TO_BUILD="host" ../llvm-4.0.0.src/
    cmake -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++  -DCMAKE_INSTALL_PREFIX=${INSTALL_PREFIX} -DLLVM_ENABLE_ASSERTIONS=ON -DCMAKE_BUILD_TYPE="Release" -DLLVM_TARGETS_TO_BUILD="host" ../llvm-4.0.0.src/
    make -j64
    sudo make install
    # Keep the llvm-config path set to the version of llvm we want to use using $PATH
    # Make sure to export PATH like: export PATH=<llvm/install/dir/>:$PATH
    
    For `signal stack problems`, apply the [patch](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/docs/patches) using
    cd ${HOME}/Install/llvm/llvm-4.0.0.src
    patch -p6 < <patch file>
    
    Note: the patch is borrowed from
    https://github.com/google/sanitizers/issues/822
    https://github.com/llvm-mirror/compiler-rt/commit/8a5e425a68de4d2c80ff00a97bbcb3722a4716da
  ```

  - Install Stoke
  ```bash
    sudo apt-get install bison ccache cmake doxygen exuberant-ctags flex  g++-multilib  ghc git libantlr3c-dev libboost-dev libboost-filesystem-dev libboost-thread-dev libcln-dev libghc-regex-compat-dev libghc-regex-tdfa-dev libghc-split-dev libjsoncpp-dev python subversion libiml-dev libgmp-dev libboost-regex-dev autoconf libtool antlr pccts pkg-config
    cd $REPO_PATH
    git clone --recursive   git@github.com:sdasgup3/stoke.git stoke-develop
    
    cd  stoke-develop/src/ext/z3
    git checkout master
    git checkout 4192c81fae01e90fd8110a00b14172be818f028b
    
    cd $REPO_PATH/stoke-develop/src/ext/x64asm
    git remote add upstream git@github.com:sdasgup3/x64asm.git
    git fetch upstream
    git checkout working
    
    cd $REPO_PATH/stoke-develop/
    ./configure.sh -d --no-cvc4
    cd $REPO_PATH/stoke-develop/src/ext/x64asm
    make -j64 debug
    
    cd $REPO_PATH/stoke-develop
    mkdir lib
    make -j64 debug
  ```
  

  - Install mcsema
  ```bash
    sudo apt-get install      git      curl      cmake      python2.7 python-pip \ 
    python-virtualenv      wget      build-essential  gcc-multilib g++-multilib  \
        libtinfo-dev      lsb-release            zlib1g-dev
    sudo dpkg --add-architecture i386
    sudo apt-get install zip zlib1g-dev:i386
    
    git clone  git@github.com:sdasgup3/mcsema.git
    cd mcsema; git checkout  develop; cd -
 
    git clone https://github.com/sdasgup3/remill.git
    cd remill; git checkout  develop_ae;
    mv ../mcsema tools

    ./scripts/build.sh
    cd remill-build
    sudo make install -j64
  ```


  - Install IDA
    - Installation of licensed copy
    ```bash
      mkdir -p $REPO_PATH
      cd !$
      git clone https://gitlab.engr.illinois.edu/llvm/IDA.git
      Install Ida_software/*.run
      echo "HEXRAYS_LICENSE_FILE=@presto.cs.illinois.edu" > ~/.flexlmrc
      sudo apt-get install libc6-i686:i386 libexpat1:i386 libffi6:i386 libfontconfig1:i386 libfreetype6:i386 libgcc1:i386 libglib2.0-0:i386 libice6:i386 libpcre3:i386  libsm6:i386 libstdc++6:i386 libuuid1:i386 libx11-6:i386 libxau6:i386 libxcb1:i386 libxdmcp6:i386 libxext6:i386 libxrender1:i386 zlib1g:i386 libx11-xcb1:i386 libdbus-1-3:i386 libxi6:i386 libsm6:i386 libcurl3:i386
      ~/ida-6.95/idal64
      ## If the ida run cannot find the google protobuf imports, add [patch](https://github.com/sdasgup3/validating-binary-decompilation/blob/master/docs/patches/mcsema_ida_import_protobuf_fix.patch) to mcsema.
    ```
    - Troubleshoot
        - [TVision error: Can not load libcurses.so](https://stackoverflow.com/questions/30098029/ida-doesnt-work-inside-screen)
        - ImportError: No module named google.protobuf
        ```
        ln -s /usr/local/lib/python2.7/dist-packages/protobuf-3.2.0-py2.7.egg/google /usr/local/lib/python2.7/dist-packages/google
        ```

#### Tools Build Instructions
  - Checkout Repository
  ```bash
    export REPO_PATH=${HOME}/Github/ # could be any path
    cd $REPO_PATH/
    git clone --recursive https://github.com/sdasgup3/validating-binary-decompilation.git
  ```

  - Install
  ```bash
    mkdir -p ${REPO_PATH}/validating-binary-decompilation/source/build
    cd !$

    cmake .. -DLLVM_ROOT=~/Install/llvm/llvm.4.0.0.install/  -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++  -DCMAKE_BUILD_TYPE="Debug" -DLLVM_ENABLE_ASSERTIONS=ON
    make -j8

    make check-format
    make update-format
  ```

  - Recommended Build Practice (applicable only if there is an update in any stoke repo)
  ```
  ## Update/Build x64asm
  cd $REPO_PATH/stoke-develop/src/ext/x64asm
  git pull upstream working
  make clean; make -j64 debug

  ## Update/Build stoke
  cd $REPO_PATH/stoke-develop
  git pull origin working
  make -j64 debug

  ## Update/Build Matcher/compD
  cd $REPO_PATH/validating-binary-decompilation/source/build
  make clean; make -j64
  ```

## Testing
### Running SIV Pipeline
#### An example run
Running SIV on an isolated example instruction `addq_r64_r64` involves the following step
```
export REPO_PATH=${HOME}/Github/ # could be any path
cd $REPO_PATH/validating-binary-decompilation/tests/single_instruction_translation_validation/mcsema/
echo register-variants/addq_r64_r64 > /tmp/sample.txt
# Or try one of the following
#     echo immediate-variants/addq_r64_imm32 > /tmp/sample.txt        # Try an immediate variant
#     echo memory-variants/addq_r64_m64 > /tmp/sample.txt             # Try a memory variant
#     sort -R docs/AE_docs/non-bugs.txt | head -n 1 > /tmp/sample.txt # Try any random instruction from a list
                                                                      # of passing cases
../../scripts/run_batch_siv.sh /tmp/sample.txt |& tee ~/Junk/log

# cat ../../scripts/run_batch_siv.sh
## LIST=$1
##
## ## Number of jobs to issue in parallel
## P=$2
## 
## if [ -z "$P" ]; then
##   P=1
## fi
## 
## if [ -z "$REPO_PATH" ]; then
##   REPO_PATH="~/Github/"
## fi
##
## TESTARENA="$REPO_PATH/validating-binary-decompilation/tests/single_instruction_translation_validation/mcsema/" 
## 
## echo
## echo "Cleaning Stale instr semantics definitions"
## cd $REPO_PATH/X86-64-semantics/semantics
## rm -rf underTestInstructions/*
## cd -
## 
## echo
## echo "Collecting instructions from binary"
## cat $LIST | parallel "cd $TESTARENA/{}; make collect; cd -"
## 
## echo
## echo "Compiling the collected X86 semantics to create a sym-ex"
## cd $REPO_PATH/X86-64-semantics/semantics
## ../scripts/kompile.pl --backend java
## cd -
## 
## echo
## echo "Batch Run Begin using $P jobs in parallel"
## 
## cat $LIST | parallel -j $P "echo ; echo {}; echo ======; cd ${TESTARENA}/{}; \
##       echo; echo \"Generating symbolic summary for binary instruction\" \
##       make genxspec; make xprove; \
##       echo; echo \"Generating symbolic summary for lifted LLVM IR\" \
##       make declutter; make kli; make genlspec; make lprove; \
##       echo; echo \"Generating verification conditions\" \
##       make genz3; \
##       echo; echo \"Prove verification conditions\" \
##       make provez3; \
##       cd -"
## 
## echo "Batch Run End"
```

**Note**
1. The Make target `xprove` will exit with non-zero status and it is a known issue.
  These errors are because of missing KAST (internal K AST) to SMT
  translations in the sym-ex engine backend. We do not need the translations as we have a separate tool
  [spec-to-smt](https://github.com/sdasgup3/validating-binary-decompilation/blob/master/source/tools/spec-to-smt/spec-to-smt.cpp)
  to achieve the translation from the summary that the target `xprove` produces.
  However, please note that all these error messages can be safely ignored as it
  does NOT affect the soundness of the summary generation process.

2. The entire execution will take up-to 4-5 mins.

#### Batch runs
The goal of all the make targets except `make provez3` (as mentioned above) is to reproduce the file verification-query file `Output/test-z3.py`
from scratch.
Here is [an
example test-z3.py file](https://github.com/sdasgup3/validating-binary-decompilation/blob/master/tests/single_instruction_translation_validation/mcsema/register-variants/adcq_r64_r64/Output/test-z3.py)
encoding the verification conditions, which is then dispatched (using Make
target `provez3`) to z3 for verification.

The python file has the following format:

```python 
 s = z3.solver()
 For each E in {registers, flags, memory values}: s.push()
  s.push()
  lvar = symbolic summary corresponding to E, obtained by sym-execution of the LLVM IR (generated by McSema by lifting the binary instruction)
  xvar = symbolic summary corresponding to E, obtained by sym-execution the binary instruction.

  s.add(lvar != xvar)

  solve s for unsat/sat/timeout

  s.pop()
```
Upon dispatch of the verification queries, using `make provez3`, for each register/flag/memory
values,  the output `Test-Pass` is generated if all the queries results in
`unsat`. Conversely, the output says `Test-Fail` if any of query results in
`sat or timeout`.

In order to run this final prover step on a random sample of [non-buggy
instructions](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/single_instruction_translation_validation/mcsema/docs/AE_docs/non-bugs.txt),
do the following:
```
cd $REPO_PATH/validating-binary-decompilation/tests/single_instruction_translation_validation/mcsema/
sort -R docs/AE_docs/non-bugs.txt | head -n 50 | parallel "echo ; echo {}; echo ===; cd {}; make provez3; cd -" |& tee ~/Junk/log
```
#### [Misc Information](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/single_instruction_translation_validation/mcsema/README.md)

### Running PLV Pipeline

#### An Example Run

Here we will elaborate the process of running PLV on an isolated example
function `Queens/Doit/`.  We use shell variable NORM to specify which set of
optimization passes to use for normalization. For example, the value `CUSTOM`
of NORM enables the use of a [set of 17 LLVM opt
passes](https://github.com/sdasgup3/validating-binary-decompilation/blob/master/tests/scripts/matcher_driver.sh#L16)
for normalization. Also, there is an option for NORM which enables
AutoTuner for pass selection (to be described later).

Running PLV on it involves the following steps
```
export REPO_PATH=${HOME}/Github/ # could be any path
export NORM=CUSTOM
cd $REPO_PATH/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/Queens/Doit/

## The step below (i.e., make mcsema) is responsible for running Mcsema to lift the binary "../binary/test"
## and creating  "../binary/test.mcsema.inline.ll" (already populated)
# make mcsema // Skip  this step as mentioned above

## Running Compositional lifter on the corresponding binary ../binary/test.reloc
## Creates mcsema/test.proposed.inline.ll
make compd

## Normalizing mcsema/test.proposed.inline.ll
## Creates mcsema/test.proposed.opt.ll
make compd_opt # expect "Compd Pass" upon execution

## Normalizing ../binary/test.mcsema.inline.ll (Already populated using make mcsema)
## Creates mcsema/test.mcsema.opt.ll
make mcsema_opt

## Matching mcsema/test.proposed.opt.ll & mcsema/test.mcsema.opt.ll
make match # expect "Match Pass" upon execution
```
**Note**
The Make target `match` already includes the normalization actions
corresponding to `compd_opt` & `mcsema_opt`, hence one can skip invoking such
redundant targets.  The reason we still have those targets are for legacy
reasons and included in this presentation for better explanation of the steps.
For example, instead of the above steps one can do
```
export NORM=CUSTOM
cd $REPO_PATH/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/Queens/Doit/
make compd
make match
```

### Batch run (Recommended)
To demonstrate a batch run, we have included a list of sample functions in a
list
`$REPO_PATH/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/docs/AE_docs/samplePassList.txt`.
The list includes function `himenobmtxpa/jacobi`, the biggest function we
tried lifting before submission, wherein the size of the extracted LLVM IR,
      using the Compositional Lifter, is `32105` LOC. Note that, the runtime of the matcher on 
      `himenobmtxpa/jacobi` might take up-to 2 mins.


Running PLV in batch mode, over a sample list of functions, involves the following steps
```
cd $REPO_PATH/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/
../../scripts/run_batch_plv.sh docs/AE_docs/samplePassList.txt

# cat ../../scripts/run_batch_plv.sh
## LIST=$1
## 
## 
## echo "Batch Run Begin"
## echo
## 
## echo "Setting NORMALIZATION to custom passes"
## export NORM=CUSTOM
## 
## echo
## echo "Running Compositional Lifter + Normalizer + Matcher"
## cat $LIST | parallel "echo ; echo {}; echo =======; cd {}; make  compd; make match; cd - "
## 
## echo "Batch Run Begin"
```

**Note**
We have provided the list of `2189` passing cases
`$REPO_PATH/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/docs/AE_docs/matcherPassList.txt`,
  which can be run using either batch mode or individually.

The user is encouraged to pick a random count of entries form the file and invoke the batch run
```
export NORM=CUSTOM
cd $REPO_PATH/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/
sort -R docs/AE_docs/matcherPassList.txt | head -n 10 > /dev/stdout | ../../scripts/run_batch_plv.sh   /dev/stdin |& tee ~/Junk/log
```

#### AutoTuner based Normalization

In order to prove that two functions F & F ′ are semantically equivalent, they
need to be reduced to isomorphic graphs via normalization. For normalization,
     we initially used a custom sequence of 17 LLVM optimization passes,
     discovered manually by pruning the LLVM -O3 search space. Later
     experimentation on normalizer revealed that (1) changing the order of
     passes improves the number of functions reducing to isomorphic graphs (the
         pass ordering problem) and thus reducing false negatives, and (2) not
     all of the 17 passes are needed for every pair of functions under
     equivalence check. Such observations intrigues us to frame the problem of
     selecting the best normalizing pass sequence as an application of program
     autotuning.  We used the OpenTuner framework for the purpose. The
     OpenTuner framework requires the user to specify a space to search for,
     which in our case includes the passes from opt -O3 sequence. The framework
     then uses various machine learning techniques to find the best
     configuration which can minimize an objective function within a given
     resource budget. 

### An example auto-tuning run
Here we will show how the auto-tuner can help discover a pass sequence effective for normalization
and subsequent matching.

```bash
cd $REPO_PATH/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/Queens/Queens
make tuner # Invoke the Opentuner and generate a file mcsema/normalizer_final_config.json
           # containing all the candidate pass sequences which meet the  objective function.
           # runtime: ~1 min.

unset NORM # Select the candidate pass sequences from  mcsema/normalizer_final_config.json file
make match # Invoke the matcher on each of the above candidate pass sequences till the matcher succeeds (declare Pass) or
           # all the candidate pass sequences are exhausted (declare Fail).
```

The file
`$REPO_PATH/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/docs/reported_stats/7.log`
shows the 65 false-negatives for which the matcher failed because of the the
pass ordering problem (The fixed length pass sequence being insufficient to converge the candidate IR programs to isomorphic graphs).  For all the
functions in the above list, the matcher will `Fail`, when normalized using the
fixed-length (17) pass sequence.

```bash
cd $REPO_PATH/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/
export NORM=CUSTOM
sort -R docs/reported_stats/7.log | head -n 5 > /dev/stdout |  cat /dev/stdin  | parallel "cd {}; make match ; cd -" |& tee ~/Junk/log
```

However, if the pass sequence is selected by the auto-tuner, the matcher will succeed in all the cases.
```bash
cd $REPO_PATH/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/
unset NORM
sort -R docs/reported_stats/7.log docs/reported_stats/1.log | head -n 5 > /dev/stdout |  cat /dev/stdin  | parallel "cd {}; make match ; cd -" |& tee ~/Junk/log
```
Note that, for each function entry in `docs/reported_stats/7.log docs/reported_stats/1.log`, the auto-tuner generated pass sequence is pre-populated at `normalizer_final_config.json`.
The functions in `docs/reported_stats/7.log docs/reported_stats/1.log` constitutes the total passing cases.

#### [Misc Information](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/program_translation_validation/README.md)


## Experimental Matcher
**Iterative Pruning based Matcher:** Iteratively prunes the matched sub-
graphs and look for more isomorphic matches after canonicalizing the residual graph.
This ehancement of the matcher is based on the insight that the residual graphs will be much straight-
forward, in terms of the aliasing relations among instructions, for the optimization
passes to canonicalize effectively. 

### Build Instructions
  - Checkout Repository
  ```bash
    export REPO_PATH=${HOME}/Github/ # could be any path
    cd $REPO_PATH/
    git clone --recursive https://github.com/sdasgup3/validating-binary-decompilation.git
  ```

  - Install
  ```bash
    mkdir -p ${REPO_PATH}/validating-binary-decompilation/source/build
    cd !$

    cmake .. -DLLVM_ROOT=~/Install/llvm/llvm.4.0.0.install/  -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++  -DCMAKE_BUILD_TYPE="Debug" -DLLVM_ENABLE_ASSERTIONS=ON
    make -j8 matcher
  ```

