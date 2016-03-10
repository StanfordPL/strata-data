  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label               
  vpmovzxwq %xmm13, %xmm9              #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm         
  vfnmsub213ss %xmm1, %xmm9, %xmm1     #  3     0xa   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  vfmsub231ss %xmm3, %xmm2, %xmm1      #  4     0xf   5      OPC=vfmsub231ss_xmm_xmm_xmm   
  retq                                 #  5     0x14  1      OPC=retq                      
                                                                                           
.size target, .-target
