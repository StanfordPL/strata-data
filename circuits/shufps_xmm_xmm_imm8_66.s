  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %xmm14  #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  movddup %xmm2, %xmm4        #  2     0x5   4      OPC=movddup_xmm_xmm       
  divsd %xmm4, %xmm1          #  3     0x9   4      OPC=divsd_xmm_xmm         
  unpckhps %xmm14, %xmm1      #  4     0xd   4      OPC=unpckhps_xmm_xmm      
  unpcklpd %xmm4, %xmm1       #  5     0x11  4      OPC=unpcklpd_xmm_xmm      
  retq                        #  6     0x15  1      OPC=retq                  
                                                                              
.size target, .-target
