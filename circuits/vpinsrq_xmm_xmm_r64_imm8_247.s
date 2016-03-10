  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  orw %bx, %bx                     #  1     0    3      OPC=orw_r16_r16              
  vmovq %rbx, %xmm6                #  2     0x3  5      OPC=vmovq_xmm_r64            
  vpunpcklqdq %xmm6, %xmm2, %xmm1  #  3     0x8  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
