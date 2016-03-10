  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm3  #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  vmovupd %xmm3, %xmm3       #  2     0x5  4      OPC=vmovupd_xmm_xmm       
  movq %xmm3, %rbx           #  3     0x9  5      OPC=movq_r64_xmm          
  retq                       #  4     0xe  1      OPC=retq                  
                                                                            
.size target, .-target
