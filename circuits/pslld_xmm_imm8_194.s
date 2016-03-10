  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vsqrtsd %xmm1, %xmm1, %xmm6  #  1     0     4      OPC=vsqrtsd_xmm_xmm_xmm  
  vmovdqu %ymm6, %ymm10        #  2     0x4   4      OPC=vmovdqu_ymm_ymm      
  andnpd %xmm10, %xmm1         #  3     0x8   5      OPC=andnpd_xmm_xmm       
  unpckhpd %xmm1, %xmm1        #  4     0xd   4      OPC=unpckhpd_xmm_xmm     
  retq                         #  5     0x11  1      OPC=retq                 
                                                                              
.size target, .-target
