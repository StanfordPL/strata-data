  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovshdup %xmm2, %xmm1           #  1     0     4      OPC=vmovshdup_xmm_xmm        
  movups %xmm1, %xmm10             #  2     0x4   4      OPC=movups_xmm_xmm           
  vmovddup %xmm10, %xmm5           #  3     0x8   5      OPC=vmovddup_xmm_xmm         
  vpunpckhdq %xmm2, %xmm5, %xmm0   #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpcklqdq %xmm0, %xmm5, %xmm1  #  5     0x11  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
