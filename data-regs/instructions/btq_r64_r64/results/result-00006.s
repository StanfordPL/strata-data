  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  sarq %cl, %rbx  #  1     0    3      OPC=sarq_r64_cl   
  sarw $0x1, %bx  #  2     0x3  3      OPC=sarw_r16_one  
  retq            #  3     0x6  1      OPC=retq          
                                                         
.size target, .-target
