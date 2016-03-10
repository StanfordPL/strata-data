  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  xorl %eax, %eax         #  1     0    2      OPC=xorl_r32_r32       
  andnl %ebx, %eax, %eax  #  2     0x2  5      OPC=andnl_r32_r32_r32  
  cltq                    #  3     0x7  2      OPC=cltq               
  sarq $0x1, %rax         #  4     0x9  3      OPC=sarq_r64_one       
  xchgl %ebx, %eax        #  5     0xc  1      OPC=xchgl_eax_r32      
  retq                    #  6     0xd  1      OPC=retq               
                                                                      
.size target, .-target
