  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmovdqu %xmm1, %xmm3                            #  1     0     4      OPC=vmovdqu_xmm_xmm        
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vmovd %ebx, %xmm7                               #  3     0x9   4      OPC=vmovd_xmm_r32          
  vunpcklps %xmm11, %xmm7, %xmm14                 #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm  
  unpcklpd %xmm14, %xmm1                          #  5     0x12  5      OPC=unpcklpd_xmm_xmm       
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
