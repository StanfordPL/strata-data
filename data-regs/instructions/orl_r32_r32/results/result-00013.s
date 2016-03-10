  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode             
.target:                  #        0     0      OPC=<label>        
  movsbq %cl, %rdx        #  1     0     4      OPC=movsbq_r64_r8  
  xaddl %edx, %ecx        #  2     0x4   3      OPC=xaddl_r32_r32  
  xorl %edx, %ebx         #  3     0x7   2      OPC=xorl_r32_r32   
  orq %rdx, %rbx          #  4     0x9   3      OPC=orq_r64_r64    
  callq .set_szp_for_ebx  #  5     0xc   5      OPC=callq_label    
  retq                    #  6     0x11  1      OPC=retq           
                                                                   
.size target, .-target
