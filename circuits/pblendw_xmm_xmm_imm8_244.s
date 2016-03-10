  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  2     0x5   5      OPC=callq_label         
  punpckhqdq %xmm5, %xmm2                       #  3     0xa   4      OPC=punpckhqdq_xmm_xmm  
  callq .move_016_008_dx_r8b_r9b                #  4     0xe   5      OPC=callq_label         
  callq .move_r8b_to_byte_4_of_ymm1             #  5     0x13  5      OPC=callq_label         
  callq .move_r9b_to_byte_5_of_ymm1             #  6     0x18  5      OPC=callq_label         
  punpcklqdq %xmm2, %xmm1                       #  7     0x1d  4      OPC=punpcklqdq_xmm_xmm  
  retq                                          #  8     0x21  1      OPC=retq                
                                                                                              
.size target, .-target
