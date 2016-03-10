  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  popcntw %cx, %r12w                 #  1     0     6      OPC=popcntw_r16_r16  
  callq .move_032_016_ecx_r10w_r11w  #  2     0x6   5      OPC=callq_label      
  salw $0x1, %r11w                   #  3     0xb   4      OPC=salw_r16_one     
  rclb $0x1, %r12b                   #  4     0xf   3      OPC=rclb_r8_one      
  sbbl %ecx, %ebx                    #  5     0x12  2      OPC=sbbl_r32_r32     
  retq                               #  6     0x14  1      OPC=retq             
                                                                                
.size target, .-target
