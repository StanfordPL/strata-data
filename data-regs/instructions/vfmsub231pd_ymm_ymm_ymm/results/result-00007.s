  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vfmsub132pd %ymm3, %ymm1, %ymm2                 #  1     0     5      OPC=vfmsub132pd_ymm_ymm_ymm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  3     0xa   5      OPC=callq_label              
  vmaxpd %ymm2, %ymm2, %ymm1                      #  4     0xf   4      OPC=vmaxpd_ymm_ymm_ymm       
  retq                                            #  5     0x13  1      OPC=retq                     
                                                                                                     
.size target, .-target
