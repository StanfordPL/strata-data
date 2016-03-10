  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  shrq %cl, %rbx  #  1     0    3      OPC=shrq_r64_cl  
  negb %bl        #  2     0x3  2      OPC=negb_r8      
  rorb $0x1, %bl  #  3     0x5  2      OPC=rorb_r8_one  
  retq            #  4     0x7  1      OPC=retq         
                                                        
.size target, .-target
