  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmaxss %xmm1, %xmm1, %xmm0    #  1     0    4      OPC=vmaxss_xmm_xmm_xmm    
  vmovhlps %xmm0, %xmm0, %xmm6  #  2     0x4  4      OPC=vmovhlps_xmm_xmm_xmm  
  movq %xmm6, %rbx              #  3     0x8  5      OPC=movq_r64_xmm          
  retq                          #  4     0xd  1      OPC=retq                  
                                                                               
.size target, .-target
