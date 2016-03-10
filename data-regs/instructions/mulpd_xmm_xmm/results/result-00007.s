  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovaps %xmm1, %xmm0        #  1     0     4      OPC=vmovaps_xmm_xmm     
  movss %xmm1, %xmm0          #  2     0x4   4      OPC=movss_xmm_xmm       
  vmovdqu %xmm2, %xmm7        #  3     0x8   4      OPC=vmovdqu_xmm_xmm     
  vmulpd %ymm7, %ymm0, %ymm4  #  4     0xc   4      OPC=vmulpd_ymm_ymm_ymm  
  movdqa %xmm4, %xmm1         #  5     0x10  4      OPC=movdqa_xmm_xmm      
  retq                        #  6     0x14  1      OPC=retq                
                                                                            
.size target, .-target
