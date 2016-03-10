  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %rdx  #  1     0     10     OPC=movq_r64_imm64  
  incw %dx                        #  2     0xa   3      OPC=incw_r16        
  xorl %ebx, %edx                 #  3     0xd   2      OPC=xorl_r32_r32    
  xaddl %ebx, %edx                #  4     0xf   3      OPC=xaddl_r32_r32   
  retq                            #  5     0x12  1      OPC=retq            
                                                                            
.size target, .-target
