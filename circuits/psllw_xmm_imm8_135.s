  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovss %xmm1, %xmm1, %xmm12  #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  vxorpd %xmm12, %xmm1, %xmm6  #  2     0x4  5      OPC=vxorpd_xmm_xmm_xmm  
  movdqa %xmm6, %xmm1          #  3     0x9  4      OPC=movdqa_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
