  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovdqa %xmm2, %xmm9        #  1     0     4      OPC=vmovdqa_xmm_xmm     
  vmovaps %xmm1, %xmm5        #  2     0x4   4      OPC=vmovaps_xmm_xmm     
  vmaxps %xmm2, %xmm9, %xmm7  #  3     0x8   4      OPC=vmaxps_xmm_xmm_xmm  
  vmulpd %ymm7, %ymm5, %ymm4  #  4     0xc   4      OPC=vmulpd_ymm_ymm_ymm  
  vmovaps %xmm4, %xmm0        #  5     0x10  4      OPC=vmovaps_xmm_xmm     
  movdqa %xmm0, %xmm1         #  6     0x14  4      OPC=movdqa_xmm_xmm      
  retq                        #  7     0x18  1      OPC=retq                
                                                                            
.size target, .-target
