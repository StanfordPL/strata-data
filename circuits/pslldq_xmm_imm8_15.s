  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  cvtpd2dq %xmm1, %xmm2                           #  1     0     4      OPC=cvtpd2dq_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label       
  callq .move_byte_0_of_ymm1_to_r9b               #  3     0x9   5      OPC=callq_label       
  movapd %xmm10, %xmm1                            #  4     0xe   5      OPC=movapd_xmm_xmm    
  callq .move_r9b_to_byte_15_of_ymm1              #  5     0x13  5      OPC=callq_label       
  retq                                            #  6     0x18  1      OPC=retq              
                                                                                              
.size target, .-target
