  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_byte_14_of_ymm1_to_r8b              #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  movzbq %r8b, %rbx                               #  3     0xa   4      OPC=movzbq_r64_r8         
  vbroadcastss %xmm11, %xmm1                      #  4     0xe   5      OPC=vbroadcastss_xmm_xmm  
  callq .move_byte_7_of_ymm1_to_r9b               #  5     0x13  5      OPC=callq_label           
  callq .move_008_016_r8b_r9b_bx                  #  6     0x18  5      OPC=callq_label           
  retq                                            #  7     0x1d  1      OPC=retq                  
                                                                                                  
.size target, .-target
