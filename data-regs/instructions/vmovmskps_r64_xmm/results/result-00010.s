  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP   Bytes  Opcode                 
.target:                 #        0     0      OPC=<label>            
  movq $0x80, %rbx       #  1     0     10     OPC=movq_r64_imm64     
  vmovmskps %xmm1, %r8d  #  2     0xa   4      OPC=vmovmskps_r32_xmm  
  xaddl %ebx, %r8d       #  3     0xe   4      OPC=xaddl_r32_r32      
  retq                   #  4     0x12  1      OPC=retq               
                                                                      
.size target, .-target
