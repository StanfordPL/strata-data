  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  xorl %r15d, %r15d  #  1     0    3      OPC=xorl_r32_r32    
  shlb $0x1, %r15b   #  2     0x3  3      OPC=shlb_r8_one     
  shlb $0x1, %ah     #  3     0x6  2      OPC=shlb_rh_one     
  cmoveq %r15, %rax  #  4     0x8  4      OPC=cmoveq_r64_r64  
  retq               #  5     0xc  1      OPC=retq            
                                                              
.size target, .-target
