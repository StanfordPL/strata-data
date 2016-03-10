  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm2  #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  vbroadcastss %xmm2, %ymm9     #  2     0x4  5      OPC=vbroadcastss_ymm_xmm  
  vmovd %xmm9, %ebx             #  3     0x9  4      OPC=vmovd_r32_xmm         
  retq                          #  4     0xd  1      OPC=retq                  
                                                                               
.size target, .-target
