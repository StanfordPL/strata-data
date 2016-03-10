  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  vmovapd %xmm2, %xmm6  #  1     0     4      OPC=vmovapd_xmm_xmm  
  vmovupd %ymm6, %ymm0  #  2     0x4   4      OPC=vmovupd_ymm_ymm  
  por %xmm0, %xmm3      #  3     0x8   4      OPC=por_xmm_xmm      
  vmovdqa %xmm3, %xmm1  #  4     0xc   4      OPC=vmovdqa_xmm_xmm  
  retq                  #  5     0x10  1      OPC=retq             
                                                                   
.size target, .-target
