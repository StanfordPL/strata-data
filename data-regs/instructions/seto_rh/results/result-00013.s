  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label     
  xorl %eax, %eax          #  2     0x5   2      OPC=xorl_r32_r32    
  rclb $0x1, %al           #  3     0x7   2      OPC=rclb_r8_one     
  cmoveq %rax, %rax        #  4     0x9   4      OPC=cmoveq_r64_r64  
  xorq %rax, %rbx          #  5     0xd   3      OPC=xorq_r64_r64    
  setnz %ah                #  6     0x10  3      OPC=setnz_rh        
  retq                     #  7     0x13  1      OPC=retq            
                                                                     
.size target, .-target
