  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vxorps %xmm5, %xmm5, %xmm2        #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label         
  cmovnzw %cx, %r12w                #  3     0x9   5      OPC=cmovnzw_r16_r16     
  cmovnbel %r12d, %ebx              #  4     0xe   4      OPC=cmovnbel_r32_r32    
  retq                              #  5     0x12  1      OPC=retq                
                                                                                  
.size target, .-target
