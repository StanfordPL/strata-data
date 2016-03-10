  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .clear_pf          #  1     0    5      OPC=callq_label   
  callq .read_pf_into_rbx  #  2     0x5  5      OPC=callq_label   
  rclw $0x1, %bx           #  3     0xa  3      OPC=rclw_r16_one  
  retq                     #  4     0xd  1      OPC=retq          
                                                                  
.size target, .-target
