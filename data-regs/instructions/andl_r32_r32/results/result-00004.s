  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  andnl %ecx, %ebx, %ebx          #  1     0     5      OPC=andnl_r32_r32_r32  
  movq $0xffffffffffffff80, %rax  #  2     0x5   10     OPC=movq_r64_imm64     
  xchgl %eax, %ecx                #  3     0xf   2      OPC=xchgl_r32_r32      
  xorl %ebx, %eax                 #  4     0x11  2      OPC=xorl_r32_r32       
  cmovael %eax, %ebx              #  5     0x13  3      OPC=cmovael_r32_r32    
  retq                            #  6     0x16  1      OPC=retq               
                                                                               
.size target, .-target
