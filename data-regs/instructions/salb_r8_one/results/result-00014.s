  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode            
.target:                 #        0    0      OPC=<label>       
  xorq %rax, %rax        #  1     0    3      OPC=xorq_r64_r64  
  setb %al               #  2     0x3  3      OPC=setb_r8       
  shll $0x1, %eax        #  3     0x6  2      OPC=shll_r32_one  
  rclb $0x1, %bl         #  4     0x8  2      OPC=rclb_r8_one   
  callq .set_szp_for_bl  #  5     0xa  5      OPC=callq_label   
  retq                   #  6     0xf  1      OPC=retq          
                                                                
.size target, .-target
