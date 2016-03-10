  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label             
  callq .move_032_064_r12d_r13d_rdx             #  2     0x5   5      OPC=callq_label             
  vpbroadcastd %xmm3, %xmm10                    #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm    
  vmovq %rdx, %xmm1                             #  4     0xf   5      OPC=vmovq_xmm_r64           
  vunpcklps %xmm1, %xmm10, %xmm0                #  5     0x14  4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %xmm0, %xmm1, %xmm1                #  6     0x18  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                                          #  7     0x1c  1      OPC=retq                    
                                                                                                  
.size target, .-target
