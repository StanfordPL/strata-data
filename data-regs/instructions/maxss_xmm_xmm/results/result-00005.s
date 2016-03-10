  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vmovups %xmm2, %xmm12         #  1     0    4      OPC=vmovups_xmm_xmm     
  vmaxss %xmm12, %xmm1, %xmm13  #  2     0x4  5      OPC=vmaxss_xmm_xmm_xmm  
  movdqa %xmm13, %xmm1          #  3     0x9  5      OPC=movdqa_xmm_xmm      
  retq                          #  4     0xe  1      OPC=retq                
                                                                             
.size target, .-target
