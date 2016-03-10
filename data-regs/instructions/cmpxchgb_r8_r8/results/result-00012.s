  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movb %bl, %ah      #  1     0    2      OPC=movb_rh_r8      
  movzbq %cl, %r9    #  2     0x2  4      OPC=movzbq_r64_r8   
  cmpxchgb %ah, %ah  #  3     0x6  3      OPC=cmpxchgb_rh_rh  
  cmovzq %r9, %rbx   #  4     0x9  4      OPC=cmovzq_r64_r64  
  retq               #  5     0xd  1      OPC=retq            
                                                              
.size target, .-target
