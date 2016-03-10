  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm3, %xmm2, %xmm13                 #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movhlps %xmm13, %xmm9                           #  3     0x9   4      OPC=movhlps_xmm_xmm         
  vhsubpd %xmm10, %xmm9, %xmm9                    #  4     0xd   5      OPC=vhsubpd_xmm_xmm_xmm     
  vunpckhpd %xmm10, %xmm2, %xmm10                 #  5     0x12  5      OPC=vunpckhpd_xmm_xmm_xmm   
  vpmovzxdq %xmm10, %xmm1                         #  6     0x17  5      OPC=vpmovzxdq_xmm_xmm       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1c  5      OPC=callq_label             
  retq                                            #  8     0x21  1      OPC=retq                    
                                                                                                    
.size target, .-target
