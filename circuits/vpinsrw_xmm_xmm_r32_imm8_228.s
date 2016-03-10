  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label         
  vxorps %xmm12, %xmm12, %xmm1      #  2     0x5   5      OPC=vxorps_xmm_xmm_xmm  
  movw %bx, %r13w                   #  3     0xa   4      OPC=movw_r16_r16        
  callq .move_064_128_r12_r13_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                              #  5     0x13  1      OPC=retq                
                                                                                  
.size target, .-target
