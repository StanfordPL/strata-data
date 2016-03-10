  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vmovmskps %xmm1, %eax           #  1     0     4      OPC=vmovmskps_r32_xmm  
  clc                             #  2     0x4   1      OPC=clc                
  movq $0xfffffffffffffff9, %rbx  #  3     0x5   10     OPC=movq_r64_imm64     
  cmovnbl %eax, %ebx              #  4     0xf   3      OPC=cmovnbl_r32_r32    
  retq                            #  5     0x12  1      OPC=retq               
                                                                               
.size target, .-target
