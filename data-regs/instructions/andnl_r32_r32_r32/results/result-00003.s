  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x0, %rbx   #  1     0     10     OPC=movq_r64_imm64  
  orl %ecx, %edx    #  2     0xa   2      OPC=orl_r32_r32     
  xorl %edx, %ecx   #  3     0xc   2      OPC=xorl_r32_r32    
  xaddl %ebx, %ecx  #  4     0xe   3      OPC=xaddl_r32_r32   
  retq              #  5     0x11  1      OPC=retq            
                                                              
.size target, .-target
