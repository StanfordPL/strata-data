  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  sarq %cl, %rbx  #  1     0    3      OPC=sarq_r64_cl  
  negw %bx        #  2     0x3  3      OPC=negw_r16     
  rorb $0x1, %bl  #  3     0x6  2      OPC=rorb_r8_one  
  retq            #  4     0x8  1      OPC=retq         
                                                        
.size target, .-target
