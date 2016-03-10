  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vorpd %xmm4, %xmm2, %xmm5                     #  2     0x5   4      OPC=vorpd_xmm_xmm_xmm   
  vpmovzxwd %xmm5, %xmm4                        #  3     0x9   5      OPC=vpmovzxwd_xmm_xmm   
  andnps %xmm5, %xmm2                           #  4     0xe   3      OPC=andnps_xmm_xmm      
  vxorpd %xmm2, %xmm4, %xmm13                   #  5     0x11  4      OPC=vxorpd_xmm_xmm_xmm  
  movupd %xmm13, %xmm1                          #  6     0x15  5      OPC=movupd_xmm_xmm      
  retq                                          #  7     0x1a  1      OPC=retq                
                                                                                              
.size target, .-target
