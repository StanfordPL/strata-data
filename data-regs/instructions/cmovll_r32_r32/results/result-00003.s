  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vxorps %xmm2, %xmm2, %xmm1        #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11  #  2     0x4   5      OPC=callq_label         
  setl %r11b                        #  3     0x9   4      OPC=setl_r8             
  movl %ecx, %ebp                   #  4     0xd   2      OPC=movl_r32_r32        
  popcntw %r11w, %r14w              #  5     0xf   6      OPC=popcntw_r16_r16     
  cmovnzl %ebp, %ebx                #  6     0x15  3      OPC=cmovnzl_r32_r32     
  retq                              #  7     0x18  1      OPC=retq                
                                                                                  
.size target, .-target
