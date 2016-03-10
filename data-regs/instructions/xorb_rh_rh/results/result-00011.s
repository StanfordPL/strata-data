  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.target:             #        0     0      OPC=<label>        
  movzbl %bh, %edx   #  1     0     3      OPC=movzbl_r32_rh  
  xorl %r15d, %r15d  #  2     0x3   3      OPC=xorl_r32_r32   
  setge %dh          #  3     0x6   3      OPC=setge_rh       
  xorl %r15d, %edx   #  4     0x9   3      OPC=xorl_r32_r32   
  xorb %dl, %ah      #  5     0xc   2      OPC=xorb_rh_r8     
  rolq $0x1, %rdx    #  6     0xe   3      OPC=rolq_r64_one   
  retq               #  7     0x11  1      OPC=retq           
                                                              
.size target, .-target
