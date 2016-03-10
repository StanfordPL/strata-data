  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswq %cx, %r9     #  1     0    4      OPC=movswq_r64_r16   
  movswq %bx, %r8     #  2     0x4  4      OPC=movswq_r64_r16   
  orq %r9, %r8        #  3     0x8  3      OPC=orq_r64_r64      
  cmovnzl %r8d, %ebx  #  4     0xb  4      OPC=cmovnzl_r32_r32  
  retq                #  5     0xf  1      OPC=retq             
                                                                
.size target, .-target
