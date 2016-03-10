  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vxorpd %xmm14, %xmm14, %xmm4  #  1     0    5      OPC=vxorpd_xmm_xmm_xmm  
  movdqa %xmm4, %xmm1           #  2     0x5  4      OPC=movdqa_xmm_xmm      
  retq                          #  3     0x9  1      OPC=retq                
                                                                             
.size target, .-target
