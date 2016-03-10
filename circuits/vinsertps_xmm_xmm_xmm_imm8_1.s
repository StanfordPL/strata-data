  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vxorps %xmm2, %xmm8, %xmm1                      #  2     0x5   4      OPC=vxorps_xmm_xmm_xmm  
  callq .move_byte_26_of_ymm1_to_r8b              #  3     0x9   5      OPC=callq_label         
  callq .move_r8b_to_byte_16_of_ymm1              #  4     0xe   5      OPC=callq_label         
  retq                                            #  5     0x13  1      OPC=retq                
                                                                                                
.size target, .-target
