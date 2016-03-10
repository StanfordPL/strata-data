  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovapd %ymm2, %ymm1  #  1     0    4      OPC=vmovapd_ymm_ymm  
  movdqa %xmm3, %xmm1   #  2     0x4  4      OPC=movdqa_xmm_xmm   
  retq                  #  3     0x8  1      OPC=retq             
                                                                  
.size target, .-target
