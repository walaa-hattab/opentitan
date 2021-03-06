// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package entropy_src_reg_pkg;

  // Param list
  parameter int EsFifoDepth = 32;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////
  typedef struct packed {
    struct packed {
      logic        q;
    } es_entropy_valid;
    struct packed {
      logic        q;
    } es_rct_failed;
    struct packed {
      logic        q;
    } es_apt_failed;
    struct packed {
      logic        q;
    } es_fifo_err;
  } entropy_src_reg2hw_intr_state_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } es_entropy_valid;
    struct packed {
      logic        q;
    } es_rct_failed;
    struct packed {
      logic        q;
    } es_apt_failed;
    struct packed {
      logic        q;
    } es_fifo_err;
  } entropy_src_reg2hw_intr_enable_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } es_entropy_valid;
    struct packed {
      logic        q;
      logic        qe;
    } es_rct_failed;
    struct packed {
      logic        q;
      logic        qe;
    } es_apt_failed;
    struct packed {
      logic        q;
      logic        qe;
    } es_fifo_err;
  } entropy_src_reg2hw_intr_test_reg_t;

  typedef struct packed {
    logic        q;
  } entropy_src_reg2hw_es_regen_reg_t;

  typedef struct packed {
    struct packed {
      logic [1:0]  q;
    } enable;
    struct packed {
      logic        q;
    } rng_src_en;
    struct packed {
      logic        q;
    } rct_en;
    struct packed {
      logic        q;
    } apt_en;
    struct packed {
      logic        q;
    } rng_bit_en;
    struct packed {
      logic [1:0]  q;
    } rng_bit_sel;
  } entropy_src_reg2hw_es_conf_reg_t;

  typedef struct packed {
    logic [15:0] q;
  } entropy_src_reg2hw_es_rct_health_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] q;
    } apt_max;
    struct packed {
      logic [15:0] q;
    } apt_win;
  } entropy_src_reg2hw_es_apt_health_reg_t;

  typedef struct packed {
    logic [31:0] q;
    logic        re;
  } entropy_src_reg2hw_es_entropy_reg_t;

  typedef struct packed {
    logic [2:0]  q;
  } entropy_src_reg2hw_es_thresh_reg_t;

  typedef struct packed {
    logic [15:0] q;
  } entropy_src_reg2hw_es_rate_reg_t;

  typedef struct packed {
    logic [3:0]  q;
  } entropy_src_reg2hw_es_seed_reg_t;


  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } es_entropy_valid;
    struct packed {
      logic        d;
      logic        de;
    } es_rct_failed;
    struct packed {
      logic        d;
      logic        de;
    } es_apt_failed;
    struct packed {
      logic        d;
      logic        de;
    } es_fifo_err;
  } entropy_src_hw2reg_intr_state_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } entropy_src_hw2reg_es_entropy_reg_t;

  typedef struct packed {
    struct packed {
      logic [2:0]  d;
    } dig_src_depth;
    struct packed {
      logic [2:0]  d;
    } hwif_depth;
    struct packed {
      logic [4:0]  d;
    } es_depth;
    struct packed {
      logic        d;
    } diag;
  } entropy_src_hw2reg_es_fifo_status_reg_t;

  typedef struct packed {
    logic [2:0]  d;
  } entropy_src_hw2reg_es_fdepthst_reg_t;


  ///////////////////////////////////////
  // Register to internal design logic //
  ///////////////////////////////////////
  typedef struct packed {
    entropy_src_reg2hw_intr_state_reg_t intr_state; // [128:125]
    entropy_src_reg2hw_intr_enable_reg_t intr_enable; // [124:121]
    entropy_src_reg2hw_intr_test_reg_t intr_test; // [120:113]
    entropy_src_reg2hw_es_regen_reg_t es_regen; // [112:112]
    entropy_src_reg2hw_es_conf_reg_t es_conf; // [111:104]
    entropy_src_reg2hw_es_rct_health_reg_t es_rct_health; // [103:88]
    entropy_src_reg2hw_es_apt_health_reg_t es_apt_health; // [87:56]
    entropy_src_reg2hw_es_entropy_reg_t es_entropy; // [55:23]
    entropy_src_reg2hw_es_thresh_reg_t es_thresh; // [22:20]
    entropy_src_reg2hw_es_rate_reg_t es_rate; // [19:4]
    entropy_src_reg2hw_es_seed_reg_t es_seed; // [3:0]
  } entropy_src_reg2hw_t;

  ///////////////////////////////////////
  // Internal design logic to register //
  ///////////////////////////////////////
  typedef struct packed {
    entropy_src_hw2reg_intr_state_reg_t intr_state; // [54:51]
    entropy_src_hw2reg_es_entropy_reg_t es_entropy; // [50:18]
    entropy_src_hw2reg_es_fifo_status_reg_t es_fifo_status; // [17:18]
    entropy_src_hw2reg_es_fdepthst_reg_t es_fdepthst; // [17:18]
  } entropy_src_hw2reg_t;

  // Register Address
  parameter logic [5:0] ENTROPY_SRC_INTR_STATE_OFFSET = 6'h 0;
  parameter logic [5:0] ENTROPY_SRC_INTR_ENABLE_OFFSET = 6'h 4;
  parameter logic [5:0] ENTROPY_SRC_INTR_TEST_OFFSET = 6'h 8;
  parameter logic [5:0] ENTROPY_SRC_ES_REGEN_OFFSET = 6'h c;
  parameter logic [5:0] ENTROPY_SRC_ES_REV_OFFSET = 6'h 10;
  parameter logic [5:0] ENTROPY_SRC_ES_CONF_OFFSET = 6'h 14;
  parameter logic [5:0] ENTROPY_SRC_ES_RCT_HEALTH_OFFSET = 6'h 18;
  parameter logic [5:0] ENTROPY_SRC_ES_APT_HEALTH_OFFSET = 6'h 1c;
  parameter logic [5:0] ENTROPY_SRC_ES_ENTROPY_OFFSET = 6'h 20;
  parameter logic [5:0] ENTROPY_SRC_ES_FIFO_STATUS_OFFSET = 6'h 24;
  parameter logic [5:0] ENTROPY_SRC_ES_FDEPTHST_OFFSET = 6'h 28;
  parameter logic [5:0] ENTROPY_SRC_ES_THRESH_OFFSET = 6'h 2c;
  parameter logic [5:0] ENTROPY_SRC_ES_RATE_OFFSET = 6'h 30;
  parameter logic [5:0] ENTROPY_SRC_ES_SEED_OFFSET = 6'h 34;


  // Register Index
  typedef enum int {
    ENTROPY_SRC_INTR_STATE,
    ENTROPY_SRC_INTR_ENABLE,
    ENTROPY_SRC_INTR_TEST,
    ENTROPY_SRC_ES_REGEN,
    ENTROPY_SRC_ES_REV,
    ENTROPY_SRC_ES_CONF,
    ENTROPY_SRC_ES_RCT_HEALTH,
    ENTROPY_SRC_ES_APT_HEALTH,
    ENTROPY_SRC_ES_ENTROPY,
    ENTROPY_SRC_ES_FIFO_STATUS,
    ENTROPY_SRC_ES_FDEPTHST,
    ENTROPY_SRC_ES_THRESH,
    ENTROPY_SRC_ES_RATE,
    ENTROPY_SRC_ES_SEED
  } entropy_src_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] ENTROPY_SRC_PERMIT [14] = '{
    4'b 0001, // index[ 0] ENTROPY_SRC_INTR_STATE
    4'b 0001, // index[ 1] ENTROPY_SRC_INTR_ENABLE
    4'b 0001, // index[ 2] ENTROPY_SRC_INTR_TEST
    4'b 0001, // index[ 3] ENTROPY_SRC_ES_REGEN
    4'b 0111, // index[ 4] ENTROPY_SRC_ES_REV
    4'b 0011, // index[ 5] ENTROPY_SRC_ES_CONF
    4'b 0011, // index[ 6] ENTROPY_SRC_ES_RCT_HEALTH
    4'b 1111, // index[ 7] ENTROPY_SRC_ES_APT_HEALTH
    4'b 1111, // index[ 8] ENTROPY_SRC_ES_ENTROPY
    4'b 1111, // index[ 9] ENTROPY_SRC_ES_FIFO_STATUS
    4'b 0001, // index[10] ENTROPY_SRC_ES_FDEPTHST
    4'b 0001, // index[11] ENTROPY_SRC_ES_THRESH
    4'b 0011, // index[12] ENTROPY_SRC_ES_RATE
    4'b 0001  // index[13] ENTROPY_SRC_ES_SEED
  };
endpackage

