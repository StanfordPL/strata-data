  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rbx, %rbx   #  1     0    3      OPC=xorq_r64_r64   
  decb %bl          #  2     0x3  2      OPC=decb_r8        
  xchgb %ah, %bl    #  3     0x5  2      OPC=xchgb_r8_rh    
  movsbq %bl, %rax  #  4     0x7  4      OPC=movsbq_r64_r8  
  xchgl %eax, %ebx  #  5     0xb  2      OPC=xchgl_r32_r32  
  retq              #  6     0xd  1      OPC=retq           
                                                            
.size target, .-target
