  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label    
  rclw $0x1, %bx           #  2     0x5   3      OPC=rclw_r16_one   
  movzbq %bl, %r11         #  3     0x8   4      OPC=movzbq_r64_r8  
  decl %r11d               #  4     0xc   3      OPC=decl_r32       
  sets %ah                 #  5     0xf   3      OPC=sets_rh        
  retq                     #  6     0x12  1      OPC=retq           
                                                                    
.size target, .-target
