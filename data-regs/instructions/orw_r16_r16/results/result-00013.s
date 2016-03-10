  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movswq %bx, %r12    #  1     0    4      OPC=movswq_r64_r16  
  movswl %cx, %r10d   #  2     0x4  4      OPC=movswl_r32_r16  
  orl %r12d, %r10d    #  3     0x8  3      OPC=orl_r32_r32     
  movswl %r10w, %ebx  #  4     0xb  4      OPC=movswl_r32_r16  
  retq                #  5     0xf  1      OPC=retq            
                                                               
.size target, .-target
