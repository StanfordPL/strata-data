  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm6  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovd %xmm6, %ebx                #  2     0x4  4      OPC=vmovd_r32_xmm            
  movzwl %bx, %ebx                 #  3     0x8  3      OPC=movzwl_r32_r16           
  retq                             #  4     0xb  1      OPC=retq                     
                                                                                     
.size target, .-target
