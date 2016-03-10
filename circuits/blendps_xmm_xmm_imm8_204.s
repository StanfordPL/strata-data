  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                     
.target:                                        #        0    0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label            
  vunpckhpd %xmm6, %xmm2, %xmm5                 #  2     0x5  4      OPC=vunpckhpd_xmm_xmm_xmm  
  punpcklqdq %xmm5, %xmm1                       #  3     0x9  4      OPC=punpcklqdq_xmm_xmm     
  retq                                          #  4     0xd  1      OPC=retq                   
                                                                                                
.size target, .-target
