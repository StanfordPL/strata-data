  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  clc                             #  1     0     1      OPC=clc             
  movq $0xfffffffffffffff8, %rax  #  2     0x1   10     OPC=movq_r64_imm64  
  cbtw                            #  3     0xb   2      OPC=cbtw            
  rclb $0x1, %al                  #  4     0xd   2      OPC=rclb_r8_one     
  setnge %ah                      #  5     0xf   3      OPC=setnge_rh       
  retq                            #  6     0x12  1      OPC=retq            
                                                                            
.size target, .-target
