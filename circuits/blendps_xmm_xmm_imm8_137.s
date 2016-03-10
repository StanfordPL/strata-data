  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movss %xmm2, %xmm1               #  1     0     4      OPC=movss_xmm_xmm           
  vpunpckhdq %xmm2, %xmm2, %xmm10  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhps %xmm10, %xmm1, %xmm0   #  3     0x8   5      OPC=vunpckhps_xmm_xmm_xmm   
  movlhps %xmm0, %xmm1             #  4     0xd   3      OPC=movlhps_xmm_xmm         
  retq                             #  5     0x10  1      OPC=retq                    
                                                                                     
.size target, .-target
