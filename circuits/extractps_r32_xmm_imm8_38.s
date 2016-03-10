  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm11  #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovq %xmm11, %rbx             #  2     0x4  5      OPC=vmovq_r64_xmm         
  movl %ebx, %ebx                #  3     0x9  2      OPC=movl_r32_r32          
  retq                           #  4     0xb  1      OPC=retq                  
                                                                                
.size target, .-target
