  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorl %eax, %eax          #  1     0     2      OPC=xorl_r32_r32  
  shlb $0x1, %ah           #  2     0x2   2      OPC=shlb_rh_one   
  cwtl                     #  3     0x4   1      OPC=cwtl          
  rolb $0x1, %al           #  4     0x5   2      OPC=rolb_r8_one   
  callq .read_sf_into_rbx  #  5     0x7   5      OPC=callq_label   
  notw %bx                 #  6     0xc   3      OPC=notw_r16      
  rclb $0x1, %bl           #  7     0xf   2      OPC=rclb_r8_one   
  retq                     #  8     0x11  1      OPC=retq          
                                                                   
.size target, .-target
