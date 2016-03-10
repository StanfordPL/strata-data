  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm13  #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  unpckhps %xmm2, %xmm13      #  2     0x5   4      OPC=unpckhps_xmm_xmm      
  orpd %xmm1, %xmm1           #  3     0x9   4      OPC=orpd_xmm_xmm          
  unpckhpd %xmm13, %xmm1      #  4     0xd   5      OPC=unpckhpd_xmm_xmm      
  retq                        #  5     0x12  1      OPC=retq                  
                                                                              
.size target, .-target
