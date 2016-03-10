  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode            
.target:                 #        0    0      OPC=<label>       
  xorl %eax, %eax        #  1     0    2      OPC=xorl_r32_r32  
  rclb $0x1, %ah         #  2     0x2  2      OPC=rclb_rh_one   
  sbbw %cx, %bx          #  3     0x4  3      OPC=sbbw_r16_r16  
  callq .set_szp_for_bx  #  4     0x7  5      OPC=callq_label   
  retq                   #  5     0xc  1      OPC=retq          
                                                                
.size target, .-target
