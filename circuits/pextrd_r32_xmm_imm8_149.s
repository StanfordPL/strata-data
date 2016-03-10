  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %xmm1  #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  vmovshdup %xmm1, %xmm5     #  2     0x5  4      OPC=vmovshdup_xmm_xmm     
  vmovd %xmm5, %ebx          #  3     0x9  4      OPC=vmovd_r32_xmm         
  retq                       #  4     0xd  1      OPC=retq                  
                                                                            
.size target, .-target
