  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  movdqa %xmm1, %xmm8         #  1     0    5      OPC=movdqa_xmm_xmm      
  vminss %xmm1, %xmm8, %xmm1  #  2     0x5  4      OPC=vminss_xmm_xmm_xmm  
  retq                        #  3     0x9  1      OPC=retq                
                                                                           
.size target, .-target
