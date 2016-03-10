  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vpxor %xmm3, %xmm3, %xmm1       #  1     0     4      OPC=vpxor_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9  #  2     0x4   5      OPC=callq_label        
  setnge %r8b                     #  3     0x9   4      OPC=setnge_r8          
  xaddl %r8d, %r9d                #  4     0xd   4      OPC=xaddl_r32_r32      
  cmovnzl %ecx, %ebx              #  5     0x11  3      OPC=cmovnzl_r32_r32    
  retq                            #  6     0x14  1      OPC=retq               
                                                                               
.size target, .-target
