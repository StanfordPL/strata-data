  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovdqu %xmm3, %xmm1        #  1     0    4      OPC=vmovdqu_xmm_xmm     
  vorpd %xmm2, %xmm2, %xmm7   #  2     0x4  4      OPC=vorpd_xmm_xmm_xmm   
  vmaxpd %ymm1, %ymm7, %ymm1  #  3     0x8  4      OPC=vmaxpd_ymm_ymm_ymm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
