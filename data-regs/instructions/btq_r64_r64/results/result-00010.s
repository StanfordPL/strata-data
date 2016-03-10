  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  shrq %cl, %rbx  #  1     0    3      OPC=shrq_r64_cl   
  addb %cl, %bh   #  2     0x3  2      OPC=addb_rh_r8    
  clc             #  3     0x5  1      OPC=clc           
  rclb $0x1, %bh  #  4     0x6  2      OPC=rclb_rh_one   
  sarw $0x1, %bx  #  5     0x8  3      OPC=sarw_r16_one  
  retq            #  6     0xb  1      OPC=retq          
                                                         
.size target, .-target
