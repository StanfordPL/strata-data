  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vmaxpd %xmm1, %xmm1, %xmm0  #  1     0    4      OPC=vmaxpd_xmm_xmm_xmm    
  vpbroadcastq %xmm0, %xmm5   #  2     0x4  5      OPC=vpbroadcastq_xmm_xmm  
  vmovq %xmm5, %rbx           #  3     0x9  5      OPC=vmovq_r64_xmm         
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
