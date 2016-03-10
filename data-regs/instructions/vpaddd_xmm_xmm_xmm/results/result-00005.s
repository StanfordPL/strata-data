  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  movdqu %xmm2, %xmm8   #  1     0    5      OPC=movdqu_xmm_xmm   
  paddd %xmm8, %xmm3    #  2     0x5  5      OPC=paddd_xmm_xmm    
  vmovaps %xmm3, %xmm1  #  3     0xa  4      OPC=vmovaps_xmm_xmm  
  retq                  #  4     0xe  1      OPC=retq             
                                                                  
.size target, .-target
