  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %xmm4   #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  vbroadcastsd %xmm2, %ymm14  #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm  
  unpckhps %xmm14, %xmm4      #  3     0xa   4      OPC=unpckhps_xmm_xmm      
  movups %xmm4, %xmm1         #  4     0xe   3      OPC=movups_xmm_xmm        
  retq                        #  5     0x11  1      OPC=retq                  
                                                                              
.size target, .-target
