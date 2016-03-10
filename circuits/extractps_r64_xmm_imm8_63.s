  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm1  #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovshdup %xmm1, %xmm14       #  2     0x4   4      OPC=vmovshdup_xmm_xmm     
  vminpd %ymm14, %ymm14, %ymm9  #  3     0x8   5      OPC=vminpd_ymm_ymm_ymm    
  vmovd %xmm9, %ebx             #  4     0xd   4      OPC=vmovd_r32_xmm         
  retq                          #  5     0x11  1      OPC=retq                  
                                                                                
.size target, .-target
