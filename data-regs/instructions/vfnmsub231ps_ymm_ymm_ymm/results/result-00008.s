  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vfnmsub132ps %ymm3, %ymm1, %ymm2  #  1     0     5      OPC=vfnmsub132ps_ymm_ymm_ymm  
  vmaxpd %ymm2, %ymm2, %ymm1        #  2     0x5   4      OPC=vmaxpd_ymm_ymm_ymm        
  callq .move_128_064_xmm2_r10_r11  #  3     0x9   5      OPC=callq_label               
  callq .move_064_128_r10_r11_xmm1  #  4     0xe   5      OPC=callq_label               
  retq                              #  5     0x13  1      OPC=retq                      
                                                                                        
.size target, .-target
