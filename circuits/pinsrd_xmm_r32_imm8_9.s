  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovd %ebx, %xmm15              #  1     0     4      OPC=vmovd_xmm_r32          
  vmovaps %ymm15, %ymm7           #  2     0x4   5      OPC=vmovaps_ymm_ymm        
  vunpcklps %xmm7, %xmm1, %xmm11  #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm11, %xmm1             #  4     0xd   5      OPC=movsd_xmm_xmm          
  retq                            #  5     0x12  1      OPC=retq                   
                                                                                   
.size target, .-target
