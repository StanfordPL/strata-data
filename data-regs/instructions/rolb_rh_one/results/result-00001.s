  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode               
.target:                           #        0     0      OPC=<label>          
  movzbw %ah, %cx                  #  1     0     4      OPC=movzbw_r16_rh    
  xorb %al, %al                    #  2     0x4   2      OPC=xorb_r8_r8       
  movzbl %ah, %edx                 #  3     0x6   3      OPC=movzbl_r32_rh    
  adcw %cx, %ax                    #  4     0x9   3      OPC=adcw_r16_r16     
  callq .move_064_032_rdx_r8d_r9d  #  5     0xc   5      OPC=callq_label      
  popcntw %r8w, %r13w              #  6     0x11  6      OPC=popcntw_r16_r16  
  rclw $0x1, %ax                   #  7     0x17  3      OPC=rclw_r16_one     
  retq                             #  8     0x1a  1      OPC=retq             
                                                                              
.size target, .-target
