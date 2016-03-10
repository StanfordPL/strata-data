  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                           #  Line  RIP   Bytes  Opcode               
.target:                         #        0     0      OPC=<label>          
  xorb %ah, %al                  #  1     0     2      OPC=xorb_r8_rh       
  movq $0xffffffffffffffff, %r9  #  2     0x2   10     OPC=movq_r64_imm64   
  popcntq %r9, %rdx              #  3     0xc   5      OPC=popcntq_r64_r64  
  rclq $0x1, %rax                #  4     0x11  3      OPC=rclq_r64_one     
  setbe %dl                      #  5     0x14  3      OPC=setbe_r8         
  negq %rdx                      #  6     0x17  3      OPC=negq_r64         
  retq                           #  7     0x1a  1      OPC=retq             
                                                                            
.size target, .-target
