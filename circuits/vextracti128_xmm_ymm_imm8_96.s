  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                
.target:                     #        0    0      OPC=<label>           
  vmovapd %xmm1, %xmm2       #  1     0    4      OPC=vmovapd_xmm_xmm   
  vmovdqa %xmm2, %xmm10      #  2     0x4  4      OPC=vmovdqa_xmm_xmm   
  vpor %xmm10, %xmm2, %xmm1  #  3     0x8  5      OPC=vpor_xmm_xmm_xmm  
  retq                       #  4     0xd  1      OPC=retq              
                                                                        
.size target, .-target
