  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm2, %xmm14                      #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckhdq %xmm2, %xmm14, %xmm10                #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %xmm11, %xmm9, %xmm6                  #  4     0xe   5      OPC=vunpcklps_xmm_xmm_xmm   
  vunpcklps %xmm6, %xmm10, %xmm15                 #  5     0x13  4      OPC=vunpcklps_xmm_xmm_xmm   
  movupd %xmm15, %xmm1                            #  6     0x17  5      OPC=movupd_xmm_xmm          
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
