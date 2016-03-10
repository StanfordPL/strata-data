  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vbroadcastss %xmm2, %ymm5      #  1     0     5      OPC=vbroadcastss_ymm_xmm   
  vunpckhps %xmm5, %xmm2, %xmm6  #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vminss %xmm2, %xmm6, %xmm11    #  3     0x9   4      OPC=vminss_xmm_xmm_xmm     
  movdqu %xmm5, %xmm1            #  4     0xd   4      OPC=movdqu_xmm_xmm         
  movhlps %xmm11, %xmm1          #  5     0x11  4      OPC=movhlps_xmm_xmm        
  movss %xmm1, %xmm1             #  6     0x15  4      OPC=movss_xmm_xmm          
  retq                           #  7     0x19  1      OPC=retq                   
                                                                                  
.size target, .-target
