  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm2, %xmm3, %xmm4  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  cvtsd2ss %xmm4, %xmm2            #  2     0x4   4      OPC=cvtsd2ss_xmm_xmm         
  callq .move_128_064_xmm2_r8_r9   #  3     0x8   5      OPC=callq_label              
  xchgw %r8w, %r8w                 #  4     0xd   4      OPC=xchgw_r16_r16            
  vzeroall                         #  5     0x11  3      OPC=vzeroall                 
  callq .move_064_128_r8_r9_xmm1   #  6     0x14  5      OPC=callq_label              
  retq                             #  7     0x19  1      OPC=retq                     
                                                                                      
.size target, .-target
