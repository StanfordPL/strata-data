  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                    
.target:                       #        0    0      OPC=<label>               
  xorps %xmm11, %xmm11         #  1     0    4      OPC=xorps_xmm_xmm         
  vbroadcastsd %xmm11, %ymm12  #  2     0x4  5      OPC=vbroadcastsd_ymm_xmm  
  movupd %xmm12, %xmm1         #  3     0x9  5      OPC=movupd_xmm_xmm        
  retq                         #  4     0xe  1      OPC=retq                  
                                                                              
.size target, .-target
