  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label   
  rclw $0x1, %bx           #  2     0x5  3      OPC=rclw_r16_one  
  decl %ebx                #  3     0x8  2      OPC=decl_r32      
  sets %ah                 #  4     0xa  3      OPC=sets_rh       
  retq                     #  5     0xd  1      OPC=retq          
                                                                  
.size target, .-target
