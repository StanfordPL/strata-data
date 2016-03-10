  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovss %xmm3, %xmm2, %xmm10  #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  vpand %ymm3, %ymm3, %ymm1    #  2     0x4  4      OPC=vpand_ymm_ymm_ymm   
  movsd %xmm10, %xmm1          #  3     0x8  5      OPC=movsd_xmm_xmm       
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
