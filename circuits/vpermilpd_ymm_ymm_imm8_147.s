  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movhlps %xmm2, %xmm2   #  1     0    3      OPC=movhlps_xmm_xmm   
  vmovddup %ymm2, %ymm1  #  2     0x3  4      OPC=vmovddup_ymm_ymm  
  retq                   #  3     0x7  1      OPC=retq              
                                                                    
.size target, .-target
