  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movzbl %ah, %ecx                  #  1     0     3      OPC=movzbl_r32_rh    
  callq .move_016_008_cx_r12b_r13b  #  2     0x3   5      OPC=callq_label      
  movb %r12b, %al                   #  3     0x8   3      OPC=movb_r8_r8       
  popcntw %ax, %r15w                #  4     0xb   6      OPC=popcntw_r16_r16  
  rclw $0x1, %ax                    #  5     0x11  3      OPC=rclw_r16_one     
  retq                              #  6     0x14  1      OPC=retq             
                                                                               
.size target, .-target
