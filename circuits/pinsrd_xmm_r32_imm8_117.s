  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovd %ebx, %xmm2               #  1     0     4      OPC=vmovd_xmm_r32          
  vunpcklps %xmm2, %xmm1, %xmm15  #  2     0x4   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovdqu %ymm15, %ymm3           #  3     0x8   5      OPC=vmovdqu_ymm_ymm        
  vmovddup %ymm3, %ymm7           #  4     0xd   4      OPC=vmovddup_ymm_ymm       
  movhlps %xmm7, %xmm1            #  5     0x11  3      OPC=movhlps_xmm_xmm        
  retq                            #  6     0x14  1      OPC=retq                   
                                                                                   
.size target, .-target
