  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm2, %xmm2, %xmm13                #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovsldup %xmm2, %xmm6                          #  3     0x9   4      OPC=vmovsldup_xmm_xmm        
  vmovss %xmm10, %xmm13, %xmm1                    #  4     0xd   5      OPC=vmovss_xmm_xmm_xmm       
  vpunpckhqdq %xmm9, %xmm6, %xmm8                 #  5     0x12  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vunpcklpd %xmm1, %xmm8, %xmm1                   #  6     0x17  4      OPC=vunpcklpd_xmm_xmm_xmm    
  retq                                            #  7     0x1b  1      OPC=retq                     
                                                                                                     
.size target, .-target
