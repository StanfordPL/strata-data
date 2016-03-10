  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  vmovddup %ymm2, %ymm3  #  1     0    4      OPC=vmovddup_ymm_ymm  
  movapd %xmm2, %xmm3    #  2     0x4  4      OPC=movapd_xmm_xmm    
  vmovdqu %ymm3, %ymm1   #  3     0x8  4      OPC=vmovdqu_ymm_ymm   
  retq                   #  4     0xc  1      OPC=retq              
                                                                    
.size target, .-target
