  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  sarq %cl, %rbx  #  1     0    3      OPC=sarq_r64_cl  
  rorb $0x1, %bl  #  2     0x3  2      OPC=rorb_r8_one  
  retq            #  3     0x5  1      OPC=retq         
                                                        
.size target, .-target
