  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm8  #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovlhps %xmm1, %xmm8, %xmm0  #  2     0x4  4      OPC=vmovlhps_xmm_xmm_xmm  
  vmovq %xmm0, %rbx             #  3     0x8  5      OPC=vmovq_r64_xmm         
  retq                          #  4     0xd  1      OPC=retq                  
                                                                               
.size target, .-target
