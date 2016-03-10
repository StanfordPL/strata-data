  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  vmovd %r9d, %xmm6                         #  2     0x5   5      OPC=vmovd_xmm_r32          
  vbroadcastss %xmm6, %xmm9                 #  3     0xa   5      OPC=vbroadcastss_xmm_xmm   
  vunpcklps %xmm6, %xmm9, %xmm1             #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm  
  unpcklps %xmm2, %xmm1                     #  5     0x13  3      OPC=unpcklps_xmm_xmm       
  retq                                      #  6     0x16  1      OPC=retq                   
                                                                                             
.size target, .-target
