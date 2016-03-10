  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovhlps %xmm2, %xmm2, %xmm2  #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovapd %ymm2, %ymm8          #  2     0x4  4      OPC=vmovapd_ymm_ymm       
  vbroadcastsd %xmm8, %ymm1     #  3     0x8  5      OPC=vbroadcastsd_ymm_xmm  
  retq                          #  4     0xd  1      OPC=retq                  
                                                                               
.size target, .-target
