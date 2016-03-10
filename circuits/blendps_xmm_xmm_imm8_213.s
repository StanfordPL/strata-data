  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpckhps %xmm2, %xmm1, %xmm15   #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm   
  movss %xmm2, %xmm1               #  2     0x4   4      OPC=movss_xmm_xmm           
  vpunpckhdq %xmm15, %xmm2, %xmm3  #  3     0x8   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpcklpd %xmm3, %xmm1            #  4     0xd   4      OPC=unpcklpd_xmm_xmm        
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
