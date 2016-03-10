  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rdi  #  1     0     10     OPC=movq_r64_imm64  
  xorl %ebx, %edi                 #  2     0xa   2      OPC=xorl_r32_r32    
  setne %bl                       #  3     0xc   3      OPC=setne_r8        
  xchgl %ebx, %edi                #  4     0xf   2      OPC=xchgl_r32_r32   
  retq                            #  5     0x11  1      OPC=retq            
                                                                            
.size target, .-target
