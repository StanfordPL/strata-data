  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vxorps %xmm7, %xmm7, %xmm1      #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9  #  2     0x4   5      OPC=callq_label         
  adcw %r9w, %r8w                 #  3     0x9   4      OPC=adcw_r16_r16        
  cmovnzl %ecx, %ebx              #  4     0xd   3      OPC=cmovnzl_r32_r32     
  retq                            #  5     0x10  1      OPC=retq                
                                                                                
.size target, .-target
