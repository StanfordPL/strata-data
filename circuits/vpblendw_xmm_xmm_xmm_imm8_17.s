  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  callq .move_128_064_xmm3_r8_r9    #  1     0     5      OPC=callq_label       
  vpor %xmm2, %xmm2, %xmm3          #  2     0x5   4      OPC=vpor_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  3     0x9   5      OPC=callq_label       
  xchgw %r9w, %r13w                 #  4     0xe   4      OPC=xchgw_r16_r16     
  vzeroall                          #  5     0x12  3      OPC=vzeroall          
  xaddw %r12w, %r8w                 #  6     0x15  5      OPC=xaddw_r16_r16     
  callq .move_064_128_r12_r13_xmm1  #  7     0x1a  5      OPC=callq_label       
  retq                              #  8     0x1f  1      OPC=retq              
                                                                                
.size target, .-target
