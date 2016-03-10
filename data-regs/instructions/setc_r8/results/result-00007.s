  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .clear_of          #  1     0     5      OPC=callq_label    
  callq .read_of_into_rbx  #  2     0x5   5      OPC=callq_label    
  callq .read_of_into_rcx  #  3     0xa   5      OPC=callq_label    
  rclw $0x1, %bx           #  4     0xf   3      OPC=rclw_r16_one   
  xaddl %ecx, %ebx         #  5     0x12  3      OPC=xaddl_r32_r32  
  retq                     #  6     0x15  1      OPC=retq           
                                                                    
.size target, .-target
