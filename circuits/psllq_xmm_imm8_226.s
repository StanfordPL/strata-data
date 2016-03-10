  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vxorps %xmm7, %xmm7, %xmm12  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  vmovshdup %ymm12, %ymm3      #  2     0x4  5      OPC=vmovshdup_ymm_ymm   
  movupd %xmm3, %xmm1          #  3     0x9  4      OPC=movupd_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
