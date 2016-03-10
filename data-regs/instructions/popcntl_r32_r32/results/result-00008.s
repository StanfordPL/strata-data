  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movl %ecx, %esp     #  1     0    2      OPC=movl_r32_r32     
  popcntq %rsp, %rbx  #  2     0x2  5      OPC=popcntq_r64_r64  
  rclb $0x1, %bh      #  3     0x7  2      OPC=rclb_rh_one      
  retq                #  4     0x9  1      OPC=retq             
                                                                
.size target, .-target
