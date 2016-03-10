  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x0, %rdi          #  1     0     10     OPC=movq_r64_imm64  
  rclw $0x1, %di           #  2     0xa   3      OPC=rclw_r16_one    
  callq .read_of_into_rbx  #  3     0xd   5      OPC=callq_label     
  xorw %di, %bx            #  4     0x12  3      OPC=xorw_r16_r16    
  retq                     #  5     0x15  1      OPC=retq            
                                                                     
.size target, .-target
