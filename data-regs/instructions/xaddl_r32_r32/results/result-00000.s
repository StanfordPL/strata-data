  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffc0, %rax  #  1     0     10     OPC=movq_r64_imm64  
  xchgl %ebx, %eax                #  2     0xa   2      OPC=xchgl_r32_r32   
  callq .clear_cf                 #  3     0xc   5      OPC=callq_label     
  adcl %eax, %ecx                 #  4     0x11  2      OPC=adcl_r32_r32    
  cltq                            #  5     0x13  2      OPC=cltq            
  xchgl %ebx, %ecx                #  6     0x15  2      OPC=xchgl_r32_r32   
  xchgl %eax, %ecx                #  7     0x17  2      OPC=xchgl_r32_r32   
  retq                            #  8     0x19  1      OPC=retq            
                                                                            
.size target, .-target
