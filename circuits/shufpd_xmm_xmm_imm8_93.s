  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  pmovsxdq %xmm8, %xmm0              #  2     0x5   6      OPC=pmovsxdq_xmm_xmm         
  movddup %xmm0, %xmm10              #  3     0xb   5      OPC=movddup_xmm_xmm          
  vpunpcklqdq %xmm2, %xmm10, %xmm2   #  4     0x10  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  punpckhqdq %xmm2, %xmm1            #  5     0x14  4      OPC=punpckhqdq_xmm_xmm       
  retq                               #  6     0x18  1      OPC=retq                     
                                                                                        
.size target, .-target
