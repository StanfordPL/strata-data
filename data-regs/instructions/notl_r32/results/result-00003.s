  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP  Bytes  Opcode              
.target:                          #        0    0      OPC=<label>         
  movq $0xffffffffffffffff, %r12  #  1     0    10     OPC=movq_r64_imm64  
  xorl %r12d, %ebx                #  2     0xa  3      OPC=xorl_r32_r32    
  retq                            #  3     0xd  1      OPC=retq            
                                                                           
.size target, .-target
