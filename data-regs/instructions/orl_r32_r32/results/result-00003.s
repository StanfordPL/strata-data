  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode            
.target:                  #        0    0      OPC=<label>       
  movl %ecx, %r12d        #  1     0    3      OPC=movl_r32_r32  
  xorl %r12d, %ebx        #  2     0x3  3      OPC=xorl_r32_r32  
  orq %r12, %rbx          #  3     0x6  3      OPC=orq_r64_r64   
  callq .set_szp_for_ebx  #  4     0x9  5      OPC=callq_label   
  retq                    #  5     0xe  1      OPC=retq          
                                                                 
.size target, .-target
