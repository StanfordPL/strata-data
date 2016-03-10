  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %bx, %rdi  #  1     0    4      OPC=movswq_r64_r16  
  sarq $0x1, %rdi   #  2     0x4  3      OPC=sarq_r64_one    
  xchgw %di, %bx    #  3     0x7  3      OPC=xchgw_r16_r16   
  retq              #  4     0xa  1      OPC=retq            
                                                             
.size target, .-target
