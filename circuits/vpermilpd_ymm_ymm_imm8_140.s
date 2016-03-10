  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovddup %xmm2, %xmm1          #  1     0     4      OPC=vmovddup_xmm_xmm       
  vminss %xmm1, %xmm1, %xmm12    #  2     0x4   4      OPC=vminss_xmm_xmm_xmm     
  vunpckhpd %ymm2, %ymm2, %ymm1  #  3     0x8   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movaps %xmm12, %xmm1           #  4     0xc   4      OPC=movaps_xmm_xmm         
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
