  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovaps %xmm1, %xmm3         #  1     0     4      OPC=vmovaps_xmm_xmm     
  vmovshdup %ymm3, %ymm5       #  2     0x4   4      OPC=vmovshdup_ymm_ymm   
  vmaxsd %xmm5, %xmm1, %xmm13  #  3     0x8   4      OPC=vmaxsd_xmm_xmm_xmm  
  unpckhps %xmm13, %xmm5       #  4     0xc   4      OPC=unpckhps_xmm_xmm    
  vmovd %xmm5, %ebx            #  5     0x10  4      OPC=vmovd_r32_xmm       
  retq                         #  6     0x14  1      OPC=retq                
                                                                             
.size target, .-target
