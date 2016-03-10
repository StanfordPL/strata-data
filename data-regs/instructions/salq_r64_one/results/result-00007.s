  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  xorl %eax, %eax          #  1     0    2      OPC=xorl_r32_r32  
  rclb $0x1, %al           #  2     0x2  2      OPC=rclb_r8_one   
  callq .read_zf_into_rcx  #  3     0x4  5      OPC=callq_label   
  rclb $0x1, %cl           #  4     0x9  2      OPC=rclb_r8_one   
  adcq %rbx, %rbx          #  5     0xb  3      OPC=adcq_r64_r64  
  retq                     #  6     0xe  1      OPC=retq          
                                                                  
.size target, .-target
