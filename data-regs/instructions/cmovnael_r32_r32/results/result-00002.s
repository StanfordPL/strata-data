  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vxorps %xmm15, %xmm15, %xmm1      #  1     0     5      OPC=vxorps_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11  #  2     0x5   5      OPC=callq_label         
  adcq %r11, %r10                   #  3     0xa   3      OPC=adcq_r64_r64        
  cmovnzl %ecx, %ebx                #  4     0xd   3      OPC=cmovnzl_r32_r32     
  retq                              #  5     0x10  1      OPC=retq                
                                                                                  
.size target, .-target
