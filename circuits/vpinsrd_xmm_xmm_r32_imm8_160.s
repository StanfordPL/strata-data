  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  movd %ebx, %xmm10             #  1     0    5      OPC=movd_xmm_r32        
  vmovss %xmm10, %xmm2, %xmm11  #  2     0x5  5      OPC=vmovss_xmm_xmm_xmm  
  vmovaps %ymm11, %ymm1         #  3     0xa  5      OPC=vmovaps_ymm_ymm     
  retq                          #  4     0xf  1      OPC=retq                
                                                                             
.size target, .-target
