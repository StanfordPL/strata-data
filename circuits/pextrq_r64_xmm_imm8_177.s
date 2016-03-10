  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm11  #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  movapd %xmm11, %xmm1           #  2     0x4  5      OPC=movapd_xmm_xmm        
  vmovq %xmm1, %rbx              #  3     0x9  5      OPC=vmovq_r64_xmm         
  retq                           #  4     0xe  1      OPC=retq                  
                                                                                
.size target, .-target
