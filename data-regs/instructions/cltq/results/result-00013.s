  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movslq %eax, %r8  #  1     0    3      OPC=movslq_r64_r32  
  xchgw %r8w, %r8w  #  2     0x3  4      OPC=xchgw_r16_r16   
  movq %r8, %rax    #  3     0x7  3      OPC=movq_r64_r64    
  retq              #  4     0xa  1      OPC=retq            
                                                             
.size target, .-target
