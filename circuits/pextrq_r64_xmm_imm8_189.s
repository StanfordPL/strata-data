  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vunpcklps %xmm1, %xmm1, %xmm7                 #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm  
  vrsqrtss %xmm7, %xmm1, %xmm3                  #  2     0x4   4      OPC=vrsqrtss_xmm_xmm_xmm   
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  3     0x8   5      OPC=callq_label            
  callq .move_032_064_r12d_r13d_rbx             #  4     0xd   5      OPC=callq_label            
  retq                                          #  5     0x12  1      OPC=retq                   
                                                                                                 
.size target, .-target
