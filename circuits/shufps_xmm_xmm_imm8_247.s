  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckhdq %xmm2, %xmm2, %xmm11  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movshdup %xmm11, %xmm12          #  2     0x4   5      OPC=movshdup_xmm_xmm        
  movddup %xmm1, %xmm4             #  3     0x9   4      OPC=movddup_xmm_xmm         
  vmulsd %xmm2, %xmm1, %xmm8       #  4     0xd   4      OPC=vmulsd_xmm_xmm_xmm      
  vunpckhps %xmm4, %xmm8, %xmm0    #  5     0x11  4      OPC=vunpckhps_xmm_xmm_xmm   
  movhlps %xmm0, %xmm12            #  6     0x15  4      OPC=movhlps_xmm_xmm         
  movapd %xmm12, %xmm1             #  7     0x19  5      OPC=movapd_xmm_xmm          
  retq                             #  8     0x1e  1      OPC=retq                    
                                                                                     
.size target, .-target
