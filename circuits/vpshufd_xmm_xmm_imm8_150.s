  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  movdqa %xmm2, %xmm9                           #  1     0     5      OPC=movdqa_xmm_xmm       
  vminps %xmm9, %xmm9, %xmm3                    #  2     0x5   5      OPC=vminps_xmm_xmm_xmm   
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label          
  vphsubd %xmm5, %xmm6, %xmm1                   #  4     0xf   5      OPC=vphsubd_xmm_xmm_xmm  
  unpcklpd %xmm1, %xmm5                         #  5     0x14  4      OPC=unpcklpd_xmm_xmm     
  vphaddd %xmm5, %xmm1, %xmm1                   #  6     0x18  5      OPC=vphaddd_xmm_xmm_xmm  
  retq                                          #  7     0x1d  1      OPC=retq                 
                                                                                               
.size target, .-target
