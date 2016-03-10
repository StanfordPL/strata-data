  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x10, %r8     #  1     0     10     OPC=movq_r64_imm64   
  movslq %r8d, %rbp   #  2     0xa   3      OPC=movslq_r64_r32   
  negl %ebp           #  3     0xd   2      OPC=negl_r32         
  cmovnpl %r8d, %eax  #  4     0xf   4      OPC=cmovnpl_r32_r32  
  subb %bl, %ah       #  5     0x13  2      OPC=subb_rh_r8       
  retq                #  6     0x15  1      OPC=retq             
                                                                 
.size target, .-target
