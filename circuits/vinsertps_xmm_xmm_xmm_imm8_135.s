  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm2, %xmm7, %xmm3                 #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpckhpd %xmm3, %xmm5, %xmm4                 #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vandps %ymm3, %ymm4, %ymm1                    #  4     0xd   4      OPC=vandps_ymm_ymm_ymm     
  retq                                          #  5     0x11  1      OPC=retq                   
                                                                                                 
.size target, .-target
