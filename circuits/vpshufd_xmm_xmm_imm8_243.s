  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  vmovd %r9d, %xmm1                         #  2     0x5   5      OPC=vmovd_xmm_r32          
  vpbroadcastd %xmm1, %xmm8                 #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm   
  vunpcklps %xmm2, %xmm8, %xmm1             #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm  
  movlhps %xmm8, %xmm1                      #  5     0x13  4      OPC=movlhps_xmm_xmm        
  retq                                      #  6     0x17  1      OPC=retq                   
                                                                                             
.size target, .-target
