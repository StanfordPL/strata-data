  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vorpd %ymm3, %ymm3, %ymm1   #  1     0    4      OPC=vorpd_ymm_ymm_ymm   
  vmovss %xmm1, %xmm2, %xmm6  #  2     0x4  4      OPC=vmovss_xmm_xmm_xmm  
  movups %xmm6, %xmm1         #  3     0x8  3      OPC=movups_xmm_xmm      
  retq                        #  4     0xb  1      OPC=retq                
                                                                           
.size target, .-target
