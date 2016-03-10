  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovsldup %xmm2, %xmm7      #  1     0    4      OPC=vmovsldup_xmm_xmm   
  vminps %ymm7, %ymm7, %ymm7  #  2     0x4  4      OPC=vminps_ymm_ymm_ymm  
  movdqa %xmm7, %xmm1         #  3     0x8  4      OPC=movdqa_xmm_xmm      
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
