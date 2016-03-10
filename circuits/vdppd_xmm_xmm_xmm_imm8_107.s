  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vfnmsub231ss %xmm2, %xmm2, %xmm3   #  1     0     5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  mulpd %xmm3, %xmm2                 #  2     0x5   4      OPC=mulpd_xmm_xmm             
  callq .move_128_64_xmm2_xmm8_xmm9  #  3     0x9   5      OPC=callq_label               
  vhaddpd %xmm9, %xmm9, %xmm1        #  4     0xe   5      OPC=vhaddpd_xmm_xmm_xmm       
  retq                               #  5     0x13  1      OPC=retq                      
                                                                                         
.size target, .-target
