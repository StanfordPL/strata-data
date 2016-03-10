  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  vmovd %ecx, %xmm1                 #  1     0     4      OPC=vmovd_xmm_r32    
  setb %r8b                         #  2     0x4   4      OPC=setb_r8          
  callq .move_128_064_xmm1_r12_r13  #  3     0x8   5      OPC=callq_label      
  shlb $0x1, %r8b                   #  4     0xd   3      OPC=shlb_r8_one      
  cmovnzl %r12d, %ebx               #  5     0x10  4      OPC=cmovnzl_r32_r32  
  retq                              #  6     0x14  1      OPC=retq             
                                                                               
.size target, .-target
