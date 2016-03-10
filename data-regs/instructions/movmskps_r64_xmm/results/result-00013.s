  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vmovmskps %xmm1, %eax  #  1     0    4      OPC=vmovmskps_r32_xmm  
  cwtl                   #  2     0x4  1      OPC=cwtl               
  movq %rax, %rbx        #  3     0x5  3      OPC=movq_r64_r64       
  retq                   #  4     0x8  1      OPC=retq               
                                                                     
.size target, .-target
